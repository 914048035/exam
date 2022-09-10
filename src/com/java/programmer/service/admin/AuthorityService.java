package com.java.programmer.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.java.programmer.entity.admin.Authority;

/**
 * 权限service接口
 * UTF-8
 *
 */
@Service
public interface AuthorityService {
	public int add(Authority authority);
	public int deleteByRoleId(Long roleId);
	public List<Authority> findListByRoleId(Long roleId);
}
