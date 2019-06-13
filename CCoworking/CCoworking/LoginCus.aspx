<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="LoginCus.aspx.cs" Inherits="LoginCus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="row w-100 justify-content-center align-items-center" style="min-height:100%">
        <div class="card">
            <div class=" text-success card-header">
                <h5 class="">Login</h5>

            </div>
            <div class=" card-body">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="TextBoxUsername" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUname" runat="server" ErrorMessage="RequiredFieldValidator" Display="Dynamic" ForeColor="#feb236" ControlToValidate="TextBoxUsername" SetFocusOnError="True" CssClass="mb-2">The Email field is required.</asp:RequiredFieldValidator>
                
                <br />

                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TextBoxPassword" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ErrorMessage="RequiredFieldValidator" Display="Dynamic" ForeColor="#feb236" ControlToValidate="TextBoxPassword" SetFocusOnError="True">The password field is required.</asp:RequiredFieldValidator>


                <br />
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-success btn-block" Text="Login" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary btn-block" Text="Login with Facebook" OnClick="Button1_Click" />
                 

            </div>

        </div>

    </div>
    <br />
    <br />
    <br />
    <br />
    <br />


</asp:Content>
