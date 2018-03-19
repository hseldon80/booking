package com.mysecretwish.jdbc;

import java.sql.*;

import com.mysecretwish.utility.PropertyReader;

public class ResourceManager
{
    private static String JDBC_DRIVER   = "org.postgresql.Driver";
    private static String JDBC_URL      = "jdbc:postgresql://192.168.1.62/gestionale";

    private static String JDBC_USER     = "postgres";
    private static String JDBC_PASSWORD = "nllSP100";

    private static Driver driver = null;

    public static synchronized Connection getConnection()
	throws SQLException
    {
        if (driver == null)
        {
            try
            {
                Class jdbcDriverClass = Class.forName( PropertyReader.getInstance().getProperty("JDBC_DRIVER") );
                driver = (Driver) jdbcDriverClass.newInstance();
                DriverManager.registerDriver( driver );
            }
            catch (Exception e)
            {
                System.out.println( "Failed to initialise JDBC driver" );
                e.printStackTrace();
            }
        }

        return DriverManager.getConnection(
        		PropertyReader.getInstance().getProperty("JDBC_URL"),
        		PropertyReader.getInstance().getProperty("JDBC_USER"),
        		PropertyReader.getInstance().getProperty("JDBC_PASSWORD")
        );
    }


	public static void close(Connection conn)
	{
		try {
			if (conn != null) conn.close();
		}
		catch (SQLException sqle)
		{
			sqle.printStackTrace();
		}
	}

	public static void close(PreparedStatement stmt)
	{
		try {
			if (stmt != null) stmt.close();
		}
		catch (SQLException sqle)
		{
			sqle.printStackTrace();
		}
	}

	public static void close(ResultSet rs)
	{
		try {
			if (rs != null) rs.close();
		}
		catch (SQLException sqle)
		{
			sqle.printStackTrace();
		}

	}

}
