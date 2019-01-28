alter table SAMPLEPROJECT_USER_SKILL_LINK add constraint FK_SAMPLEPROJECT_USER_SKILL_LINK_ON_SKILL foreign key (SKILL_ID) references SAMPLEPROJECT_SKILL(ID);
alter table SAMPLEPROJECT_USER_SKILL_LINK add constraint FK_SAMPLEPROJECT_USER_SKILL_LINK_ON_USER foreign key (USER_ID) references SAMPLEPROJECT_USER(ID);
create index IDX_SAMPLEPROJECT_USER_SKILL_LINK_ON_SKILL on SAMPLEPROJECT_USER_SKILL_LINK (SKILL_ID);
create index IDX_SAMPLEPROJECT_USER_SKILL_LINK_ON_USER on SAMPLEPROJECT_USER_SKILL_LINK (USER_ID);
