using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Default2 : System.Web.UI.Page
{
    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();
    }

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]

    public  DataTable fillgrid()
    {
      
        da = new SqlDataAdapter("select name from usertbl",sqlcon);

        dt = new DataTable();


       da.Fill(dt);

        //GridView1.DataSource = dt;
        //GridView1.DataBind();
       return dt;
       

    }
}