<%@ Page Title="" Language="C#" MasterPageFile="~/customer/SiteCus.master" AutoEventWireup="true" CodeFile="Homecus.aspx.cs" Inherits="customer_Homecus" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>

    <div/>
    <hr />
    <div class="p-3 mb-2 bg-secondary text-white" role="alert" style="font-family: 'Ekkamai Standard'; font-size: x-large; font-weight: normal; font-style: inherit; text-transform: capitalize; color: #FFFFFF;">
        ร้านแนะนำ  
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:coworkConnectionString %>" SelectCommand="SELECT [spase_id], [spase_img], [spase_name] FROM [spase]"></asp:SqlDataSource>


    <asp:ListView ID="ListView1" runat="server" DataKeyNames="spase_id" DataSourceID="SqlDataSource1" OnItemCommand="ListView1_ItemCommand">

        <EmptyDataTemplate>
            <span>ไม่มีข้อมูล</span>
        </EmptyDataTemplate>


        <ItemTemplate>
            <div class="line">
                <div class="card" style="width: 18rem;">
                    <asp:Image ID="Image2" CssClass="card-img-top" runat="server" Height="200px" ImageUrl='<%# Eval("spase_img") %>' />

                    <div class="card-body">
                        <h5 class="card-title"></h5>
                        ชื่อร้าน :
                        <asp:Label ID="Label1" class="card-title h5" runat="server" Text='<%# Eval("spase_name") %>' />

                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="gotostoredetail" CommandArgument='<%# Eval("spase_id") %>' Text="รายละเอียดร้าน" CssClass="btn btn-success"></asp:LinkButton>
                    </div>
                </div>
            </div>

        </ItemTemplate>



        <LayoutTemplate>
            <div class="text-md-center">
                <div id="itemPlaceholderContainer" runat="server">
                    <br />

                    <div class="row">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    
                </div>
                <br />
                <div style="">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>

                </div>
            </div>
        </LayoutTemplate>


    </asp:ListView>
</asp:Content>