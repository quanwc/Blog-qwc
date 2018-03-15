package com.quanwc.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quanwc.blog.entity.Tag;
import com.quanwc.blog.mapper.TagMapper;

/**
 * 标签的service类
 * @author 全文超
 * 2018-3-8 23:54:01
 *
 */
@Service
public class TagService {
	
	@Autowired
	private TagMapper tagMapper;
}
