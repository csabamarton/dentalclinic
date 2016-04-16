package com.smdental.model;

public enum UserRoleType {
    USER("USER"),
    GUEST("GUEST"),
    ADMIN("ADMIN"),
    SUPERADMIN("SUPERADMIN");

    String userRoleType;

    private UserRoleType(String userRoleType){
        this.userRoleType = userRoleType;
    }

    public String getUserRoleType(){
        return userRoleType;
    }
}
