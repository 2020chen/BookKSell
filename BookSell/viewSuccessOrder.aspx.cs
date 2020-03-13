using System;
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

public partial class viewSuccessOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string orderId = Request.Params["orderId"];
        string msg = "订单下达成功，你的订单号为：" + orderId + "。下面是支付方式说明，请付款成功后尽快与我们联系！";
        Label1.Text = msg;
    }
}
