-- update SAMPLEPROJECT_USER_SKILL_LINK set SKILL_ID = <default_value> where SKILL_ID is null ;
alter table SAMPLEPROJECT_USER_SKILL_LINK alter column SKILL_ID set not null ;
-- update SAMPLEPROJECT_USER_SKILL_LINK set USER_ID = <default_value> where USER_ID is null ;
alter table SAMPLEPROJECT_USER_SKILL_LINK alter column USER_ID set not null ;
