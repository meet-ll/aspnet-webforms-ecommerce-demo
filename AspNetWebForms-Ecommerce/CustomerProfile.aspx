<%@ Page Title="Customer Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerProfile.aspx.cs" Inherits="AspNetWebFormsDemo.CustomerProfile" %>
<asp:Content ID="CustomerProfileContent" ContentPlaceHolderID="MainContent" runat="server">
<section class="entry-page">
<h2>Customer Profile</h2><p class="form-intro">Capture customer identity, contact information, customer classification and communication preferences.</p>
<asp:ValidationSummary ID="vsCustomerProfile" runat="server" HeaderText="Please correct the following:" CssClass="validation-summary" ValidationGroup="Entry" />
<asp:HiddenField ID="hfFormSource" runat="server" Value="CustomerProfile" />
<div class="form-grid"><div class="form-field">
 <asp:Label ID="lblCustomerCode" runat="server" AssociatedControlID="txtCustomerCode" Text="Customer code" />
 <asp:TextBox ID="txtCustomerCode" runat="server" CssClass="form-control" MaxLength="20" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvCustomerCode" runat="server" ControlToValidate="txtCustomerCode" ErrorMessage="Customer code is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revCustomerCode" runat="server" ControlToValidate="txtCustomerCode"
  ValidationExpression="^[A-Za-z0-9_-]{3,20}$" ErrorMessage="Use 3-20 letters, digits, _ or -." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblFirstName" runat="server" AssociatedControlID="txtFirstName" Text="First name" />
 <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" MaxLength="50" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revFirstName" runat="server" ControlToValidate="txtFirstName"
  ValidationExpression="^[A-Za-z][A-Za-z .'-]{0,49}$" ErrorMessage="Enter a valid first name." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblLastName" runat="server" AssociatedControlID="txtLastName" Text="Last name" />
 <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" MaxLength="50" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revLastName" runat="server" ControlToValidate="txtLastName"
  ValidationExpression="^[A-Za-z][A-Za-z .'-]{0,49}$" ErrorMessage="Enter a valid last name." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Email address" />
 <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" MaxLength="150" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email address is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
  ValidationExpression="^[^@\\s]+@[^@\\s]+\\.[^@\\s]+$" ErrorMessage="Enter a valid email address." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblPhone" runat="server" AssociatedControlID="txtPhone" Text="Phone number" />
 <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" MaxLength="20" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone"
  ValidationExpression="^\\+?[0-9 ()-]{7,20}$" ErrorMessage="Enter a valid phone number." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblAlternatePhone" runat="server" AssociatedControlID="txtAlternatePhone" Text="Alternate phone" />
 <asp:TextBox ID="txtAlternatePhone" runat="server" CssClass="form-control" MaxLength="20" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revAlternatePhone" runat="server" ControlToValidate="txtAlternatePhone"
  ValidationExpression="^\\+?[0-9 ()-]{7,20}$" ErrorMessage="Enter a valid phone number." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblCompany" runat="server" AssociatedControlID="txtCompany" Text="Company" />
 <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control" MaxLength="120" onkeyup="markDirty(this)" />
</div>
<div class="form-field">
 <asp:Label ID="lblTaxId" runat="server" AssociatedControlID="txtTaxId" Text="Tax / GST ID" />
 <asp:TextBox ID="txtTaxId" runat="server" CssClass="form-control" MaxLength="20" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revTaxId" runat="server" ControlToValidate="txtTaxId"
  ValidationExpression="^[A-Za-z0-9-]{5,20}$" ErrorMessage="Enter a valid tax identifier." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblDateOfBirth" runat="server" AssociatedControlID="txtDateOfBirth" Text="Date of birth" />
 <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control" TextMode="Date" onkeyup="markDirty(this)" />
</div>
<div class="form-field">
 <asp:Label ID="lblLoyaltyNumber" runat="server" AssociatedControlID="txtLoyaltyNumber" Text="Loyalty number" />
 <asp:TextBox ID="txtLoyaltyNumber" runat="server" CssClass="form-control" MaxLength="30" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revLoyaltyNumber" runat="server" ControlToValidate="txtLoyaltyNumber"
  ValidationExpression="^[A-Za-z0-9-]{0,30}$" ErrorMessage="Use letters, digits or hyphens." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblCustomerType" runat="server" AssociatedControlID="ddlCustomerType" Text="Customer type" />
 <asp:DropDownList ID="ddlCustomerType" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Choose type" Value="" />
  <asp:ListItem Text="Individual" Value="individual" />
  <asp:ListItem Text="Business" Value="business" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvCustomerType" runat="server" ControlToValidate="ddlCustomerType" InitialValue="" ErrorMessage="Customer type is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblPreferredContact" runat="server" AssociatedControlID="ddlPreferredContact" Text="Preferred contact" />
 <asp:DropDownList ID="ddlPreferredContact" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Email" Value="email" />
  <asp:ListItem Text="Phone" Value="phone" />
  <asp:ListItem Text="SMS" Value="sms" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvPreferredContact" runat="server" ControlToValidate="ddlPreferredContact" InitialValue="" ErrorMessage="Preferred contact is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblPreferredLanguage" runat="server" AssociatedControlID="ddlPreferredLanguage" Text="Preferred language" />
 <asp:DropDownList ID="ddlPreferredLanguage" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="English" Value="en" />
  <asp:ListItem Text="Hindi" Value="hi" />
  <asp:ListItem Text="Gujarati" Value="gu" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvPreferredLanguage" runat="server" ControlToValidate="ddlPreferredLanguage" InitialValue="" ErrorMessage="Preferred language is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblCustomerStatus" runat="server" AssociatedControlID="ddlCustomerStatus" Text="Customer status" />
 <asp:DropDownList ID="ddlCustomerStatus" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Active" Value="active" />
  <asp:ListItem Text="Pending" Value="pending" />
  <asp:ListItem Text="Blocked" Value="blocked" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvCustomerStatus" runat="server" ControlToValidate="ddlCustomerStatus" InitialValue="" ErrorMessage="Customer status is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblWebsite" runat="server" AssociatedControlID="txtWebsite" Text="Website" />
 <asp:TextBox ID="txtWebsite" runat="server" CssClass="form-control" MaxLength="200" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revWebsite" runat="server" ControlToValidate="txtWebsite"
  ValidationExpression="^$|^https?://.+" ErrorMessage="Enter a URL beginning with http:// or https://." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblReferralCode" runat="server" AssociatedControlID="txtReferralCode" Text="Referral code" />
 <asp:TextBox ID="txtReferralCode" runat="server" CssClass="form-control" MaxLength="30" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revReferralCode" runat="server" ControlToValidate="txtReferralCode"
  ValidationExpression="^[A-Za-z0-9_-]{0,30}$" ErrorMessage="Use letters, digits, underscore or hyphen." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblCustomerNotes" runat="server" AssociatedControlID="txtCustomerNotes" Text="Customer notes" />
 <asp:TextBox ID="txtCustomerNotes" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" MaxLength="1000" />
</div>
<div class="form-field checkbox-field">
 <asp:CheckBox ID="chkMarketingConsent" runat="server" Text="I agree to receive marketing emails" onclick="markDirty(this)" />
</div>
<div class="form-field checkbox-field">
 <asp:CheckBox ID="chkTaxExempt" runat="server" Text="Tax exempt customer" onclick="markDirty(this)" />
</div>
<div class="form-field checkbox-field">
 <asp:CheckBox ID="chkRequirePurchaseOrder" runat="server" Text="Require purchase order" onclick="markDirty(this)" />
</div>
<div class="form-field">
 <asp:Label ID="lblCreditLimit" runat="server" AssociatedControlID="txtCreditLimit" Text="Credit limit" />
 <asp:TextBox ID="txtCreditLimit" runat="server" CssClass="form-control" MaxLength="12" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revCreditLimit" runat="server" ControlToValidate="txtCreditLimit"
  ValidationExpression="^\\d+(\\.\\d{1,2})?$" ErrorMessage="Enter a valid amount." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
</div>
<div class="form-actions">
<asp:Button ID="btnSaveCustomer" runat="server" Text="Save customer" CssClass="button" CausesValidation="true" ValidationGroup="Entry" OnClick="btnSaveCustomer_Click" OnClientClick="return confirmFormSubmit();" />
<asp:Button ID="btnClearCustomerProfile" runat="server" Text="Clear status" CssClass="button secondary" CausesValidation="false" OnClick="btnClearCustomerProfile_Click" />
</div>
<asp:Label ID="lblCustomerProfileResult" runat="server" CssClass="result" EnableViewState="true" />
</section></asp:Content>
