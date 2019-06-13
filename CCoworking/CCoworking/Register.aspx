<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="row w-100 justify-content-center align-items-center" style="min-height: 100%">
        <div class="card">
            <div class=" text-success card-header">
                <h5 class="">Register</h5>
            </div>
            <div class=" text-secondary card-header">
                <h6 class="">Create a new account</h6>
            </div>

            <div class=" card-body">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUname" runat="server" ErrorMessage="RequiredFieldValidator" Display="Dynamic" ForeColor="#feb236" ControlToValidate="TextBox1" SetFocusOnError="True" CssClass="mb-2 p-2">The user name field is required.</asp:RequiredFieldValidator>

                <br />
                <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="RequiredFieldValidator" Display="Dynamic" ForeColor="#feb236" ControlToValidate="TextBox2" SetFocusOnError="True" CssClass="mb-2 p-2">The Email field is required.</asp:RequiredFieldValidator>


                <br />
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTel" runat="server" ErrorMessage="RequiredFieldValidator" Display="Dynamic" ForeColor="#feb236" ControlToValidate="TextBox3" SetFocusOnError="True" CssClass="mb-2 p-2">The Password field is required.</asp:RequiredFieldValidator>

                <br />
                <asp:Label ID="Label4" runat="server" Text="Re-Password"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ErrorMessage="RequiredFieldValidator" Display="Dynamic" ForeColor="#feb236" ControlToValidate="TextBox4" SetFocusOnError="True" CssClass="mb-2 p-2">The Password field is required.</asp:RequiredFieldValidator>

                <br />

                <div class="form-group col text-left">
                    <label>Day</label>
                    <asp:DropDownList ID="DropDownListDay" runat="server" CssClass="form-control" Width="235px">
                    </asp:DropDownList>
                    <label>Mounth</label>
                    <asp:DropDownList ID="DropDownListMounth" runat="server" CssClass="form-control" Width="231px">
                    </asp:DropDownList>
                    <label>Year</label>
                    <asp:DropDownList ID="DropDownListYear" runat="server" CssClass="form-control" Width="229px">
                    </asp:DropDownList>
                    <label>Sex</label>
                    <asp:DropDownList ID="DropDownListSex" runat="server" CssClass="form-control" Width="228px" DataSourceID="SqlDataSource1" DataTextField="sex" DataValueField="sex">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:coworkConnectionString %>" SelectCommand="SELECT [sex] FROM [sex]"></asp:SqlDataSource>
                </div>


                <br />

                <br />


                <asp:Button ID="Button1" CssClass="btn btn-outline-success" runat="server" Text="ลงทะเบียน" OnClick="Button1_Click" />


            </div>

        </div>

    </div>
    <br />
    <br />
    <br />
    <br />
    <br />


</asp:Content>

