package com.quanwc.blog.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quanwc.blog.entity.Tag;

/**
 * 标签Tag对应的Mapper
 * @author 全文超
 * 2018-3-8 23:55:10
 *
 */
@Repository
public interface TagMapper {
	
	// 根据id查询标签
	Tag getTagById(Integer id);
	
	// 查询所以博客
	List<Tag> listTags();

	// 新增标签
	int saveTag(Tag tag);
	
	// 批量删除标签
	int removeTagBatch(List<Integer> ids);
	
	// 修改标签名称
	int updateTag(Tag tag);
	
}
