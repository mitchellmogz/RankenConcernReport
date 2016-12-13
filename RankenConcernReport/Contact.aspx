<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="RankenConcernReport.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="wrap">
    <h1>Your Concern Was Submitted!</h1>
    <h1>Your Concern ID is <asp:Label ID="lblConcernID" runat="server"></asp:Label>.</h1>
        <h3>Please allow us up to <asp:Label ID="lblInputDate" runat="server"></asp:Label> to respond.</h3>
    <h5>(If Necessary)</h5>
    </div>
</asp:Content>
