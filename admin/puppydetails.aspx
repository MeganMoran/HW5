<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="puppydetails.aspx.vb" Inherits="detailsview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_PlanWebSite %>" 
        DeleteCommand="DELETE FROM [PuppyInfo] WHERE [puppyID] = @puppyID" 
        InsertCommand="INSERT INTO [PuppyInfo] ([puppyCode], [puppyName], [puppyBreed], [puppyColor], [puppyLocation]) VALUES (@puppyCode, @puppyName, @puppyBreed, @puppyColor, @puppyLocation)" 
        SelectCommand="SELECT * FROM [PuppyInfo] WHERE ([puppyID] = @puppyID)" 
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
        <SelectParameters>
            <asp:QueryStringParameter Name="puppyID" QueryStringField="puppyID" 
                Type="Int32" />
        </SelectParameters>
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
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="puppyID" DataSourceID="SqlDataSource2" Height="50px" 
        Width="477px">
        <Fields>
            <asp:BoundField DataField="puppyID" HeaderText="Puppy's ID Number" 
                InsertVisible="False" ReadOnly="True" SortExpression="puppyID" />
            <asp:BoundField DataField="puppyName" HeaderText="Puppy's Name" 
                SortExpression="puppyName" />
            <asp:BoundField DataField="puppyBreed" HeaderText="Breed" 
                SortExpression="puppyBreed" />
            <asp:BoundField DataField="puppyColor" HeaderText="Fur Color" 
                SortExpression="puppyColor" />
            <asp:BoundField DataField="puppyLocation" HeaderText="Location" 
                SortExpression="puppyLocation" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

