using System;
using System.Web.UI.WebControls;
namespace AspNetWebFormsDemo {
 public partial class OrderEntry : BasePage {
  protected void Page_Init(object sender, EventArgs e) { }
  protected void Page_Load(object sender, EventArgs e) {
   if (!IsPostBack) lblOrderEntryResult.Text = "Complete the form and submit to validate the entered data.";
  }
  protected void Page_PreRender(object sender, EventArgs e) { }
  protected void btnCreateOrder_Click(object sender, EventArgs e) {
   if (!Page.IsValid) { lblOrderEntryResult.Text = "Please correct the validation errors."; return; }
   lblOrderEntryResult.Text = "Order Entry validated successfully (demo only). Source: " + Server.HtmlEncode(hfFormSource.Value) + ". No data was persisted.";
  }
  protected void btnClearOrderEntry_Click(object sender, EventArgs e) {
   lblOrderEntryResult.Text = "Status cleared. Field values were not reset.";
  }

 }
}
