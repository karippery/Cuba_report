package com.company.sampleproject.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import java.util.List;
import javax.persistence.OneToMany;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;
import com.haulmont.chile.core.annotations.Composition;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import com.haulmont.cuba.core.entity.annotation.OnDeleteInverse;
import javax.persistence.OrderBy;

@Table(name = "SAMPLEPROJECT_USER")
@Entity(name = "sampleproject$User")
public class User extends StandardEntity {
    private static final long serialVersionUID = 3394347549024543059L;

    @NotNull
    @Column(name = "NAME", nullable = false)
    protected String name;

    @NotNull
    @Column(name = "POSITION_", nullable = false)
    protected String position;




    @OneToMany(mappedBy = "user")
    protected List<UserSkillLink> uerskilllink;

    public void setUerskilllink(List<UserSkillLink> uerskilllink) {
        this.uerskilllink = uerskilllink;
    }

    public List<UserSkillLink> getUerskilllink() {
        return uerskilllink;
    }


    public void setPosition(String position) {
        this.position = position;
    }

    public String getPosition() {
        return position;
    }


    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }


}