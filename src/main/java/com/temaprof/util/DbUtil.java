package com.temaprof.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by TEMAPROF on 03.06.2017.
 */
public class DbUtil {
    private static final String URL = "jdbc:postgresql://localhost:5432/postgres";
    private static final String NAME = "postgres";
    private static final String PASSWORD = "za79re46ti13";
    private static Connection connection = null;

    public static Connection getConnection() {
        if (connection != null)
            return connection;
        else {
            try {
//                Properties prop = new Properties();
//                InputStream inputStream = DbUtil.class.getClassLoader().getResourceAsStream("F:\\DEV\\Vorov-Artem-project\\JDBC_CRUD\\src\\main\\java\\com\\temaprof\\db.properties");
//                prop.load(inputStream);
//                String driver = prop.getProperty("driver");
//                String url = prop.getProperty("url");
//                String user = prop.getProperty("user");
//                String password = prop.getProperty("password");
                Class.forName("org.postgresql.Driver");
                connection = DriverManager.getConnection(URL, NAME, PASSWORD);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
//            catch (FileNotFoundException e) {
//                e.printStackTrace();
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
            return connection;
        }

    }
}

