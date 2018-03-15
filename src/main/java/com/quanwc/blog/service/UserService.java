package com.quanwc.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quanwc.blog.mapper.UserMapper;

/**
 * 用户对应的service
 * @author 全文超
 * 2018-3-8 23:59:29
 *
 */
@Service
public class UserService {
	
	@Autowired
	private UserMapper userMapper;
	
}
