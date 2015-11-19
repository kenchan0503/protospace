#テーブル
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

#アソシエーション
  *user has many prototypes, comments, and photos
  *protptype belongs to user and has many comments, and photos
  *comment belongs to user and prototype
  *photo belongs to prototype
