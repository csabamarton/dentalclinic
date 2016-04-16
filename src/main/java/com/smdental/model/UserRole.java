package com.smdental.model;


import javax.persistence.*;

@Entity
@Table(name="role")
public class UserRole {

    @Id
    @Column(name = "roleid")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int roleId;

    @Column(name="role", length=15, unique=true, nullable=false)
    private String role = UserRoleType.USER.getUserRoleType();

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }


    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + roleId;
        result = prime * result + ((role == null) ? 0 : role.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (!(obj instanceof UserRole))
            return false;
        UserRole other = (UserRole) obj;
        if (roleId != other.roleId)
            return false;
        if (role == null) {
            if (other.role != null)
                return false;
        } else if (!role.equals(other.role))
            return false;
        return true;
    }

    @Override
    public String toString() {
        return "UserRole [id=" + roleId + ",  role=" + role  + "]";
    }


}
