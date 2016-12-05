<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RankenConcernReport._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="jumbotron">
        <h1>Concern Report</h1>
    </div>
 <div id="wrap">
            <div id="body">
            <div id="topReport">
                <div id="personConcern">
                    &nbsp Name of Person with Concern:
                    <br />
                    &nbsp First Name: <input id="firstName" type="text" />
                    &nbsp Last Name: <input id="lastName" type="text" />
                    <br />
                    <br />
                </div>
                    
                 
                <div id="staffCompletedForm">
                    &nbsp Staff Member Who Took Concern & Completing this Form: <br />
                    &nbsp First Name: <input id="completedFormFirstName" type="text" />
                    &nbsp Last Name: <input id="completedFormLastName" type="text" /><br />
                </div>
 
 
                <div id="dateDiv">
                    &nbsp Date: 
                    <input id="concernDate" type="text" />
                </div>
 
                <div id="contactInfo">
                    &nbsp Contact Information<br />
                    &nbsp Phone Number: <input id="CIPhoneNumber" type="text" />
                    &nbsp E-Mail: <input id="CIEmail" type="text" /><br />
                </div>
            </div>
 
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                 
        <div id="middleForm">
            <div id="whoComplainTo">
               &nbsp Who was compained to?<br />
               &nbsp First Name: <input id="whoRecievedFirst" type="text" />
               &nbsp Last Name: <input id="whoRecievedLast" type="text" /><br />
                <br />
            </div>
 
            <div id="reasonConcern">
               &nbsp What was the concern?<br />
               &nbsp <input id="rasonForConcern" type="text" />
            </div>
 
            <div id="detailedConcern">
               &nbsp Provide Details of Concern: <br />
               &nbsp <textarea id="detailsConcern" cols="40" name="S2" rows="2"></textarea><br />
            </div>
 
            <div id="actionConcern">
               &nbsp Where there any actions taken and by whom?<br />
               &nbsp <textarea id="actionsTaken" cols="40" name="S3" rows="2"></textarea><br />    
            </div>
 
            <div id="dropDownListMade">
               &nbsp How was the concern made?<br />
               &nbsp <asp:DropDownList ID="DropDownList1" runat="server">
               </asp:DropDownList>
            </div>
 
            <div id="dropDownListRelationship">
               &nbsp Person of Concern Relationship to Institution:<br />
               &nbsp <asp:DropDownList ID="DropDownList2" runat="server">
               </asp:DropDownList>
            </div>
        </div>
 
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
 
        <div id="bottomForm">
             
            <div id="resolvedOutcomeDiv">
               &nbsp Was it resolved and if so what was the outcome?<br />
               &nbsp <textarea id="resolvedOutcome" cols="40" name="S4" rows="2"></textarea><br />
            </div>
 
            <div id="whoSaved">
                <br />
                &nbsp Who provided the resolution and/or outcome?<br />
                &nbsp First Name: <input id="whoResolvedFirst" type="text" />
                &nbsp First Last: <input id="whoResolvedLast" type="text" />
            </div>
 
            <div id="dateResolvedDiv">
                <br />
                &nbsp Date of Resolution:<br />
                &nbsp <input id="dateResolved" type="text" /><br />
            </div>
        </div>
    </div>
</div>

</asp:Content>
