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
	
	/**
	 * 根据id查找标签
	 * @param id
	 * @return
	 */
	public Tag getTagById(Integer id) {
		if (id == null) {
			return null;
		}
		return tagMapper.getTagById(id);
	}
	
	/**
	 * 查询所有标签
	 * @return
	 */
	public List<Tag> listTags() {
		return tagMapper.listTags();
	}
	
	/**
	 * 新增标签
	 * @param tag
	 * @return
	 */
	public int saveTag(Tag tag) {
		if (tag == null) {
			return -1;
		}
		return tagMapper.saveTag(tag);
	}
	
	/**
	 * 批量删除博客
	 * @param ids
	 * @return
	 */
	public int removeTagBatch(List<Integer> ids) {
		if (ids == null || ids.size() == 0) {
			return -1;
		}
		return tagMapper.removeTagBatch(ids);
	}
	
	/**
	 * 根据id修改标签名称
	 * @param tag
	 * @return
	 */
	public int updateTag(Tag tag) {
		if (tag == null) {
			return -1;
		}
		return tagMapper.updateTag(tag);
	}
	
}
