using System;
namespace AspNetWebFormsDemo.Controls {
 public partial class Notice : System.Web.UI.UserControl {
  public string Message { get; set; }
  protected void Page_Load(object sender, EventArgs e) { if(!IsPostBack) lblMessage.Text=Server.HtmlEncode(Message ?? "Notice"); }
  protected void btnDismiss_Click(object sender, EventArgs e) { Visible=false; }
 }
}
