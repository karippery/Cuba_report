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
    SKILL_ID varchar(36),
    USER_ID varchar(36),
    --
    primary key (ID)
);
