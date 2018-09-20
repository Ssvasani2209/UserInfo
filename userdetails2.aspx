<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userdetails2.aspx.cs" Inherits="userdetails2" %>

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
                        <asp:Button runat="server" CssClass="btn btn-block btn-warning btn-lg " Enabled="false" Style="border-radius: 0px;" Text="Personal Information"></asp:Button>
                    </div>
                    <div class="col-md-3 p_l_r_n">
                        <asp:Button runat="server" CssClass="btn btn-block btn-success btn-lg" Style="border-radius: 0px;" Text="Family Information"></asp:Button>
                    </div>
                    <div class="col-md-3 p_l_r_n">
                        <asp:Button runat="server" CssClass="btn btn-block btn-warning btn-lg" Enabled="false" Style="border-radius: 0px;" Text="Summary"></asp:Button>
                    </div>
                    <div class="col-md-1"></div>
                </div>
                <div class="col-md-12">

                    <div class="col-md-1"></div>

                    <div class="col-md-10 mrg-t-20">
                        <div class="col-md-12 mrg-t-20">

                            <div class="col-md-4">
                                <%--<span class="text-danger">* </span><span class="text-info">Spouse Name</span>--%>
                                <asp:TextBox runat="server" ID="txtSpouseName" CssClass="form-control" placeholder="Spouse Name"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <%--<span class="text-danger">* </span><span class="text-info">Date Of Birth</span>--%>
                                <asp:TextBox runat="server" ID="txtUserDOB" AutoPostBack="true" OnTextChanged="txtUserDOB_TextChanged" onKeyPress="javascript: return false;" onKeyup="javascript: return false;" onPaste="javascript: return false;" CssClass="form-control" placeholder="Date of Birth"  AutoCompleteType="Disabled"></asp:TextBox>
                                <cc1:CalendarExtender ID="CalendarExtender1_txtUserDOB" runat="server" BehaviorID="CalendarExtender_txtUserDOB" DaysModeTitleFormat="yyyy/MM/dd" Format="yyyy/MM/dd" TargetControlID="txtUserDOB" TodaysDateFormat="yyyy/MM/dd"></cc1:CalendarExtender>
                            </div>
                            <div class="col-md-4">
                                <%--<span class="text-danger">* </span><span class="text-info">Age</span>--%>
                                <asp:TextBox runat="server" ID="txtAge" Enabled="false" CssClass="form-control" placeholder="Age"></asp:TextBox>
                            </div>
                        </div>


                        <div class="col-md-12 mrg-t-20">
                            <br />
                            <br />
                            <br />
                            <div class="col-md-3">
                                <span>Child1 </span>
                                <asp:CheckBox runat="server" ID="chk1" AutoPostBack="true" OnCheckedChanged="chk1_CheckedChanged" />
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Name</span>--%>
                                <asp:TextBox runat="server" ID="txtChildName1" Enabled="false" CssClass="form-control" placeholder="Name"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Date Of Birth</span>--%>
                                <asp:TextBox placeholder="Date of birth" runat="server" ID="txtDOB1" Enabled="false" CssClass="form-control" onKeyPress="javascript: return false;" onKeyup="javascript: return false;" onPaste="javascript: return false;"></asp:TextBox>
                                <cc1:CalendarExtender ID="CalendarExtender1_txtDOB1" runat="server" BehaviorID="CalendarExtender_txtDOB1" DaysModeTitleFormat="yyyy/MM/dd" Format="yyyy/MM/dd" TargetControlID="txtDOB1" TodaysDateFormat="yyyy/MM/dd"></cc1:CalendarExtender>
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Select Relation</span>--%>
                                <asp:DropDownList runat="server" ID="ddlRelation1" Enabled="false" CssClass="form-control">
                                    <asp:ListItem Value="0">Select Relation</asp:ListItem>
                                    <asp:ListItem Value="1">Son</asp:ListItem>
                                    <asp:ListItem Value="2">Daughter</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                        </div>
                        <div class="col-md-12 mrg-t-20">
                            <div class="col-md-3">
                                <span>Child2 </span>
                                <asp:CheckBox runat="server" ID="chk2" AutoPostBack="true" OnCheckedChanged="chk2_CheckedChanged" />
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Name</span>--%>
                                <asp:TextBox runat="server" ID="txtChildName2" Enabled="false" CssClass="form-control" placeholder="Name"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Date Of Birth</span>--%>
                                <asp:TextBox placeholder="Date of birth" runat="server" ID="txtDOB2" Enabled="false" CssClass="form-control" onKeyPress="javascript: return false;" onKeyup="javascript: return false;" onPaste="javascript: return false;"></asp:TextBox>
                                <cc1:CalendarExtender ID="CalendarExtender1_txtDOB2" runat="server" BehaviorID="CalendarExtender_txtDOB2" DaysModeTitleFormat="yyyy/MM/dd" Format="yyyy/MM/dd" TargetControlID="txtDOB2" TodaysDateFormat="yyyy/MM/dd"></cc1:CalendarExtender>
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Select Relation</span>--%>
                                <asp:DropDownList runat="server" ID="ddlRelation2" Enabled="false" CssClass="form-control">
                                    <asp:ListItem Value="0">Select Relation</asp:ListItem>
                                    <asp:ListItem Value="1">Son</asp:ListItem>
                                    <asp:ListItem Value="2">Daughter</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                        </div>
                        <div class="col-md-12 mrg-t-20">
                            <div class="col-md-3">
                                <span>Child3 </span>
                                <asp:CheckBox runat="server" ID="chk3" AutoPostBack="true" OnCheckedChanged="chk3_CheckedChanged" />
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Name</span>--%>
                                <asp:TextBox runat="server" ID="txtChildName3" Enabled="false" CssClass="form-control" placeholder="Name"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Date Of Birth</span>--%>
                                <asp:TextBox placeholder="Date of birth" runat="server" ID="txtDOB3" Enabled="false" CssClass="form-control" onKeyPress="javascript: return false;" onKeyup="javascript: return false;" onPaste="javascript: return false;"></asp:TextBox>
                                <cc1:CalendarExtender ID="CalendarExtender1_txtDOB3" runat="server" BehaviorID="CalendarExtender_txtDOB3" DaysModeTitleFormat="yyyy/MM/dd" Format="yyyy/MM/dd" TargetControlID="txtDOB3" TodaysDateFormat="yyyy/MM/dd"></cc1:CalendarExtender>
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Select Relation</span>--%>
                                <asp:DropDownList runat="server" ID="ddlRelation3" Enabled="false" CssClass="form-control">
                                    <asp:ListItem Value="0">Select Relation</asp:ListItem>
                                    <asp:ListItem Value="1">Son</asp:ListItem>
                                    <asp:ListItem Value="2">Daughter</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                        </div>
                        <div class="col-md-12 mrg-t-20">
                            <div class="col-md-3">
                                <span>Child4 </span>
                                <asp:CheckBox runat="server" ID="chk4" AutoPostBack="true" OnCheckedChanged="chk4_CheckedChanged" />
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Name</span>--%>
                                <asp:TextBox runat="server" ID="txtChildName4" Enabled="false" CssClass="form-control" placeholder="Name"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Date Of Birth</span>--%>
                                <asp:TextBox placeholder="Date of birth" runat="server" ID="txtDOB4" Enabled="false" CssClass="form-control" onKeyPress="javascript: return false;" onKeyup="javascript: return false;" onPaste="javascript: return false;"></asp:TextBox>
                                <cc1:CalendarExtender ID="CalendarExtender1_txtDOB4" runat="server" BehaviorID="CalendarExtender_txtDOB4" DaysModeTitleFormat="yyyy/MM/dd" Format="yyyy/MM/dd" TargetControlID="txtDOB4" TodaysDateFormat="yyyy/MM/dd"></cc1:CalendarExtender>
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Select Relation</span>--%>
                                <asp:DropDownList runat="server" ID="ddlRelation4" Enabled="false" CssClass="form-control">
                                    <asp:ListItem Value="0">Select Relation</asp:ListItem>
                                    <asp:ListItem Value="1">Son</asp:ListItem>
                                    <asp:ListItem Value="2">Daughter</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                        </div>



                        <div class="col-md-12 mrg-t-20">
                            <br />
                            <br />
                            <br />
                            <div class="col-md-3">
                                <span>Father </span>
                                <asp:CheckBox runat="server" ID="chk5" AutoPostBack="true" OnCheckedChanged="chk5_CheckedChanged" />
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Name</span>--%>
                                <asp:TextBox runat="server" ID="TextBox1" Enabled="false" CssClass="form-control" placeholder="Name of Father"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Date Of Birth</span>--%>
                                <asp:TextBox placeholder="Date of birth" runat="server" ID="TextBox2" Enabled="false" AutoPostBack="true" OnTextChanged="TextBox2_TextChanged" CssClass="form-control" onKeyPress="javascript: return false;" onKeyup="javascript: return false;" onPaste="javascript: return false;"></asp:TextBox>
                                <cc1:CalendarExtender ID="CalendarExtender1_TextBox2" runat="server" BehaviorID="CalendarExtender_TextBox2" DaysModeTitleFormat="yyyy/MM/dd" Format="yyyy/MM/dd" TargetControlID="TextBox2" TodaysDateFormat="yyyy/MM/dd"></cc1:CalendarExtender>
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Age</span>--%>
                                <asp:TextBox runat="server" ID="TextBox9" Enabled="false" CssClass="form-control" placeholder="Age"></asp:TextBox>
                            </div>

                        </div>
                        <div class="col-md-12 mrg-t-20">
                            <div class="col-md-3">
                                <span>Mother </span>
                                <asp:CheckBox runat="server" ID="chk6" AutoPostBack="true" OnCheckedChanged="chk6_CheckedChanged" />
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Name</span>--%>
                                <asp:TextBox runat="server" ID="TextBox3" Enabled="false" CssClass="form-control" placeholder="Name of Mother"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Date Of Birth</span>--%>
                                <asp:TextBox placeholder="Date of birth" runat="server" ID="TextBox4" Enabled="false" AutoPostBack="true" OnTextChanged="TextBox4_TextChanged" CssClass="form-control" onKeyPress="javascript: return false;" onKeyup="javascript: return false;" onPaste="javascript: return false;"></asp:TextBox>
                                <cc1:CalendarExtender ID="CalendarExtender1_TextBox4" runat="server" BehaviorID="CalendarExtender_TextBox4" DaysModeTitleFormat="yyyy/MM/dd" Format="yyyy/MM/dd" TargetControlID="TextBox4" TodaysDateFormat="yyyy/MM/dd"></cc1:CalendarExtender>
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Age</span>--%>
                                <asp:TextBox runat="server" ID="TextBox10" Enabled="false" CssClass="form-control" placeholder="Age"></asp:TextBox>
                            </div>

                        </div>
                        <div class="col-md-12 mrg-t-20">
                            <div class="col-md-3">
                                <span>Father-in-law </span>
                                <asp:CheckBox runat="server" ID="chk7" AutoPostBack="true" OnCheckedChanged="chk7_CheckedChanged" />
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Name</span>--%>
                                <asp:TextBox runat="server" ID="TextBox5" Enabled="false" CssClass="form-control" placeholder="Name of Father-in-law"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Date Of Birth</span>--%>
                                <asp:TextBox placeholder="Date of birth" runat="server" ID="TextBox6" Enabled="false" AutoPostBack="true" OnTextChanged="TextBox6_TextChanged" CssClass="form-control" onKeyPress="javascript: return false;" onKeyup="javascript: return false;" onPaste="javascript: return false;"></asp:TextBox>
                                <cc1:CalendarExtender ID="CalendarExtender1_TextBox6" runat="server" BehaviorID="CalendarExtender_TextBox6" DaysModeTitleFormat="yyyy/MM/dd" Format="yyyy/MM/dd" TargetControlID="TextBox6" TodaysDateFormat="yyyy/MM/dd"></cc1:CalendarExtender>
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Age</span>--%>
                                <asp:TextBox runat="server" ID="TextBox11" Enabled="false" CssClass="form-control" placeholder="Age"></asp:TextBox>
                            </div>

                        </div>
                        <div class="col-md-12 mrg-t-20">
                            <div class="col-md-3">
                                <span>Mother-in-law </span>
                                <asp:CheckBox runat="server" ID="chk8" AutoPostBack="true" OnCheckedChanged="chk8_CheckedChanged" />
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Name</span>--%>
                                <asp:TextBox runat="server" ID="TextBox7" Enabled="false" CssClass="form-control" placeholder="Name of Mother-in-law"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Date Of Birth</span>--%>
                                <asp:TextBox placeholder="Date of birth" runat="server" ID="TextBox8" Enabled="false" AutoPostBack="true" OnTextChanged="TextBox8_TextChanged" CssClass="form-control" onKeyPress="javascript: return false;" onKeyup="javascript: return false;" onPaste="javascript: return false;"></asp:TextBox>
                                <cc1:CalendarExtender ID="CalendarExtender1_TextBox8" runat="server" BehaviorID="CalendarExtender_TextBox8" DaysModeTitleFormat="yyyy/MM/dd" Format="yyyy/MM/dd" TargetControlID="TextBox8" TodaysDateFormat="yyyy/MM/dd"></cc1:CalendarExtender>
                            </div>
                            <div class="col-md-3">
                                <%--<span class="text-danger">* </span><span class="text-info">Age</span>--%>
                                <asp:TextBox runat="server" ID="TextBox12" Enabled="false" CssClass="form-control" placeholder="Age"></asp:TextBox>
                            </div>

                        </div> 

                        <div class="col-md-12 mrg-t-20 ">
                            <div class="col-md-9">
                            </div>
                            <div class="col-md-3">
                                <br />
                                <br />
                                <br />
                                <asp:Button runat="server" ID="btnSave" CssClass="btn btn-success btn-block" OnClientClick="if(SavePersonRecord()==false) return false;" ValidationGroup="Save" OnClick="btnSave_Click" Text="Save" />
                                <br />
                                <br />
                                <br />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>

    </form>
    <script type="text/javascript">

        function SavePersonRecord() {
            var Name = $.trim($('#<%=txtSpouseName.ClientID %>').val());
            var DOB = $.trim($('#<%=txtUserDOB.ClientID %>').val());
            var Age = $.trim($('#<%=txtAge.ClientID %>').val());

            var chk1 = document.getElementById("chk1");
            var ChildName1 = $.trim($('#<%=txtChildName1.ClientID %>').val());
            var DOB1 = $.trim($('#<%=txtDOB1.ClientID %>').val());
            var Relation1 = $.trim($('#<%=ddlRelation1.ClientID %>').val());

            var chk2 = document.getElementById("chk2");
            var ChildName2 = $.trim($('#<%=txtChildName2.ClientID %>').val());
            var DOB2 = $.trim($('#<%=txtDOB2.ClientID %>').val());
            var Relation2 = $.trim($('#<%=ddlRelation2.ClientID %>').val());

            var chk3 = document.getElementById("chk3");
            var ChildName3 = $.trim($('#<%=txtChildName3.ClientID %>').val());
            var DOB3 = $.trim($('#<%=txtDOB3.ClientID %>').val());
            var Relation3 = $.trim($('#<%=ddlRelation3.ClientID %>').val());

            var chk4 = document.getElementById("chk4");
            var ChildName4 = $.trim($('#<%=txtChildName4.ClientID %>').val());
            var DOB4 = $.trim($('#<%=txtDOB4.ClientID %>').val());
            var Relation4 = $.trim($('#<%=ddlRelation4.ClientID %>').val());

            if (chk1.checked == true) {
                if (ChildName1 == "") {
                    alert("Enter Name of the 1st Child.");
                    $("#txtChildName1").focus();
                    return false;
                } else if (DOB1 == "") {
                    alert("Select DOB of the 1st Child. ");
                    $("#txtDOB1").focus();
                    return false;
                } else if (Relation1 == "0") {
                    alert("Select the relation of the child.");
                    $("#ddlRelation1").focus();
                    return false;
                }
            }
            if (chk2.checked == true) {
                if (ChildName2 == "") {
                    alert("Enter Name of the 2nd Child.");
                    $("#txtChildName2").focus();
                    return false;
                } else if (DOB2 == "") {
                    alert("Select DOB of the 2nd Child. ");
                    $("#txtDOB2").focus();
                    return false;
                } else if (Relation2 == "0") {
                    alert("Select the relation of the child.");
                    $("#ddlRelation2").focus();
                    return false;
                }
            }
            if (chk3.checked == true) {
                alert("Select only 1 and 2 Child");
                return false;
            }
            if (chk4.checked == true) {
                alert("Select only 1 and 2 Child");
                return false;
            }
            if (chk3.checked == true) {
                if (ChildName3 == "") {
                    alert("Enter Name of the 3rd Child.");
                    $("#txtChildName3").focus();
                    return false;
                } else if (DOB3 == "") {
                    alert("Select DOB of the 3rd Child. ");
                    $("#txtDOB3").focus();
                    return false;
                } else if (Relation3 == "0") {
                    alert("Select the relation of the child.");
                    $("#ddlRelation3").focus();
                    return false;
                }
            }
            if (chk4.checked == true) {
                if (ChildName4 == "") {
                    alert("Enter Child 4 name ");
                    return false;
                } else if (DOB4 == "") {
                    alert("Select DOB of the 4th Child. ");
                    $("#txtDOB4").focus();
                    return false;
                } else if (Relation4 == "0") {
                    alert("Select the relation of the child.");
                    $("#ddlRelation4").focus();
                    return false;
                }
            }


            if (Name == "") {
                alert("Enter Spouse Name");
                return false;
            } else if (DOB == "") {
                alert("Enter Date of Birth");
                return false;
            } else if (Age == "") {
                alert("Age Cannot be blank");
                return false;
            } else if (chk1.checked == false) {
                alert("select atleast 1 child");
                return false;
            }
            else {
                alert("Data submitted successfully.");
            }


        }
    </script>
</body>
</html>
