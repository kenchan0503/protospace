#Table
  ##users
    *id
    *group−id
    *profile
    *works
    *paperclip関連
    *devise関連

  ##prototypes
    *id
    *user.id
    *title
    *catchcopy
    *concept

  ##comments
    *id
    *user.id
    *text

  ##photos
    *id
    *prototype_id
    *paperclip関連

  ##likes
    *id
    *protospace_id
    *like_count

#Associationx
  *user has many prototypes, comments, and photos
  *protptype belongs to user and has many comments,photos, and likes
  *comment belongs to user and prototype
  *photo belongs to prototype
  *like belongs to protospace

