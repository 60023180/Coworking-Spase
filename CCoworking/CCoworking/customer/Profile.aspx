<%@ Page Title="" Language="C#" MasterPageFile="~/customer/SiteCus.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="customer_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <hr />
    <hr />
    <div class="p-3 mb-2 bg-secondary text-white" role="alert" style="font-family: 'BoonTook Ultra'; font-size: x-large; font-weight: normal; font-style: inherit; text-transform: capitalize; color: #FFFFFF;">
        ข้อมูลส่วนตัว
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cus_id" DataSourceID="SqlDataSource1" CssClass="table table-striped">
        <Columns>
           
            <asp:BoundField DataField="username" HeaderText="ชื่อ" SortExpression="username" />
           
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="re_password" HeaderText="re_password" SortExpression="re_password" />
           
            <asp:CommandField ButtonType="Button" ShowEditButton="True" CancelText="ยกเลิก" EditText="แก้ไข" UpdateText="อัพเดท" />
           
        </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:coworkConnectionString %>" SelectCommand="SELECT * FROM [customer] WHERE ([cus_id] = @cus_id)" UpdateCommand="UPDATE customer SET username = @username, email = @email, password = @password WHERE (cus_id = @cus_id)">
         <SelectParameters>
             <asp:SessionParameter Name="cus_id" SessionField="User_id" Type="Int32" />
         </SelectParameters>
     </asp:SqlDataSource>
</asp:Content>