﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class admin_adminBookInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["adminuser"] == null)
                Response.Redirect("Login.aspx");

        }

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        string isbn = (string)GridView1.DataKeys[e.NewEditIndex].Value;
        e.Cancel = true;
        Response.Redirect("modifyBookInfo.aspx?isbn=" + isbn);
    }
}
