-- begin SAMPLEPROJECT_USER
create table SAMPLEPROJECT_USER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    POSITION_ varchar(255) not null,
    --
    primary key (ID)
)^
-- end SAMPLEPROJECT_USER
-- begin SAMPLEPROJECT_SKILL
create table SAMPLEPROJECT_SKILL (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    SKILL varchar(255) not null,
    SKILLCATEGORY_ID varchar(36),
    --
    primary key (ID)
)^
-- end SAMPLEPROJECT_SKILL
-- begin SAMPLEPROJECT_SKILLCATEGORY
create table SAMPLEPROJECT_SKILLCATEGORY (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    --
    primary key (ID)
)^
-- end SAMPLEPROJECT_SKILLCATEGORY
-- begin SAMPLEPROJECT_USER_SKILL_LINK
create table SAMPLEPROJECT_USER_SKILL_LINK (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    SKILL_ID varchar(36) not null,
    USER_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end SAMPLEPROJECT_USER_SKILL_LINK
