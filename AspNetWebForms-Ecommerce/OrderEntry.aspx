<%@ Page Title="Order Entry" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderEntry.aspx.cs" Inherits="AspNetWebFormsDemo.OrderEntry" %>
<asp:Content ID="OrderEntryContent" ContentPlaceHolderID="MainContent" runat="server">
<section class="entry-page">
<h2>Order Entry</h2><p class="form-intro">Create an order record with customer/product references, price, tax, payment and fulfillment settings.</p>
<asp:ValidationSummary ID="vsOrderEntry" runat="server" HeaderText="Please correct the following:" CssClass="validation-summary" ValidationGroup="Entry" />
<asp:HiddenField ID="hfFormSource" runat="server" Value="OrderEntry" />
<div class="form-grid"><div class="form-field">
 <asp:Label ID="lblOrderReference" runat="server" AssociatedControlID="txtOrderReference" Text="Order reference" />
 <asp:TextBox ID="txtOrderReference" runat="server" CssClass="form-control" MaxLength="30" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvOrderReference" runat="server" ControlToValidate="txtOrderReference" ErrorMessage="Order reference is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revOrderReference" runat="server" ControlToValidate="txtOrderReference"
  ValidationExpression="^[A-Za-z0-9_-]{4,30}$" ErrorMessage="Use 4-30 letters, digits, _ or -." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblCustomerCode" runat="server" AssociatedControlID="txtCustomerCode" Text="Customer code" />
 <asp:TextBox ID="txtCustomerCode" runat="server" CssClass="form-control" MaxLength="20" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvCustomerCode" runat="server" ControlToValidate="txtCustomerCode" ErrorMessage="Customer code is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revCustomerCode" runat="server" ControlToValidate="txtCustomerCode"
  ValidationExpression="^[A-Za-z0-9_-]{3,20}$" ErrorMessage="Enter a valid customer code." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblProductSku" runat="server" AssociatedControlID="txtProductSku" Text="Product SKU" />
 <asp:TextBox ID="txtProductSku" runat="server" CssClass="form-control" MaxLength="30" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvProductSku" runat="server" ControlToValidate="txtProductSku" ErrorMessage="Product SKU is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revProductSku" runat="server" ControlToValidate="txtProductSku"
  ValidationExpression="^[A-Za-z0-9_-]{3,30}$" ErrorMessage="Enter a valid SKU." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblQuantity" runat="server" AssociatedControlID="txtQuantity" Text="Quantity" />
 <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control" MaxLength="5" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvQuantity" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revQuantity" runat="server" ControlToValidate="txtQuantity"
  ValidationExpression="^[1-9][0-9]{0,4}$" ErrorMessage="Quantity must be from 1 to 99999." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblUnitPrice" runat="server" AssociatedControlID="txtUnitPrice" Text="Unit price" />
 <asp:TextBox ID="txtUnitPrice" runat="server" CssClass="form-control" MaxLength="12" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvUnitPrice" runat="server" ControlToValidate="txtUnitPrice" ErrorMessage="Unit price is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revUnitPrice" runat="server" ControlToValidate="txtUnitPrice"
  ValidationExpression="^\\d+(\\.\\d{1,2})?$" ErrorMessage="Enter a valid unit price." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblDiscountCode" runat="server" AssociatedControlID="txtDiscountCode" Text="Discount code" />
 <asp:TextBox ID="txtDiscountCode" runat="server" CssClass="form-control" MaxLength="25" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revDiscountCode" runat="server" ControlToValidate="txtDiscountCode"
  ValidationExpression="^[A-Za-z0-9_-]{0,25}$" ErrorMessage="Enter a valid discount code." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblShippingFee" runat="server" AssociatedControlID="txtShippingFee" Text="Shipping fee" />
 <asp:TextBox ID="txtShippingFee" runat="server" CssClass="form-control" MaxLength="12" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revShippingFee" runat="server" ControlToValidate="txtShippingFee"
  ValidationExpression="^\\d+(\\.\\d{1,2})?$" ErrorMessage="Enter a valid shipping fee." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblGiftMessage" runat="server" AssociatedControlID="txtGiftMessage" Text="Gift message" />
 <asp:TextBox ID="txtGiftMessage" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" MaxLength="250" />
</div>
<div class="form-field">
 <asp:Label ID="lblPurchaseOrderNumber" runat="server" AssociatedControlID="txtPurchaseOrderNumber" Text="Purchase order number" />
 <asp:TextBox ID="txtPurchaseOrderNumber" runat="server" CssClass="form-control" MaxLength="40" onkeyup="markDirty(this)" />
</div>
<div class="form-field">
 <asp:Label ID="lblOrderChannel" runat="server" AssociatedControlID="ddlOrderChannel" Text="Order channel" />
 <asp:DropDownList ID="ddlOrderChannel" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Choose channel" Value="" />
  <asp:ListItem Text="Web store" Value="web" />
  <asp:ListItem Text="Mobile app" Value="mobile" />
  <asp:ListItem Text="Phone" Value="phone" />
  <asp:ListItem Text="Marketplace" Value="marketplace" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvOrderChannel" runat="server" ControlToValidate="ddlOrderChannel" InitialValue="" ErrorMessage="Order channel is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblOrderStatus" runat="server" AssociatedControlID="ddlOrderStatus" Text="Order status" />
 <asp:DropDownList ID="ddlOrderStatus" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Draft" Value="draft" />
  <asp:ListItem Text="Pending" Value="pending" />
  <asp:ListItem Text="Confirmed" Value="confirmed" />
  <asp:ListItem Text="Cancelled" Value="cancelled" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvOrderStatus" runat="server" ControlToValidate="ddlOrderStatus" InitialValue="" ErrorMessage="Order status is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblPaymentStatus" runat="server" AssociatedControlID="ddlPaymentStatus" Text="Payment status" />
 <asp:DropDownList ID="ddlPaymentStatus" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Unpaid" Value="unpaid" />
  <asp:ListItem Text="Pending" Value="pending" />
  <asp:ListItem Text="Paid" Value="paid" />
  <asp:ListItem Text="Refunded" Value="refunded" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvPaymentStatus" runat="server" ControlToValidate="ddlPaymentStatus" InitialValue="" ErrorMessage="Payment status is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblShippingMethod" runat="server" AssociatedControlID="ddlShippingMethod" Text="Shipping method" />
 <asp:DropDownList ID="ddlShippingMethod" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Standard" Value="standard" />
  <asp:ListItem Text="Express" Value="express" />
  <asp:ListItem Text="Pickup" Value="pickup" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvShippingMethod" runat="server" ControlToValidate="ddlShippingMethod" InitialValue="" ErrorMessage="Shipping method is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblCurrency" runat="server" AssociatedControlID="ddlCurrency" Text="Currency" />
 <asp:DropDownList ID="ddlCurrency" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="INR" Value="INR" />
  <asp:ListItem Text="USD" Value="USD" />
  <asp:ListItem Text="GBP" Value="GBP" />
  <asp:ListItem Text="EUR" Value="EUR" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvCurrency" runat="server" ControlToValidate="ddlCurrency" InitialValue="" ErrorMessage="Currency is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblTaxRate" runat="server" AssociatedControlID="ddlTaxRate" Text="Tax rate" />
 <asp:DropDownList ID="ddlTaxRate" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="0%" Value="0" />
  <asp:ListItem Text="5%" Value="5" />
  <asp:ListItem Text="12%" Value="12" />
  <asp:ListItem Text="18%" Value="18" />
  <asp:ListItem Text="28%" Value="28" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvTaxRate" runat="server" ControlToValidate="ddlTaxRate" InitialValue="" ErrorMessage="Tax rate is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblOrderDate" runat="server" AssociatedControlID="txtOrderDate" Text="Order date" />
 <asp:TextBox ID="txtOrderDate" runat="server" CssClass="form-control" TextMode="Date" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvOrderDate" runat="server" ControlToValidate="txtOrderDate" ErrorMessage="Order date is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblRequestedDeliveryDate" runat="server" AssociatedControlID="txtRequestedDeliveryDate" Text="Requested delivery date" />
 <asp:TextBox ID="txtRequestedDeliveryDate" runat="server" CssClass="form-control" TextMode="Date" onkeyup="markDirty(this)" />
</div>
<div class="form-field">
 <asp:Label ID="lblBillingAddressCode" runat="server" AssociatedControlID="txtBillingAddressCode" Text="Billing address code" />
 <asp:TextBox ID="txtBillingAddressCode" runat="server" CssClass="form-control" MaxLength="30" onkeyup="markDirty(this)" />
</div>
<div class="form-field">
 <asp:Label ID="lblShippingAddressCode" runat="server" AssociatedControlID="txtShippingAddressCode" Text="Shipping address code" />
 <asp:TextBox ID="txtShippingAddressCode" runat="server" CssClass="form-control" MaxLength="30" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvShippingAddressCode" runat="server" ControlToValidate="txtShippingAddressCode" ErrorMessage="Shipping address code is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblSalesChannelReference" runat="server" AssociatedControlID="txtSalesChannelReference" Text="Sales channel reference" />
 <asp:TextBox ID="txtSalesChannelReference" runat="server" CssClass="form-control" MaxLength="60" onkeyup="markDirty(this)" />
</div>
<div class="form-field">
 <asp:Label ID="lblOrderNotes" runat="server" AssociatedControlID="txtOrderNotes" Text="Internal order notes" />
 <asp:TextBox ID="txtOrderNotes" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" MaxLength="1000" />
</div>
<div class="form-field checkbox-field">
 <asp:CheckBox ID="chkIsGift" runat="server" Text="This order is a gift" onclick="markDirty(this)" />
</div>
<div class="form-field checkbox-field">
 <asp:CheckBox ID="chkRequireSignature" runat="server" Text="Signature required on delivery" onclick="markDirty(this)" />
</div>
<div class="form-field checkbox-field">
 <asp:CheckBox ID="chkNotifyCustomer" runat="server" Text="Email customer about order updates" Checked="true" onclick="markDirty(this)" />
</div>
<div class="form-field checkbox-field">
 <asp:CheckBox ID="chkFraudReviewRequired" runat="server" Text="Flag for manual review" onclick="markDirty(this)" />
</div>
<div class="form-field">
 <asp:Label ID="lblRequestedBy" runat="server" AssociatedControlID="txtRequestedBy" Text="Order entered by" />
 <asp:TextBox ID="txtRequestedBy" runat="server" CssClass="form-control" MaxLength="100" onkeyup="markDirty(this)" />
</div>
</div>
<div class="form-actions">
<asp:Button ID="btnCreateOrder" runat="server" Text="Create order" CssClass="button" CausesValidation="true" ValidationGroup="Entry" OnClick="btnCreateOrder_Click" OnClientClick="return confirmFormSubmit();" />
<asp:Button ID="btnClearOrderEntry" runat="server" Text="Clear status" CssClass="button secondary" CausesValidation="false" OnClick="btnClearOrderEntry_Click" />
</div>
<asp:Label ID="lblOrderEntryResult" runat="server" CssClass="result" EnableViewState="true" />
</section></asp:Content>
