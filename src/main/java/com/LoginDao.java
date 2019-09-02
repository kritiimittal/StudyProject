package com;

import org.springframework.jdbc.core.JdbcTemplate;


public class LoginDao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {

		this.template = template;

	}

	public int getUser(String u, String p) {
		String sql = "select count(*) from Login where username='" + u + "' and password='" + p + "'";
		return template.queryForObject(sql, Integer.class);
	}

}
