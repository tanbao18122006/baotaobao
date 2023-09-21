﻿<%@ Page Title="" Language="C#" MasterPageFile="~/macdinh.Master" AutoEventWireup="true" CodeBehind="themsach.aspx.cs" Inherits="TANGTANBAOFULL.admin.themsach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
					<div>
	<nav id="nav">  
    <ul>  
        <li><a> <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/admin/admin.aspx">Home</asp:HyperLink> </a></li>
		<li><a> <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~register.aspx">Register</asp:HyperLink> </a></li>
		<li><a> <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~login.aspx">Login</asp:HyperLink> </a></li>
    </ul>
</nav>
		</div>	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
	<asp:DetailsView ID="DetailsView1" runat="server" DataKeyNames="MaSach" DataSourceID="SqlDataSource1" Height="50px" Width="162px" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateInsertButton="True" HorizontalAlign="Center">
	<Fields>
		<asp:BoundField DataField="MaSach" HeaderText="MaSach" ReadOnly="True" SortExpression="MaSach" />
		<asp:BoundField DataField="TenSach" HeaderText="TenSach" SortExpression="TenSach" />
		<asp:BoundField DataField="TacGia" HeaderText="TacGia" SortExpression="TacGia" />
		<asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
		<asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
		<asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
		<asp:BoundField DataField="TenFileAnh" HeaderText="TenFileAnh" SortExpression="TenFileAnh" />
		<asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai" />
	</Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SachOnlineConnectionString3 %>" DeleteCommand="DELETE FROM [Sach] WHERE [MaSach] = @original_MaSach AND (([TenSach] = @original_TenSach) OR ([TenSach] IS NULL AND @original_TenSach IS NULL)) AND (([TacGia] = @original_TacGia) OR ([TacGia] IS NULL AND @original_TacGia IS NULL)) AND (([Gia] = @original_Gia) OR ([Gia] IS NULL AND @original_Gia IS NULL)) AND (([SoLuong] = @original_SoLuong) OR ([SoLuong] IS NULL AND @original_SoLuong IS NULL)) AND (([MoTa] = @original_MoTa) OR ([MoTa] IS NULL AND @original_MoTa IS NULL)) AND (([TenFileAnh] = @original_TenFileAnh) OR ([TenFileAnh] IS NULL AND @original_TenFileAnh IS NULL)) AND (([MaLoai] = @original_MaLoai) OR ([MaLoai] IS NULL AND @original_MaLoai IS NULL))" InsertCommand="INSERT INTO [Sach] ([MaSach], [TenSach], [TacGia], [Gia], [SoLuong], [MoTa], [TenFileAnh], [MaLoai]) VALUES (@MaSach, @TenSach, @TacGia, @Gia, @SoLuong, @MoTa, @TenFileAnh, @MaLoai)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:SachOnlineConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Sach] WHERE ([MaSach] = @MaSach)" UpdateCommand="UPDATE [Sach] SET [TenSach] = @TenSach, [TacGia] = @TacGia, [Gia] = @Gia, [SoLuong] = @SoLuong, [MoTa] = @MoTa, [TenFileAnh] = @TenFileAnh, [MaLoai] = @MaLoai WHERE [MaSach] = @original_MaSach AND (([TenSach] = @original_TenSach) OR ([TenSach] IS NULL AND @original_TenSach IS NULL)) AND (([TacGia] = @original_TacGia) OR ([TacGia] IS NULL AND @original_TacGia IS NULL)) AND (([Gia] = @original_Gia) OR ([Gia] IS NULL AND @original_Gia IS NULL)) AND (([SoLuong] = @original_SoLuong) OR ([SoLuong] IS NULL AND @original_SoLuong IS NULL)) AND (([MoTa] = @original_MoTa) OR ([MoTa] IS NULL AND @original_MoTa IS NULL)) AND (([TenFileAnh] = @original_TenFileAnh) OR ([TenFileAnh] IS NULL AND @original_TenFileAnh IS NULL)) AND (([MaLoai] = @original_MaLoai) OR ([MaLoai] IS NULL AND @original_MaLoai IS NULL))">
	<DeleteParameters>
		<asp:Parameter Name="original_MaSach" Type="Int32" />
		<asp:Parameter Name="original_TenSach" Type="String" />
		<asp:Parameter Name="original_TacGia" Type="String" />
		<asp:Parameter Name="original_Gia" Type="String" />
		<asp:Parameter Name="original_SoLuong" Type="Int32" />
		<asp:Parameter Name="original_MoTa" Type="String" />
		<asp:Parameter Name="original_TenFileAnh" Type="String" />
		<asp:Parameter Name="original_MaLoai" Type="Int32" />
	</DeleteParameters>
	<InsertParameters>
		<asp:Parameter Name="MaSach" Type="Int32" />
		<asp:Parameter Name="TenSach" Type="String" />
		<asp:Parameter Name="TacGia" Type="String" />
		<asp:Parameter Name="Gia" Type="String" />
		<asp:Parameter Name="SoLuong" Type="Int32" />
		<asp:Parameter Name="MoTa" Type="String" />
		<asp:Parameter Name="TenFileAnh" Type="String" />
		<asp:Parameter Name="MaLoai" Type="Int32" />
	</InsertParameters>
	<SelectParameters>
		<asp:QueryStringParameter Name="MaSach" QueryStringField="masach" Type="Int32" />
	</SelectParameters>
	<UpdateParameters>
		<asp:Parameter Name="TenSach" Type="String" />
		<asp:Parameter Name="TacGia" Type="String" />
		<asp:Parameter Name="Gia" Type="String" />
		<asp:Parameter Name="SoLuong" Type="Int32" />
		<asp:Parameter Name="MoTa" Type="String" />
		<asp:Parameter Name="TenFileAnh" Type="String" />
		<asp:Parameter Name="MaLoai" Type="Int32" />
		<asp:Parameter Name="original_MaSach" Type="Int32" />
		<asp:Parameter Name="original_TenSach" Type="String" />
		<asp:Parameter Name="original_TacGia" Type="String" />
		<asp:Parameter Name="original_Gia" Type="String" />
		<asp:Parameter Name="original_SoLuong" Type="Int32" />
		<asp:Parameter Name="original_MoTa" Type="String" />
		<asp:Parameter Name="original_TenFileAnh" Type="String" />
		<asp:Parameter Name="original_MaLoai" Type="Int32" />
	</UpdateParameters>
</asp:SqlDataSource>
	
</asp:Content>
