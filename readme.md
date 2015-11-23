#Table
  ##users
    *id
    *group_name
    *profile
    *works
    *carrierwave関連
    *devise関連

  ##prototypes
    *id
    *user_id
    *title
    *catchcopy
    *concept

  ##comments
    *id
    *user_id
    *prototypes_id
    *text

  ##photos
    *id
    *prototype_id
    *carrierwave関連
    *main_photo
    *sub_photo


  ##likes
    *id
    *prototype_id
    *like_count

#Association
  *user has many prototypes, comments, and photos
  *protptype belongs to user and has many comments,photos, and likes
  *comment belongs to user and prototype
  *photo belongs to prototype
  *like belongs to prototype

