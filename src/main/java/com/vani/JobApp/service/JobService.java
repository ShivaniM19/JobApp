package com.vani.JobApp.service;

import com.vani.JobApp.model.JobPost;
import com.vani.JobApp.repo.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class JobService {

    @Autowired
    JobRepo repo;
    public void addJob(JobPost jobPost){
        repo.addJob(jobPost);
    }

    public List<JobPost> getAllJobs(){
        return repo.getAllJobs();
    }

    public JobPost getJobById(int postId) {
         return repo.getJobById(postId);
    }

    public void deleteJod(int postId) {
        repo.deleteJob(postId);
    }

    public void updateJob(JobPost jobPost) {
        repo.updateJob(jobPost);
    }
}
