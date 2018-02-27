package com.quanwc.blog.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 * 数据库访问工具类
 * @author 全文超
 * 2018-1-18 14:53:19
 *
 */
public class DBUtil {
	
	private static final String driver = "com.mysql.jdbc.Driver";
	private static final String url = "jdbc:mysql://172.18.1.247:3306/blog-qwc?useUnicode=true&amp;characterEncoding=UTF-8&amp;zeroDateTimeBehavior=convertToNull&amp;allowMultiQueries=true";
	private static final String user = "glh";
	private static final String password = "Cqmyg12321";
	
	/**
	 * 获取db连接
	 * @return
	 * @throws Exception
	 */
	public static Connection getConnection() throws Exception{
		Connection conn = null;
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, password);
		return conn;
	}
	
	/**
	 * 关闭db连接
	 * @param conn
	 */
	public static void closeConnection(Connection conn){
		if (conn != null) {
			try {
				conn.close();
			}
			catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	
	public static void main(String[] args) throws Exception {
		Connection conn = getConnection();
		System.out.println(conn);
	}
	
}
