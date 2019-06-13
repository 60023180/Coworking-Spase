<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="storedetail.aspx.cs" Inherits="storedetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <br />
    <div class="p-3 mb-2 bg-secondary text-white" role="alert" style="font-family: 'BoonTook Ultra'; font-size: x-large; font-weight: normal; font-style: inherit; text-transform: capitalize; color: #FFFFFF;">
        รายละเอียดร้าน
    </div>

    <div class="row justify-content-center">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="spase_id" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="card text-center">
                    <div class="card-header">
                        รายละเอียดร้าน
                    </div>
                    <div class="card-body">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("spase_img") %>' Height="500" Width="650" />
                        <h5 class="card-title"></h5>
                        ชื่อร้าน :
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("spase_name") %>' />
                        <br />

                    </div>

                </div>


                <br />
            </ItemTemplate>
        </asp:DataList>
    </div>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cowork %>" SelectCommand="SELECT * FROM [spase] WHERE ([spase_id] = @spase_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="spase_id" QueryStringField="spase_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>



