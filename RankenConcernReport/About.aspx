<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="RankenConcernReport.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Admin Database</h1>

    <div><asp:TextBox ID="txtBoxSearch" runat="server"></asp:TextBox>
    <ajaxToolkit:TextBoxWatermarkExtender ID="twSearch" runat="server" TargetControlID="txtBoxSearch"
      WatermarkText="Search..." />
    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />

    Category<asp:DropDownList ID="ddlCategory" runat="server">
             <asp:ListItem Value="ConcernID">Concern ID</asp:ListItem>
             <asp:ListItem Value="FirstName">First Name</asp:ListItem>
             <asp:ListItem Value="LastName">Last Name</asp:ListItem>
             <asp:ListItem Value="PhoneNumber">Phone Number</asp:ListItem>
             <asp:ListItem Value="Email">Email</asp:ListItem>
             <asp:ListItem Value="Relationship">Relationship</asp:ListItem>
             <asp:ListItem Value="InputDate">Date</asp:ListItem>
             <asp:ListItem Value="Concern">Concern</asp:ListItem>
             <asp:ListItem Value="ConcernDetails">Concern Details</asp:ListItem>
             <asp:ListItem Value="ConcernMade">Concern Made</asp:ListItem>
             <asp:ListItem Value="FollowUp">Follow Up</asp:ListItem>
             <asp:ListItem Value="Resolved">Resolved</asp:ListItem>
         </asp:DropDownList></div>

    <br />
    <br />
    <asp:GridView ID="gvDatabase" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ConcernID" DataSourceID="sqlDataSourceDatabase" ForeColor="Black" GridLines="Vertical" Width="1006px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="ConcernID" HeaderText="ConcernID" InsertVisible="False" ReadOnly="True" SortExpression="ConcernID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Relationship" HeaderText="Relationship" SortExpression="Relationship" />
            <asp:BoundField DataField="InputDate" HeaderText="InputDate" SortExpression="InputDate" />
            <asp:BoundField DataField="Concern" HeaderText="Concern" SortExpression="Concern" />
            <asp:BoundField DataField="ConcernDetails" HeaderText="ConcernDetails" SortExpression="ConcernDetails" />
            <asp:BoundField DataField="ConcernMade" HeaderText="ConcernMade" SortExpression="ConcernMade" />
            <asp:BoundField DataField="FollowUp" HeaderText="FollowUp" SortExpression="FollowUp" />
            <asp:BoundField DataField="Resolved" HeaderText="Resolved" SortExpression="Resolved" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="sqlDataSourceDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:SearchConnectionString %>" SelectCommand="SELECT * FROM [User]" DeleteCommand="DELETE FROM [User] WHERE [ConcernID] = @ConcernID" InsertCommand="INSERT INTO [User] ([FirstName], [LastName], [PhoneNumber], [Email], [Relationship], [InputDate], [Concern], [ConcernDetails], [ConcernMade], [FollowUp], [Resolved]) VALUES (@FirstName, @LastName, @PhoneNumber, @Email, @Relationship, @InputDate, @Concern, @ConcernDetails, @ConcernMade, @FollowUp, @Resolved)" UpdateCommand="UPDATE [User] SET [FirstName] = @FirstName, [LastName] = @LastName, [PhoneNumber] = @PhoneNumber, [Email] = @Email, [Relationship] = @Relationship, [InputDate] = @InputDate, [Concern] = @Concern, [ConcernDetails] = @ConcernDetails, [ConcernMade] = @ConcernMade, [FollowUp] = @FollowUp, [Resolved] = @Resolved WHERE [ConcernID] = @ConcernID">
        <DeleteParameters>
            <asp:Parameter Name="ConcernID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Relationship" Type="String" />
            <asp:Parameter Name="InputDate" Type="DateTime" />
            <asp:Parameter Name="Concern" Type="String" />
            <asp:Parameter Name="ConcernDetails" Type="String" />
            <asp:Parameter Name="ConcernMade" Type="String" />
            <asp:Parameter Name="FollowUp" Type="String" />
            <asp:Parameter Name="Resolved" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Relationship" Type="String" />
            <asp:Parameter Name="InputDate" Type="DateTime" />
            <asp:Parameter Name="Concern" Type="String" />
            <asp:Parameter Name="ConcernDetails" Type="String" />
            <asp:Parameter Name="ConcernMade" Type="String" />
            <asp:Parameter Name="FollowUp" Type="String" />
            <asp:Parameter Name="Resolved" Type="String" />
            <asp:Parameter Name="ConcernID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
