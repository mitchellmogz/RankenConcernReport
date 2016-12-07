<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RankenConcernReport._Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <a href="Content/Site.css" rel="stylesheet" type="text/css"></a>
    <asp:SqlDataSource ID="sqlConcernConnectionString" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ConcernReportDatabase.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
 <div id="wrap">
  <div id="userInfo">
      <h1>Your Information</h1>
      <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
      <ajaxToolkit:TextBoxWatermarkExtender ID="twFname" runat="server" TargetControlID="FirstName"
      WatermarkText="Enter Your First Name" />
    
        <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
      <ajaxToolkit:TextBoxWatermarkExtender ID="twLname" runat="server" TargetControlID="LastName"
      WatermarkText="Enter Your Last Name" />
       <br />
      <br />
       <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
      <ajaxToolkit:TextBoxWatermarkExtender ID="twPhone" runat="server" TargetControlID="Phone"
      WatermarkText="Enter Your Phone Number" />
  
       <asp:TextBox ID="Email" runat="server"></asp:TextBox>
      <ajaxToolkit:TextBoxWatermarkExtender ID="twEmail" runat="server" TargetControlID="Email"
      WatermarkText="Enter Your Email" />
       <br />
      <br />
        <p>What is your relationship to the college?</p><asp:DropDownList ID="relationship" runat="server">
             <asp:ListItem>Student</asp:ListItem>
             <asp:ListItem>Parent</asp:ListItem>
             <asp:ListItem>Employee</asp:ListItem>
             <asp:ListItem>Faculty</asp:ListItem>
             <asp:ListItem>Other</asp:ListItem>
         </asp:DropDownList>

  </div>
     <div id="ConcernDiv">
         <h1>Your Concern</h1>
        <asp:TextBox ID="Concern" CssClass="Contact_Input" lines="10" cols="10" wrap="true" TextMode="MultiLine" runat="server" Height="81px" Width="215px"/>
        <ajaxToolkit:TextBoxWatermarkExtender ID="twConcern" runat="server" TargetControlID="Concern"
      WatermarkText="What is your Concern?" />
         <asp:TextBox ID="Details" CssClass="Contact_Input" lines="10" cols="10" wrap="true" TextMode="MultiLine" runat="server" Height="81px" Width="215px"/>
         <ajaxToolkit:TextBoxWatermarkExtender ID="twDetails" runat="server" TargetControlID="Details"
      WatermarkText="Please Provide Details of Concern" />
          <br />
      <br />
         <p>How did you initially make your concern?</p>
         <asp:DropDownList ID="concernMade" runat="server">
             <asp:ListItem>Phone</asp:ListItem>
             <asp:ListItem>Email</asp:ListItem>
             <asp:ListItem>Letter</asp:ListItem>
             <asp:ListItem>In Person</asp:ListItem>
             <asp:ListItem>HLC</asp:ListItem>
             <asp:ListItem>Website</asp:ListItem>
         </asp:DropDownList>
          <br />
       <br />

         <p>Would you like a follow up?</p>
         <asp:DropDownList ID="followUp" runat="server">
             <asp:ListItem>Yes</asp:ListItem>
             <asp:ListItem>No</asp:ListItem>
         </asp:DropDownList>
      
         <br />
         <br />
         
         <asp:Button ID="Button1" runat="server" Text="Submit Concern" OnClick="Button1_Click" />

     </div>
</div>

</asp:Content>
