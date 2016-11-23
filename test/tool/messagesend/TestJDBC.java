package tool.messagesend;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.junit.Test;


public class TestJDBC {
	public static final String url = "jdbc:mysql://sql9.freesqldatabase.com:3306/sql9145969";  
    public static final String name = "com.mysql.jdbc.Driver";  
    public static final String user = "sql9145969";  
    public static final String password = "drJdda2D5Z";  
  
    public java.sql.Connection conn = null;  
    public PreparedStatement pst = null;  
  
    public TestJDBC(String sql) {  
        try {  
            Class.forName(name);//指定连接类型  
            conn = DriverManager.getConnection(url, user, password);//获取连接  
          //  pst = conn.prepareStatement(sql);//准备执行语句  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
    }  
    public Connection getConn(){
    	return conn;
    }
    public void close() {  
        try {  
            this.conn.close();  
            this.pst.close();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }  
    }  
    @Test
    public void test(){
    	System.out.println(conn);
    	TestJDBC j = new TestJDBC("");
    	System.out.println(conn);
    }
}
