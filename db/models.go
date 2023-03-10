// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.17.2

package tutorial

import (
	"database/sql"
)

type Campaign struct {
	ID             int32
	UserID         sql.NullInt32
	Name           sql.NullString
	ShortDesc      sql.NullString
	Description    sql.NullString
	GoalAmmount    sql.NullInt32
	CurrentAmmount sql.NullInt32
	Perks          sql.NullString
	BackerCount    sql.NullInt32
	Slug           sql.NullString
	ModifiedDate   sql.NullTime
	CreatedDate    sql.NullTime
	CreatedBy      sql.NullString
	ModifiedBy     sql.NullString
}

type CampaignImage struct {
	ID           int32
	CampaignID   sql.NullInt32
	FileName     sql.NullString
	IsPrimary    sql.NullBool
	ModifiedDate sql.NullTime
	CreatedDate  sql.NullTime
	CreatedBy    sql.NullString
	ModifiedBy   sql.NullString
}

type Transaction struct {
	ID           int32
	Code         sql.NullString
	CampaignID   sql.NullInt32
	UserID       sql.NullInt32
	Ammount      sql.NullInt32
	Status       sql.NullInt32
	ModifiedDate sql.NullTime
	CreatedDate  sql.NullTime
	CreatedBy    sql.NullString
	ModifiedBy   sql.NullString
}

type User struct {
	ID             int32
	Name           sql.NullString
	Occupation     sql.NullString
	Email          sql.NullString
	Password       sql.NullString
	AvatarFileName sql.NullString
	Role           sql.NullString
	Token          sql.NullString
	CreatedDate    sql.NullTime
	ModifiedDate   sql.NullTime
	CreatedBy      sql.NullString
	ModifiedBy     sql.NullString
}
