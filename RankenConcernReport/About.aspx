﻿<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="RankenConcernReport.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Admin Database</h1>
    <asp:TextBox ID="txtBoxSearch" runat="server"></asp:TextBox>
    <ajaxToolkit:TextBoxWatermarkExtender ID="twSearch" runat="server" TargetControlID="txtBoxSearch"
      WatermarkText="Search..." />
    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />

    

    <br />
    <br />
    <asp:GridView ID="gvDatabase" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ConcernID" DataSourceID="sqlDataSourceDatabase" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
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
    <asp:SqlDataSource ID="sqlDataSourceDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:SearchConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
    </asp:Content>
