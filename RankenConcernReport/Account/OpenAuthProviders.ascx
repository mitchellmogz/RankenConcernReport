<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OpenAuthProviders.ascx.cs" Inherits="RankenConcernReport.Account.OpenAuthProviders" %>

<div id="socialLoginList">
    <h4></h4>
       <div id="tight">
           &nbsp;&nbsp;</div>
    <hr />
    <asp:ListView runat="server" ID="providerDetails" ItemType="System.String"
        SelectMethod="GetProviderNames" ViewStateMode="Disabled">
        <ItemTemplate>
       
        </ItemTemplate>
        <EmptyDataTemplate>
            <div>
                <p></p>
            </div>
        </EmptyDataTemplate>
    </asp:ListView>
</div>
