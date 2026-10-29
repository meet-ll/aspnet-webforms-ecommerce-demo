<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Notice.ascx.cs" Inherits="AspNetWebFormsDemo.Controls.Notice" %>
<div class="notice" role="status"><asp:Label ID="lblMessage" runat="server" /><asp:Button ID="btnDismiss" runat="server" Text="Dismiss" CausesValidation="false" OnClick="btnDismiss_Click" /></div>
