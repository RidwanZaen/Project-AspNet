<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailProduct.aspx.cs" Inherits="WebsiteCth.DetailProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="b0">
            <asp:Button ID="Button1" runat="server" Text="Logout"  OnClick="Button1_Click"/>
        </div>
        <div id="b1">
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell> <asp:Button ID="Button2" runat="server" Text="Button" /></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    <div id="b2">
       <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="699px" DataKeyNames="ProductID"
 OnSelectedIndexChanged="grid1_SelectedIndexChanged">  
     <AlternatingRowStyle BackColor="White" />  
     <columns>  
         <asp:TemplateField HeaderText="NIK">  
             <ItemTemplate>  
                 <asp:Label ID="lblNIK" runat="server" Text='<%#Bind("NIK") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Nama">  
             <ItemTemplate>  
                 <asp:Label ID="lblNama" runat="server" Text='<%#Bind("Nama") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="TempatLahir">  
             <ItemTemplate>  
                 <asp:Label ID="lblTempatLahir" runat="server" Text='<%#Bind("TempatLahir") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="TanggalLahir">  
             <ItemTemplate>  
                 <asp:Label ID="lblTanggalLahir" runat="server" Text='<%#Bind("TanggalLahir") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="JenisKelamin">  
             <ItemTemplate>  
                 <asp:Label ID="lblJenisKelamin" runat="server" Text='<%#Bind("JenisKelamin") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
          <asp:TemplateField HeaderText="Alamat">  
             <ItemTemplate>  
                 <asp:Label ID="lblAlamat" runat="server" Text='<%#Bind("Alamat") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField> 
         <asp:TemplateField HeaderText="Pekerjaan">  
             <ItemTemplate>  
                 <asp:Label ID="lblPekerjaan" runat="server" Text='<%#Bind("Pekerjaan") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>       
         <asp:TemplateField HeaderText="Kewarganegaraan">  
             <ItemTemplate>  
                 <asp:Label ID="lblKewarganegaraan" runat="server" Text='<%#Bind("Kewarganegaraan") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>
     </columns>  
     <EditRowStyle BackColor="#2461BF" />  
     <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />  
     <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />  
     <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />  
     <RowStyle BackColor="#EFF3FB" />  
     <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />  
     <SortedAscendingCellStyle BackColor="#F5F7FB" />  
     <SortedAscendingHeaderStyle BackColor="#6D95E1" />  
     <SortedDescendingCellStyle BackColor="#E9EBEF" />  
     <SortedDescendingHeaderStyle BackColor="#4870BE" />  
 </asp:GridView>  
    </div>
         <div id="b3">
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="699px" DataKeyNames="ProductID"
 >  
     <AlternatingRowStyle BackColor="White" />  
     <columns>  
         <asp:TemplateField HeaderText="NIK">  
             <ItemTemplate>  
                 <asp:Label ID="lblNIK" runat="server" Text='<%#Bind("NIK") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Nama">  
             <ItemTemplate>  
                 <asp:Label ID="lblNama" runat="server" Text='<%#Bind("Nama") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="TanggalLahir">  
             <ItemTemplate>  
                 <asp:Label ID="lblTanggalLahir" runat="server" Text='<%#Bind("TempatLahir") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="JenisKelamin">  
             <ItemTemplate>  
                 <asp:Label ID="lblJenisKelamin" runat="server" Text='<%#Bind("TanggalLahir") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Alamat">  
             <ItemTemplate>  
                 <asp:Label ID="lblAlamat" runat="server" Text='<%#Bind("Alamat") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
          <asp:TemplateField HeaderText="Pekerjaan">  
             <ItemTemplate>  
                 <asp:Label ID="lblPekerjaan" runat="server" Text='<%#Bind("Pekerjaan") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Kewarganegaraan">  
             <ItemTemplate>  
                 <asp:Label ID="lblKewarganegaraan" runat="server" Text='<%#Bind("Kewarganegaraan") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField> 
        <asp:CommandField ButtonType="Link" ShowCancelButton="true" ItemStyle-Width="150"/>
     </columns>  
     <EditRowStyle BackColor="#2461BF" />  
     <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />  
     <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />  
     <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />  
     <RowStyle BackColor="#EFF3FB" />  
     <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />  
     <SortedAscendingCellStyle BackColor="#F5F7FB" />  
     <SortedAscendingHeaderStyle BackColor="#6D95E1" />  
     <SortedDescendingCellStyle BackColor="#E9EBEF" />  
     <SortedDescendingHeaderStyle BackColor="#4870BE" />  
 </asp:GridView>  
    </div>
    </form>
</body>
</html>
