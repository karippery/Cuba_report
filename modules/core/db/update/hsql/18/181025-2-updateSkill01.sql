alter table SAMPLEPROJECT_SKILL add constraint FK_SAMPLEPROJECT_SKILL_ON_SKILLCATEGORY foreign key (SKILLCATEGORY_ID) references SAMPLEPROJECT_SKILLCATEGORY(ID);
create index IDX_SAMPLEPROJECT_SKILL_ON_SKILLCATEGORY on SAMPLEPROJECT_SKILL (SKILLCATEGORY_ID);