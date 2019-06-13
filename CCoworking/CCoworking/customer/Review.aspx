<%@ Page Title="" Language="C#" MasterPageFile="~/customer/SiteCus.master" AutoEventWireup="true" CodeFile="Review.aspx.cs" Inherits="customer_Review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    </br>
    <hr />
    <div class="p-3 mb-2 bg-secondary text-white" role="alert" style="font-family : 'BoonTook Ultra'; font-size: x-large; font-weight: normal; font-style: inherit; text-transform: capitalize; color: #FFFFFF;">
  รายละเอียดร้านค้า
   </div> 

 <asp:ListView ID="ListView1" runat="server" DataKeyNames="shop_id" DataSourceID="SqlDataSource1">
        
        <ItemTemplate>
             <div class="alert alert-primary" role="alert">
            
            <span style="">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img") %>' />
                <br />
                <br />
            ชื่อร้าน:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />

            รายละเอียดทางร้าน:
            <asp:Label ID="detailLabel" runat="server" Text='<%# Eval("detail") %>' />
            <br />
            facebook:
            <asp:Label ID="facebookLabel" runat="server" Text='<%# Eval("facebook") %>' />
            <br />
            
            
            อีเมลล์:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            เบอร์โทร:
            <asp:Label ID="telLabel" runat="server" Text='<%# Eval("tel") %>' />
            <br />
        
           
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:coworkConnectionString %>" SelectCommand="SELECT * FROM [shop] WHERE ([shop_id] = @shop_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="shop_id" QueryStringField="shop_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>


    รีวิว:
    </br>
    <asp:TextBox ID="Text" runat="server" Height="81px" Width="425px"></asp:TextBox>
    คะแนนความพึงพอใจ 1-5 :
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    
    </br>
    <asp:Button runat="server" Text="ส่ง" ID="submit" Height="31px" Width="83px" CssClass="btn btn-primary" OnClick="submit_Click" />
    <asp:Button  ID="back" runat="server" Text="ย้อนกลับ" Height="31px" Width="83px" CssClass="btn btn-danger"  />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shop %>" SelectCommand="SELECT * FROM [shop]"></asp:SqlDataSource>
</asp:Content>
