<%@ Page Title="Shipping Address" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShippingAddress.aspx.cs" Inherits="AspNetWebFormsDemo.ShippingAddress" %>
<asp:Content ID="ShippingAddressContent" ContentPlaceHolderID="MainContent" runat="server">
<section class="entry-page">
<h2>Shipping Address</h2><p class="form-intro">Capture recipient, postal address and delivery preferences for ecommerce fulfillment.</p>
<asp:ValidationSummary ID="vsShippingAddress" runat="server" HeaderText="Please correct the following:" CssClass="validation-summary" ValidationGroup="Entry" />
<asp:HiddenField ID="hfFormSource" runat="server" Value="ShippingAddress" />
<div class="form-grid"><div class="form-field">
 <asp:Label ID="lblAddressName" runat="server" AssociatedControlID="txtAddressName" Text="Address label" />
 <asp:TextBox ID="txtAddressName" runat="server" CssClass="form-control" MaxLength="60" placeholder="Home / Office" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvAddressName" runat="server" ControlToValidate="txtAddressName" ErrorMessage="Address label is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblRecipientFirstName" runat="server" AssociatedControlID="txtRecipientFirstName" Text="Recipient first name" />
 <asp:TextBox ID="txtRecipientFirstName" runat="server" CssClass="form-control" MaxLength="50" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvRecipientFirstName" runat="server" ControlToValidate="txtRecipientFirstName" ErrorMessage="Recipient first name is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revRecipientFirstName" runat="server" ControlToValidate="txtRecipientFirstName"
  ValidationExpression="^[A-Za-z][A-Za-z .'-]{0,49}$" ErrorMessage="Enter a valid first name." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblRecipientLastName" runat="server" AssociatedControlID="txtRecipientLastName" Text="Recipient last name" />
 <asp:TextBox ID="txtRecipientLastName" runat="server" CssClass="form-control" MaxLength="50" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvRecipientLastName" runat="server" ControlToValidate="txtRecipientLastName" ErrorMessage="Recipient last name is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revRecipientLastName" runat="server" ControlToValidate="txtRecipientLastName"
  ValidationExpression="^[A-Za-z][A-Za-z .'-]{0,49}$" ErrorMessage="Enter a valid last name." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblAddressLine1" runat="server" AssociatedControlID="txtAddressLine1" Text="Address line 1" />
 <asp:TextBox ID="txtAddressLine1" runat="server" CssClass="form-control" MaxLength="150" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvAddressLine1" runat="server" ControlToValidate="txtAddressLine1" ErrorMessage="Address line 1 is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblAddressLine2" runat="server" AssociatedControlID="txtAddressLine2" Text="Address line 2" />
 <asp:TextBox ID="txtAddressLine2" runat="server" CssClass="form-control" MaxLength="150" onkeyup="markDirty(this)" />
</div>
<div class="form-field">
 <asp:Label ID="lblLandmark" runat="server" AssociatedControlID="txtLandmark" Text="Landmark" />
 <asp:TextBox ID="txtLandmark" runat="server" CssClass="form-control" MaxLength="100" onkeyup="markDirty(this)" />
</div>
<div class="form-field">
 <asp:Label ID="lblCity" runat="server" AssociatedControlID="txtCity" Text="City" />
 <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" MaxLength="80" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" ErrorMessage="City is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revCity" runat="server" ControlToValidate="txtCity"
  ValidationExpression="^[A-Za-z][A-Za-z .'-]{1,79}$" ErrorMessage="Enter a valid city." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblDistrict" runat="server" AssociatedControlID="txtDistrict" Text="District / County" />
 <asp:TextBox ID="txtDistrict" runat="server" CssClass="form-control" MaxLength="80" onkeyup="markDirty(this)" />
</div>
<div class="form-field">
 <asp:Label ID="lblStateProvince" runat="server" AssociatedControlID="txtStateProvince" Text="State / Province" />
 <asp:TextBox ID="txtStateProvince" runat="server" CssClass="form-control" MaxLength="80" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvStateProvince" runat="server" ControlToValidate="txtStateProvince" ErrorMessage="State / Province is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblPostalCode" runat="server" AssociatedControlID="txtPostalCode" Text="Postal / ZIP code" />
 <asp:TextBox ID="txtPostalCode" runat="server" CssClass="form-control" MaxLength="12" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvPostalCode" runat="server" ControlToValidate="txtPostalCode" ErrorMessage="Postal / ZIP code is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revPostalCode" runat="server" ControlToValidate="txtPostalCode"
  ValidationExpression="^[A-Za-z0-9 -]{3,12}$" ErrorMessage="Enter a valid postal code." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblCountry" runat="server" AssociatedControlID="ddlCountry" Text="Country" />
 <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Choose country" Value="" />
  <asp:ListItem Text="India" Value="IN" />
  <asp:ListItem Text="United States" Value="US" />
  <asp:ListItem Text="United Kingdom" Value="GB" />
  <asp:ListItem Text="Canada" Value="CA" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ControlToValidate="ddlCountry" InitialValue="" ErrorMessage="Country is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblAddressType" runat="server" AssociatedControlID="ddlAddressType" Text="Address type" />
 <asp:DropDownList ID="ddlAddressType" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Home" Value="home" />
  <asp:ListItem Text="Work" Value="work" />
  <asp:ListItem Text="Other" Value="other" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvAddressType" runat="server" ControlToValidate="ddlAddressType" InitialValue="" ErrorMessage="Address type is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblDeliveryWindow" runat="server" AssociatedControlID="ddlDeliveryWindow" Text="Preferred delivery window" />
 <asp:DropDownList ID="ddlDeliveryWindow" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Any time" Value="any" />
  <asp:ListItem Text="Morning" Value="morning" />
  <asp:ListItem Text="Afternoon" Value="afternoon" />
  <asp:ListItem Text="Evening" Value="evening" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvDeliveryWindow" runat="server" ControlToValidate="ddlDeliveryWindow" InitialValue="" ErrorMessage="Preferred delivery window is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblDeliveryInstructions" runat="server" AssociatedControlID="txtDeliveryInstructions" Text="Delivery instructions" />
 <asp:TextBox ID="txtDeliveryInstructions" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" MaxLength="500" />
</div>
<div class="form-field">
 <asp:Label ID="lblContactPhone" runat="server" AssociatedControlID="txtContactPhone" Text="Delivery contact phone" />
 <asp:TextBox ID="txtContactPhone" runat="server" CssClass="form-control" MaxLength="20" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvContactPhone" runat="server" ControlToValidate="txtContactPhone" ErrorMessage="Delivery contact phone is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revContactPhone" runat="server" ControlToValidate="txtContactPhone"
  ValidationExpression="^\\+?[0-9 ()-]{7,20}$" ErrorMessage="Enter a valid phone number." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblGateCode" runat="server" AssociatedControlID="txtGateCode" Text="Gate / access code" />
 <asp:TextBox ID="txtGateCode" runat="server" CssClass="form-control" MaxLength="40" onkeyup="markDirty(this)" />
</div>
<div class="form-field checkbox-field">
 <asp:CheckBox ID="chkIsDefaultAddress" runat="server" Text="Set as default shipping address" onclick="markDirty(this)" />
</div>
</div>
<div class="form-actions">
<asp:Button ID="btnSaveAddress" runat="server" Text="Save address" CssClass="button" CausesValidation="true" ValidationGroup="Entry" OnClick="btnSaveAddress_Click" OnClientClick="return confirmFormSubmit();" />
<asp:Button ID="btnClearShippingAddress" runat="server" Text="Clear status" CssClass="button secondary" CausesValidation="false" OnClick="btnClearShippingAddress_Click" />
</div>
<asp:Label ID="lblShippingAddressResult" runat="server" CssClass="result" EnableViewState="true" />
</section></asp:Content>
