<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Shop.aspx.cs" Inherits="Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <p>

    </p>
     <div class="p-3 mb-2 bg-secondary text-white" role="alert" style="font-family : 'BoonTook Ultra'; font-size: x-large; font-weight: normal; font-style: inherit; text-transform: capitalize; color: #FFFFFF;">
    รายการสินค้า
   </div> 
    <div class="row">
         <asp:DataList ID="DataList1" runat="server" DataKeyField="spase_id" DataSourceID="SqlDataSource1" RepeatLayout="Flow" CssClass="row" OnItemCommand="Page_Load">
        
        <ItemStyle CssClass="col" />
        <ItemTemplate>   
            <div class="card" style="width: 18rem;">
                  <asp:Image ID="Image2" CssClass="card-img-top" runat="server" Height="200px" ImageUrl='<%# Eval("spase_img") %>'/>
                  <div class="card-body">
                    
                    <h5 <asp:Label ID="Label1" class="card-title" runat="server" Text='<%# Eval("spase_name") %>' /> </h5>

                      <asp:LinkButton ID="LinkButton1" runat="server" CommandName="gotoFooddetail" CommandArgument='<%# Eval("spase_id") %>' text="รายละเอียดร้าน" CssClass="btn btn-success"></asp:LinkButton>
                      
                  </div>
                </div>     
<br />
           
        </ItemTemplate>
  
    </asp:DataList>
    </div>
   


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:coworkConnectionString %>" SelectCommand="SELECT * FROM [spase] WHERE ([category_id] = @category_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="category_id" QueryStringField="category_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        
 

</asp:Content>

