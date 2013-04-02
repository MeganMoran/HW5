<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="edit.aspx.vb" Inherits="gridview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:cs_PlanWebSite %>" 
    SelectCommand="SELECT * FROM [PuppyInfo]" 
        DeleteCommand="DELETE FROM [PuppyInfo] WHERE [puppyID] = @puppyID" 
        InsertCommand="INSERT INTO [PuppyInfo] ([puppyCode], [puppyName], [puppyBreed], [puppyColor], [puppyLocation]) VALUES (@puppyCode, @puppyName, @puppyBreed, @puppyColor, @puppyLocation)" 
        UpdateCommand="UPDATE [PuppyInfo] SET [puppyCode] = @puppyCode, [puppyName] = @puppyName, [puppyBreed] = @puppyBreed, [puppyColor] = @puppyColor, [puppyLocation] = @puppyLocation WHERE [puppyID] = @puppyID">
        <DeleteParameters>
            <asp:Parameter Name="puppyID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="puppyCode" Type="String" />
            <asp:Parameter Name="puppyName" Type="String" />
            <asp:Parameter Name="puppyBreed" Type="String" />
            <asp:Parameter Name="puppyColor" Type="String" />
            <asp:Parameter Name="puppyLocation" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="puppyCode" Type="String" />
            <asp:Parameter Name="puppyName" Type="String" />
            <asp:Parameter Name="puppyBreed" Type="String" />
            <asp:Parameter Name="puppyColor" Type="String" />
            <asp:Parameter Name="puppyLocation" Type="String" />
            <asp:Parameter Name="puppyID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="puppyID" DataSourceID="SqlDataSource1" AllowPaging="True" 
        AllowSorting="True" Width="846px">
    <Columns>
        <asp:BoundField DataField="puppyID" HeaderText="Puppy's Identification Number" InsertVisible="False" 
            ReadOnly="True" SortExpression="puppyID" />
        <asp:BoundField DataField="puppyBreed" HeaderText="Breed" 
            SortExpression="puppyBreed" />
        <asp:HyperLinkField DataNavigateUrlFields="puppyID" 
            DataNavigateUrlFormatString="puppydetails.aspx?puppyID={0}" 
            Text="View Details" />
        <asp:HyperLinkField HeaderImageUrl="~/App_Data/Plans.mdf" />
    </Columns>
</asp:GridView>
</asp:Content>

