package io.rooflet.controller;

import io.rooflet.model.entity.User;
import io.rooflet.model.request.FeedbackRequest;
import io.rooflet.model.response.MessageResponse;
import io.rooflet.service.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/feedback")
public class FeedbackController {

    @Autowired
    private FeedbackService feedbackService;

    @PostMapping
    public ResponseEntity<MessageResponse> submitFeedback(@RequestBody FeedbackRequest feedbackRequest) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        User user = (User) authentication.getPrincipal();
        feedbackService.saveFeedback(feedbackRequest, user);
        return ResponseEntity.ok(new MessageResponse("Feedback submitted successfully"));
    }
}
