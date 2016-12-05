<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RankenConcernReport._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <script>
                function ShowWatermark(textBox, waterMark) {
                        if (textBox.value.length == 0) {
                                textBox.value = waterMark;
                        }
                }
 
                function HideWatermark(textBox, waterMark) {
                        if (textBox.value.length == 0)
                                textBox.value = waterMark;
                        else if (textBox.value == waterMark)
                                textBox.value = '';
                }
        </script>
    <div class="jumbotron">
        <h1>Concern Report</h1>
    </div>
 <div id="wrap">
  <div id="userInfo">
      <h1>User Information</h1>
      <asp:TextBox ID="FirstName" runat="server" Text='First Name' onfocus="HideWatermark(this,'First Name')"
      onblur="ShowWatermark(this,'First Name')" Font-Size="Large"></asp:TextBox>
  </div>
</div>

</asp:Content>
