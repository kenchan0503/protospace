# Table

##users

    * id(integer)
    * group_name(string)
    * profile(text)
    * works(string)
    * carrierwave関連
    * devise関連

##prototypes

    * id(integer)
    * user_id(integer)
    * title(string)
    * catchcopy(text)
    * concept(text)

##comments
    * id(integer)
    * user_id(integer)
    * prototypes_id(integer)
    * text(text)

##photos
    * id(integer)
    * prototype_id(integer)
    * carrierwave関連
    * status(integer)

##likes
    * id(integer)
    * prototype_id(integer)
    * like_count(integer)

#Association

    * user has many prototypes, comments, and photos
    * protptype belongs to user and has many comments,photos, and likes
    * comment belongs to user and prototype
    * photo belongs to prototype
    * like belongs to prototype

