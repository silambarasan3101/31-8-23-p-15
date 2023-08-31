<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="ErrorHandling1.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                    <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                    <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                    <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EmpsDbConnectionString %>" DeleteCommand="DELETE FROM [Emps] WHERE [Id] = @original_Id AND [Fname] = @original_Fname AND [Lname] = @original_Lname AND (([Designation] = @original_Designation) OR ([Designation] IS NULL AND @original_Designation IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL))" InsertCommand="INSERT INTO [Emps] ([Id], [Fname], [Lname], [Designation], [Salary]) VALUES (@Id, @Fname, @Lname, @Designation, @Salary)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:EmpsDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Emps]" UpdateCommand="UPDATE [Emps] SET [Fname] = @Fname, [Lname] = @Lname, [Designation] = @Designation, [Salary] = @Salary WHERE [Id] = @original_Id AND [Fname] = @original_Fname AND [Lname] = @original_Lname AND (([Designation] = @original_Designation) OR ([Designation] IS NULL AND @original_Designation IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_Fname" Type="String" />
                    <asp:Parameter Name="original_Lname" Type="String" />
                    <asp:Parameter Name="original_Designation" Type="String" />
                    <asp:Parameter Name="original_Salary" Type="Double" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="Fname" Type="String" />
                    <asp:Parameter Name="Lname" Type="String" />
                    <asp:Parameter Name="Designation" Type="String" />
                    <asp:Parameter Name="Salary" Type="Double" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Fname" Type="String" />
                    <asp:Parameter Name="Lname" Type="String" />
                    <asp:Parameter Name="Designation" Type="String" />
                    <asp:Parameter Name="Salary" Type="Double" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_Fname" Type="String" />
                    <asp:Parameter Name="original_Lname" Type="String" />
                    <asp:Parameter Name="original_Designation" Type="String" />
                    <asp:Parameter Name="original_Salary" Type="Double" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
