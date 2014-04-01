using System;
using System.Text;
using System.Data.SqlClient;
using System.Collections;
using System.Data;

public class clsDBTransaction
{
    ArrayList arParameters;
    string spName;
    string connectionString = "";

    public clsDBTransaction()
    {
        arParameters = new ArrayList();
    }
	
    string getConnectionString()
    {
        connectionString = "SET YOUR CONNECTION STRING HERE";
    }

    /// <summary>
    /// Uses a custom connection string
    /// </summary>
    /// <param name="spName">Name of the stored procedure to be executed</param>
    /// <param name="strConnectionString">Connection string to the database</param>
    public clsDBTransaction(string spName, string strConnectionString)
    {
        arParameters = new ArrayList();
        this.spName = spName;
        connectionString = strConnectionString;
    }


    /// <summary>
    /// Uses the Eclips connection string
    /// </summary>
    /// <param name="spName">Name of the stored procedure to be executed</param>
    public clsDBTransaction(string spName)
    {
        arParameters = new ArrayList();
        this.spName = spName;
        connectionString = getConnectionString();
    }



    /// <summary>
    /// Create parameters to put in the stored procedure
    /// </summary>
    /// <param name="ParamType">Ex: Varchar, int , DateTime</param>
    /// <param name="ParamName">Name of the parameter (Without '@' sign)</param>
    /// <param name="ParamValue">Value of the parameter</param>
    public void AddParam(SqlDbType ParamType, string ParamName, string ParamValue)
    {
        SqlParameter prm = new SqlParameter("@" + ParamName, ParamType);
        prm.Value = ParamValue;
        arParameters.Add(prm);
    }

    /// <summary>
    /// Execute stored procedures with multiple parameters
    /// </summary>
    /// <param name="spName">Name of the stored procedure</param>
    /// <param name="parameters">Pass parameters in an ArrayList</param>
    public void Execute()
    {
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            SqlCommand cmd;
            conn.Open();
            cmd = new SqlCommand(spName, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandTimeout = 0;

            if (arParameters != null)
            {
                foreach (SqlParameter pr in arParameters)
                    cmd.Parameters.Add(pr);
            }

            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
    /// <summary>
    /// Execute stored procedures with multiple parameters
    /// </summary>
    /// <returns>Returns a dataset</returns>
    public DataSet ExecuteReader()
    {
        DataSet dsReturnedValue = new DataSet();
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            SqlCommand cmd;
            conn.Open();
            cmd = new SqlCommand(spName, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandTimeout = 0;

            if (arParameters != null)
            {
                foreach (SqlParameter pr in arParameters)
                    cmd.Parameters.Add(pr);
            }
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dsReturnedValue);

            conn.Close();
        }
        return dsReturnedValue;
    }
}
