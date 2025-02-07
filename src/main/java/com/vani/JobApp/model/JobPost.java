package com.vani.JobApp.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;

public class JobPost {
    private Integer postId;
    private String postDesc;
    private String postProfile;
    private  Integer reqExperience;
    private List<String> postTechStack;

    public JobPost() {
    }

    public JobPost(Integer postId, String postDesc, String postProfile, Integer reqExperience, List<String> postTechStack) {
        this.postId = postId;
        this.postDesc = postDesc;
        this.postProfile = postProfile;
        this.reqExperience = reqExperience;
        this.postTechStack = postTechStack;
    }

    public Integer getPostId() {
        return postId;
    }

    public void setPostId(Integer postId) {
        this.postId = postId;
    }

    public String getPostDesc() {
        return postDesc;
    }

    public void setPostDesc(String postDesc) {
        this.postDesc = postDesc;
    }

    public String getPostProfile() {
        return postProfile;
    }

    public void setPostProfile(String postProfile) {
        this.postProfile = postProfile;
    }

    public Integer getReqExperience() {
        return reqExperience;
    }

    public void setReqExperience(Integer reqExperience) {
        this.reqExperience = reqExperience;
    }

    public List<String> getPostTechStack() {
        return postTechStack;
    }

    public void setPostTechStack(List<String> postTechStack) {
        this.postTechStack = postTechStack;
    }
}
