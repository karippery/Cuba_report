alter table SAMPLEPROJECT_USER_SKILL add constraint FK_USESKI_ON_USER foreign key (USER_ID) references SAMPLEPROJECT_USER(ID);
alter table SAMPLEPROJECT_USER_SKILL add constraint FK_USESKI_ON_USER_SKILL_LINK foreign key (USER_SKILL_LINK_ID) references SAMPLEPROJECT_USER_SKILL_LINK(ID);