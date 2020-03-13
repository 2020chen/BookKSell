using System;
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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)//如果不是页面回送处理本消息
        {
            string bcId = Request.Params["bcId"];//接收类别编号
            if (bcId != null && bcId.Length > 0)//如果类别编号不为空
            {
                //重新设置数据库控件的SQL语句并刷新显示控件
                SqlDataSource1.SelectCommand = "SELECT * FROM [bookInfo] where [bcid]=" + bcId;
                GridView1.DataBind();
            }
        }
    }

    protected void btnSelect_Click(object sender, System.EventArgs e)
    {
        string strClass = ddlClass.SelectedValue;
        string strText = Server.UrlEncode(txtSelect.Text);
        //string sql = "select * from  bookInfo where bname=@bname ";
        Response.Redirect("Select.aspx?class=" + strClass + "&text=" + strText);
    }
}
