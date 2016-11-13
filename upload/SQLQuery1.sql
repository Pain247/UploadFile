CREATE TABLE AUTHOR
(
    AUTHORID            smallint,
    AUTHORNAME          char(10),
    AUTHORTYPE          char(4),
    FIELD               varchar(30),
    ARTICLE             smallint,
 
    CONSTRAINT PK_AUTHORID PRIMARY KEY (AUTHORID)
)
 
CREATE TABLE AUTHOR_TYPE
(
    AU_TYPEID           char(4),
    TYPENAME            char(10),
 
    CONSTRAINT PK_AUTYPEID PRIMARY KEY (AU_TYPEID)
)
 
CREATE TABLE ARTICLE
(
    ARTICLEID            smallint,
    ARTICLETITLE         char(10),
    ARTICLETYPE          char(4),
    AUTHORID             smallint,
    VIEWS_COUNT          smallint,
    LIKES_COUNT          smallint,
 
    CONSTRAINT PK_ARTICLEID PRIMARY KEY (ARTICLEID)
)
 
CREATE TABLE ARTICLE_TYPE
(
    AR_TYPEID           char(4),
    TYPENAME            char(10),
 
    CONSTRAINT PK_ARTYPEID PRIMARY KEY (AR_TYPEID