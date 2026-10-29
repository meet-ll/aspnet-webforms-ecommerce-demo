using System;
using System.Web.UI.WebControls;
namespace AspNetWebFormsDemo {
 public partial class ShippingAddress : BasePage {
  protected void Page_Init(object sender, EventArgs e) { }
  protected void Page_Load(object sender, EventArgs e) {
   if (!IsPostBack) lblShippingAddressResult.Text = "Complete the form and submit to validate the entered data.";
  }
  protected void Page_PreRender(object sender, EventArgs e) { }
  protected void btnSaveAddress_Click(object sender, EventArgs e) {
   if (!Page.IsValid) { lblShippingAddressResult.Text = "Please correct the validation errors."; return; }
   lblShippingAddressResult.Text = "Shipping Address validated successfully (demo only). Source: " + Server.HtmlEncode(hfFormSource.Value) + ". No data was persisted.";
  }
  protected void btnClearShippingAddress_Click(object sender, EventArgs e) {
   lblShippingAddressResult.Text = "Status cleared. Field values were not reset.";
  }

 }
}
