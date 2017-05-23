package demo;

import com.mysql.jdbc.Driver;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by ${刘晋勇}
 * on 2017/5/16.
 */
public class JDBC {
    // demo.JDBC Java Database Connectivity Java 语言数据库连接
    private static final String URL = "jdbc:mysql://127.0.0.1:3306/db_1702";
    private static final String USER = "root";
    private static final String PASSWORD = "system";
    private static final String SQL = "INSERT INTO db_1702.course VALUES (NULL, 'Front-end', 2 )";
    public static void main(String[] args) throws SQLException {
        try {
            BufferedReader reader = new BufferedReader(new FileReader ("sql/ip.txt"));
            String line;
            while ((line = reader.readLine()) != null) {
            String min = line.split("\\s+")[0];
            String max = line.split("\\s+")[1];
            String geo = line.replace(min,"").replace(max,"");
                System.out.println(min + "-" + max + "-" + geo);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        // 1. 准备数据库驱动
        new Driver();
        // 2. 取得一次数据库连接
        Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
        // 3. 预编译语句
        PreparedStatement preparedStatement = connection.prepareStatement(SQL);
        // 4. 执行语句
        preparedStatement.executeUpdate();
    }
}
