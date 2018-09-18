<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userdetails3.aspx.cs" Inherits="userdetails3" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <link href="CSS/CustomStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnableScriptGlobalization="true" />
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <div class="col-md-12  mrg-t-20">
                    <div class="col-md-1"></div>
                    <div class="col-md-4 p_l_r_n">
                        <asp:Button runat="server" CssClass="btn btn-block btn-warning btn-lg " Enabled="false" Style="border-radius: 0px;" Text="My Information"></asp:Button>
                    </div>
                    <div class="col-md-3 p_l_r_n">
                        <asp:Button runat="server" CssClass="btn btn-block btn-warning btn-lg" Enabled="false" Style="border-radius: 0px;" Text="Department Information"></asp:Button>
                    </div>
                    <div class="col-md-3 p_l_r_n">
                        <asp:Button runat="server" CssClass="btn btn-block btn-success btn-lg" Style="border-radius: 0px;" Text="Finalize Information"></asp:Button>
                    </div>
                    <div class="col-md-1"></div>
                </div>

                <div class="col-md-12">
                    <div class="col-md-1"></div>
                    <div class="col-md-10 mrg-t-20">
                        <div class="col-md-12 mrg-t-20">
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">First Name</span>
                                <asp:TextBox runat="server" ID="txtName" Enabled="false" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Middle Name</span>
                                <asp:TextBox runat="server" ID="txtMiddleName" Enabled="false" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Last Name</span>
                                <asp:TextBox runat="server" ID="txtLastName" Enabled="false" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-12 mrg-t-20">
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Date Of Birth</span>
                                <asp:TextBox runat="server" ID="txtUserDOB" Enabled="false" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Age</span>
                                <asp:TextBox runat="server" ID="txtAge" Enabled="false" CssClass="form-control"></asp:TextBox>
                            </div>

                        </div>
                        <div class="col-md-12 mrg-t-20">
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Department</span>
                                <asp:TextBox runat="server" ID="txtDepartment" Enabled="false" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Date Of Joining</span>
                                <asp:TextBox runat="server" ID="txtDOJ" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>

                        </div>

                        <div class="col-md-12 mrg-t-20">
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Gross Salary</span>
                                <asp:TextBox runat="server" ID="txtGrossSalary" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Tax</span>
                                <asp:TextBox runat="server" ID="txtTax" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Net Name</span>
                                <asp:TextBox runat="server" ID="txtNetSalary" Enabled="false" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-12 mrg-t-20">

                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Spouse Name</span>
                                <asp:TextBox runat="server" ID="txtSpouseName" Enabled="false" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Date Of Birth</span>
                                <asp:TextBox runat="server" ID="txtSpouseDOB" Enabled="false" CssClass="form-control"></asp:TextBox>

                            </div>
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Age</span>
                                <asp:TextBox runat="server" ID="txtSpouseAge" Enabled="false" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-12 mrg-t-20">
                            <div class="table-responsive">
                                <asp:GridView ID="GVSpouseChild" runat="server" EmptyDataText="No Records Found" OnRowDataBound="GVSpouseChild_RowDataBound" AutoGenerateColumns="False" CssClass="table table-condensed table-bordered table-blue">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Sr No">
                                            <ItemTemplate>
                                                <%# Container.DataItemIndex + 1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Child">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblgvChild" Text='<%#Eval("Type") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Child Name">
                                            <ItemTemplate>
                                                <asp:Literal runat="server" ID="litgvChildName" Text='<%#Eval("ChildName") %>'></asp:Literal>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Child DOB">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblgvChildDOB" Text='<%#Eval("ChildDOB") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Relation">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblgvRelation" Text='<%#Eval("Relation") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                        <div class="col-md-12 mrg-t-20">
                            <div class="table-responsive">
                                <asp:GridView ID="GVSpouseParent" runat="server" EmptyDataText="No Records Found" OnRowDataBound="GVSpouseParent_RowDataBound" AutoGenerateColumns="False" CssClass="table table-condensed table-bordered table-blue">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Sr No">
                                            <ItemTemplate>
                                                <%# Container.DataItemIndex + 1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Type Of Parent">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblgvTypeOfParent" Text='<%#Eval("TypeOfParent") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name">
                                            <ItemTemplate>
                                                <asp:Literal runat="server" ID="litgvChildName" Text='<%#Eval("ParentName") %>'></asp:Literal>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="DOB">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblgvParentDOB" Text='<%#Eval("ParentDOB") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Age">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblgvParentAge" Text='<%#Eval("ParentAge") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                </div>

                <div class="col-md-12 mrg-t-20 ">
                    <div class="col-md-9">
                    </div>
                    <div class="col-md-3">
                        <br />
                        <br />
                        <br />
                        <asp:Button runat="server" ID="btnSave" CssClass="btn btn-success btn-block" OnClientClick="SavePersonRecord();"  Text="Confirm" />
                        <br />
                        <br />
                        <br />
                    </div>
                </div>

            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
     <script type="text/javascript">

        function SavePersonRecord() {
            alert("Thank you");
            window.location.href = "userdetails.aspx";
        }
    </script>
</body>
</html>
