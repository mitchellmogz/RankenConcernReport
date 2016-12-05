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
 
        

 <div id="wrap">

  <div id="userInfo">
      <h1>Your Information</h1>
      <asp:TextBox ID="FirstName" runat="server" Text='First Name' onfocus="HideWatermark(this,'First Name')"
      onblur="ShowWatermark(this,'First Name')"></asp:TextBox>
    
        <asp:TextBox ID="LastName" runat="server" Text='Last Name' onfocus="HideWatermark(this,'Last Name')"
      onblur="ShowWatermark(this,'Last Name')"></asp:TextBox>
       <br />
      <br />
       <asp:TextBox ID="Phone" runat="server" Text='Phone Number' onfocus="HideWatermark(this,'Phone Number')"
      onblur="ShowWatermark(this,'Phone Number')"></asp:TextBox>
  
       <asp:TextBox ID="Email" runat="server" Text='Email' onfocus="HideWatermark(this,'Email')"
      onblur="ShowWatermark(this,'Email')"></asp:TextBox>
       <br />
      <br />
        <p>Relationship to the concern </p><asp:DropDownList ID="relationship" runat="server">
             <asp:ListItem>Student</asp:ListItem>
             <asp:ListItem>Parent</asp:ListItem>
             <asp:ListItem>Employee</asp:ListItem>
             <asp:ListItem>Faculty</asp:ListItem>
             <asp:ListItem>Other</asp:ListItem>
         </asp:DropDownList>

  </div>
     <div id="Concern">
         <h1>Your Concern</h1>
        <asp:textbox id="concern" form="Feedback_Form" CssClass="Contact_Input" maxlength="1200" lines="10" cols="10" wrap="true" TextMode="MultiLine" runat="server" Height="81px" Width="215px" Text='What is the Concern' onfocus="HideWatermark(this,'What is the Concern')"
      onblur="ShowWatermark(this,'What is the Concern')"/>
         <asp:textbox id="details" form="Feedback_Form" CssClass="Contact_Input" maxlength="1200" lines="10" cols="10" wrap="true" TextMode="MultiLine" runat="server" Height="81px" Width="215px" Text='Provide Details of Concern' onfocus="HideWatermark(this,'Provide Details of Concern')"
      onblur="ShowWatermark(this,'Provide Details of Concern')"/>
          <br />
      <br />
         <p>How was the concern made?</p>
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
      
         
         <asp:Button ID="Button1" runat="server" Text="Submit Concern" />

     </div>
</div>

</asp:Content>
