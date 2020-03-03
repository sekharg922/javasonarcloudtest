package com.howtodoinjava.demo.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.HttpStatus;

@RestController
@RequestMapping("/hello")
public class PingController {

	@GetMapping
	public ResponseEntity<String> hello() {
    return new ResponseEntity<>("UP", HttpStatus.OK);
	}
}
