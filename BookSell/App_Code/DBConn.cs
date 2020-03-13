using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// DBconn 的摘要说明
/// </summary>
public class DBConn
{
    private SqlConnection conn;

    public DBConn()
    {
        string DBPath = sqlHelper.ConnectionStringLocalTransaction;
        string connStr = (DBPath);
        conn = new SqlConnection(connStr);
        conn.Open();
    }

    public DBConn(string DBPath)
    {
        string connStr = (DBPath);
        conn = new SqlConnection(connStr);
        conn.Open();
    }

    public void Close()//关闭数据库连接
    {
        conn.Close();
        conn = null;
    }

    public SqlDataReader getDataReader(string SQLQuery)
    {
        SqlCommand cmd = new SqlCommand(SQLQuery, conn);
        return cmd.ExecuteReader();
    }

    public int ExecuteNonQuery(string SQLQuery)
    {
        SqlCommand cmd = new SqlCommand(SQLQuery, conn);
        return cmd.ExecuteNonQuery();
    }

    public DataSet getDataSet(string SQLQuery)
    {
        SqlDataAdapter da = new SqlDataAdapter(SQLQuery, conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        da.Dispose();
        da = null;
        return ds;
    }



    public string LookUp(string strSql, string strField)
    {

        DataRow dr;

        SqlDataAdapter sda = new SqlDataAdapter(strSql, conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
            return "";
        }
        dr = ds.Tables[0].Rows[0];
        return dr[strField].ToString();
        ds.Clear();

    }
}