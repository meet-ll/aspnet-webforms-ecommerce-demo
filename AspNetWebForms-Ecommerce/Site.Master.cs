using System;
namespace AspNetWebFormsDemo {
 public partial class SiteMaster : System.Web.UI.MasterPage {
  protected void Page_Load(object sender, EventArgs e) { if (!IsPostBack) lblFooter.Text = "Ecommerce data-entry demo | " + DateTime.UtcNow.Year; }
 }
}
