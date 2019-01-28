package com.company.sampleproject.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;
import java.util.List;
import javax.persistence.OneToMany;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;

@NamePattern("%s|skill")
@Table(name = "SAMPLEPROJECT_SKILL")
@Entity(name = "sampleproject$Skill")
public class Skill extends StandardEntity {
    private static final long serialVersionUID = -4578308294655675966L;

    @NotNull
    @Column(name = "SKILL", nullable = false)
    protected String skill;



    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "SKILLCATEGORY_ID")
    protected Skillcategory skillcategory;

    public void setSkillcategory(Skillcategory skillcategory) {
        this.skillcategory = skillcategory;
    }

    public Skillcategory getSkillcategory() {
        return skillcategory;
    }


    public void setSkill(String skill) {
        this.skill = skill;
    }

    public String getSkill() {
        return skill;
    }


}