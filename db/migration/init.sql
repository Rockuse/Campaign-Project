CREATE TABLE `users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `occupation` varchar(255),
  `email` varchar(255),
  `password` varchar(255),
  `avatar_file_name` varchar(255),
  `role` varchar(255),
  `token` varchar(255),
  `created_date` datetime,
  `modified_date` datetime,
  `created_by` varchar(255),
  `modified_by` varchar(255)
);

CREATE TABLE `campaign` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `name` varchar(255),
  `short_desc` varchar(255),
  `description` text,
  `goal_ammount` int,
  `current_ammount` int,
  `perks` text,
  `backer_count` int,
  `slug` varchar(255),
  `modified_date` datetime,
  `created_date` datetime,
  `created_by` varchar(255),
  `modified_by` varchar(255)
);

CREATE TABLE `campaign_images` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `campaign_id` int,
  `file_name` varchar(255),
  `is_primary` boolean,
  `modified_date` datetime,
  `created_date` datetime,
  `created_by` varchar(255),
  `modified_by` varchar(255)
);

CREATE TABLE `transactions` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `code` varchar(255),
  `campaign_id` int,
  `user_id` int,
  `ammount` int,
  `status` int,
  `modified_date` datetime,
  `created_date` datetime,
  `created_by` varchar(255),
  `modified_by` varchar(255)
);

ALTER TABLE `campaign` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `transactions` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `transactions` ADD FOREIGN KEY (`campaign_id`) REFERENCES `campaign` (`id`);

ALTER TABLE `campaign_images` ADD FOREIGN KEY (`campaign_id`) REFERENCES `campaign` (`id`);
