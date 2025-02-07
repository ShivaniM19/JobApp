package com.vani.JobApp;

import com.vani.JobApp.model.JobPost;
import com.vani.JobApp.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class JobController {
    @Autowired
    JobService jobService;

//    If we want output/produce in only json format add key=Accept & value=application/json in header of postman request and @GetMapping(path = "jobPosts",produces = {"application/json"})

//    @GetMapping(path = "jobPosts",produces = {"application/json"})
//    public List<JobPost> getAllJob() {
//        return jobService.getAllJobs();
//    }

//   If we to get output in xml format add jackson Dataformat xml dependency with version mentioned in external library jackson-Dataformat-xml

    @GetMapping("jobPosts")
    public List<JobPost> getAllJob() {
        return jobService.getAllJobs();
    }

//    @GetMapping("jobPost/{postId}")
//    public JobPost getJob(@PathVariable("postId") int postId){
//        return jobService.getJobById(postId);
//    }

    @GetMapping("jobPost/{postId}")
    public JobPost getJobById(@PathVariable int postId){
            return jobService.getJobById(postId);
        }

    @PostMapping("jobPost")
    public String addJob(@RequestBody JobPost jobPost) {
        jobService.addJob(jobPost);
        return "added";
    }

//    @PostMapping("jobPost")
//    public JobPost addJob(@RequestBody JobPost jobPost) {
//        jobService.addJob(jobPost);
//        return jobPost;
//    }

//    If we want to consume/send  only xml data add

//    @PostMapping(path = "jobPost", consumes = {"application/xml"})
//    public JobPost addJob(@RequestBody JobPost jobPost) {
//        jobService.addJob(jobPost);
//        return jobPost;
//    }

    @PutMapping("jobPost")
    public JobPost updateJob(@RequestBody JobPost jobPost){
        jobService.updateJob(jobPost);
        return jobService.getJobById(jobPost.getPostId());
    }

    @DeleteMapping("jobPost/{postId}")
    public String deleteJob(@PathVariable int postId){
        jobService.deleteJod(postId);
        return "deleted";
    }

}
