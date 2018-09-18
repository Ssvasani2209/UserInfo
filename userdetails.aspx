<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userdetails.aspx.cs" Inherits="userdetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Latest compiled and minified CSS -->
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
                        <asp:Button runat="server" CssClass="btn btn-block btn-success btn-lg " Style="border-radius: 0px;" Text="My Information"></asp:Button>
                    </div>
                    <div class="col-md-3 p_l_r_n">
                        <asp:Button runat="server" CssClass="btn btn-block btn-warning btn-lg" Enabled="false" Style="border-radius: 0px;" Text="Department Information"></asp:Button>
                    </div>
                    <div class="col-md-3 p_l_r_n">
                        <asp:Button runat="server" CssClass="btn btn-block btn-warning btn-lg" Enabled="false" Style="border-radius: 0px;" Text="Finalize Information"></asp:Button>
                    </div>
                    <div class="col-md-1"></div>
                </div>

                <div class="col-md-12">
                    <div class="col-md-1"></div>
                    <div class="col-md-10 mrg-t-20">
                        <div class="col-md-12 mrg-t-20">
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">First Name</span>
                                <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Middle Name</span>
                                <asp:TextBox runat="server" ID="txtMiddleName" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Last Name</span>
                                <asp:TextBox runat="server" ID="txtLastName" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-12 mrg-t-20">
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Date Of Birth</span>
                                <asp:TextBox runat="server" ID="txtUserDOB" AutoPostBack="true" OnTextChanged="txtUserDOB_TextChanged" CssClass="form-control" onKeyPress="javascript: return false;" onKeyup="javascript: return false;" onPaste="javascript: return false;"></asp:TextBox>
                                <cc1:CalendarExtender ID="CalendarExtender_txtUserDOB" runat="server" BehaviorID="CalendarExtender_txtUserDOB" DaysModeTitleFormat="yyyy/MM/dd" Format="yyyy/MM/dd" TargetControlID="txtUserDOB" TodaysDateFormat="yyyy/MM/dd"></cc1:CalendarExtender>
                            </div>
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Age</span>
                                <asp:TextBox runat="server" ID="txtAge" Enabled="false" CssClass="form-control"></asp:TextBox>
                            </div>

                        </div>
                        <div class="col-md-12 mrg-t-20">
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Select Department</span>
                                <asp:DropDownList runat="server" ID="ddlDepartment" CssClass="form-control"></asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Date Of Joining</span>
                                <asp:TextBox runat="server" ID="txtDOJ" CssClass="form-control" onKeyPress="javascript: return false;" onKeyup="javascript: return false;" onPaste="javascript: return false;"></asp:TextBox>
                                <cc1:CalendarExtender ID="CalendarExtender1_txtDOJ" runat="server" BehaviorID="CalendarExtender_txtDOJ" DaysModeTitleFormat="yyyy/MM/dd" Format="yyyy/MM/dd" TargetControlID="txtDOJ" TodaysDateFormat="yyyy/MM/dd"></cc1:CalendarExtender>
                            </div>

                        </div>

                        <div class="col-md-12 mrg-t-20">
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Gross Salary</span>
                                <asp:TextBox runat="server" ID="txtGrossSalary" CssClass="form-control" onKeyPress = "return validate(event)"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Select Tax</span>
                                <asp:DropDownList runat="server" ID="ddlTax" AutoPostBack="true" OnSelectedIndexChanged="ddlTax_SelectedIndexChanged" CssClass="form-control"></asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <span class="text-danger">* </span><span class="text-info">Net Salary</span>
                                <asp:TextBox runat="server" ID="txtNetSalary" Enabled="false" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-12 mrg-t-20 ">
                            <div class="col-md-9">
                            </div>
                            <div class="col-md-3">
                                <br />
                                <asp:Button runat="server" ID="btnSave" CssClass="btn btn-success btn-block" OnClientClick="if(SavePersonRecord()==false) return false;" OnClick="btnSave_Click" Text="Save & Next" />
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
                var Name = $.trim($('#<%=txtName.ClientID %>').val());
                var middle = $.trim($('#<%=txtMiddleName.ClientID %>').val());
                var LastName = $.trim($('#<%=txtLastName.ClientID %>').val());
                var DOB = $.trim($('#<%=txtUserDOB.ClientID %>').val());
                var Age = $.trim($('#<%=txtAge.ClientID %>').val());
                var Department = $.trim($('#<%=ddlDepartment.ClientID %>').val());
                var DOJ = $.trim($('#<%=txtDOJ.ClientID %>').val());

                var GSalary = $.trim($('#<%=txtGrossSalary.ClientID %>').val());
                var Tax = $.trim($('#<%=ddlTax.ClientID %>').val());
                var NSalary = $.trim($('#<%=txtNetSalary.ClientID %>').val());

                if (Name == "") {
                    alert("Enter First Name"); 
                    $("#txtName").focus();
                    $("#txtName").css("border-bottom", "1px solid red"); 
                    return false;
                } 
                if (middle == "") {
                    alert("Enter Middle Name");
                    $("#txtMiddleName").focus();
                    $("#txtMiddleName").css("border-bottom", "1px solid red"); 
                    return false;
                } if (LastName == "") {
                    alert("Enter Last Name");
                    $("#txtLastName").focus();
                    $("#txtLastName").css("border-bottom", "1px solid red"); 
                    return false;
                } if (DOB == "") {
                    alert("Enter Date of Birth");
                    $("#txtUserDOB").focus();
                    $("#txtUserDOB").css("border-bottom", "1px solid red"); 
                    return false;
                } if (Age == "") {
                    alert("Age Cannot be blank");
                    $("#txtAge").focus();
                    $("#txtAge").css("border-bottom", "1px solid red"); 
                    return false;
                } if (Department == "0") {
                    alert("Salect Department");
                    $("#ddlDepartment").focus();
                    $("#ddlDepartment").css("border-bottom", "1px solid red"); 
                    return false;
                } if (DOJ == "") {
                    alert("Enter Date of Joining");
                    $("#txtDOJ").focus();
                    $("#txtDOJ").css("border-bottom", "1px solid red"); 
                    return false;
                } if (GSalary == "") {
                    alert("Enter Gross Salary");
                    $("#txtGrossSalary").focus();
                    $("#txtGrossSalary").css("border-bottom", "1px solid red"); 
                    return false;
                } if (Tax == "0") {
                    alert("Salect Tax");
                    $("#ddlTax").focus();
                    $("#ddlTax").css("border-bottom", "1px solid red"); 
                    return false;
                } if (NSalary == "") {
                    alert("Net Salary Cannot be blank");
                    $("#txtNetSalary").focus();
                    $("#txtNetSalary").css("border-bottom", "1px solid red"); 
                    return false;
                } else {
                    return true;
                }
            }
      
    </script>
    <script>
        $("#txtName").focusout(function () {
            var Name = $(this).val();
            if (Name != "") {
                $(this).css("border-bottom", "");
            }
            else {
                $(this).css("border-bottom", "1px solid red");
            }
        });
        $("#txtMiddleName").focusout(function () {
            var txtMiddleName = $(this).val();
            if (txtMiddleName != "") {
                $(this).css("border-bottom", "");
            }
            else {
                $(this).css("border-bottom", "1px solid red");
            }
        });
        $("#txtLastName").focusout(function () {
            var LastName = $(this).val();
            if (LastName != "") {
                $(this).css("border-bottom", "");
            }
            else {
                $(this).css("border-bottom", "1px solid red");
            }
        });
        $("#txtUserDOB").focusout(function () {
            var DOB = $(this).val();
            if (DOB != "") {
                $(this).css("border-bottom", "");
            }
            else {
                $(this).css("border-bottom", "1px solid red");
            }
        });
        $("#txtAge").focusout(function () {
            var txtAge = $(this).val();
            if (txtAge != "") {
                $(this).css("border-bottom", "");
            }
            else {
                $(this).css("border-bottom", "1px solid red");
            }
        });
        $("#ddlDepartment").focusout(function () {
            var ddlDepartment = $(this).val();
            if (ddlDepartment != 0) {
                $(this).css("border-bottom", "");
            }
            else {
                $(this).css("border-bottom", "1px solid red");
            }
        });
        $("#txtDOJ").focusout(function () {
            var txtDOJ = $(this).val();
            if (txtDOJ != "") {
                $(this).css("border-bottom", "");
            }
            else {
                $(this).css("border-bottom", "1px solid red");
            }
        });
        $("#txtGrossSalary").focusout(function () {
            var txtGrossSalary = $(this).val();
            if (txtGrossSalary != "") {
                $(this).css("border-bottom", "");
            }
            else {
                $(this).css("border-bottom", "1px solid red");
            }
        });
        $("#ddlTax").focusout(function () {
            var ddlTax = $(this).val();
            if (ddlTax != 0) {
                $(this).css("border-bottom", "");
            }
            else {
                $(this).css("border-bottom", "1px solid red");
            }
        });
        $("#txtNetSalary").focusout(function () {
            var txtNetSalary = $(this).val();
            if (txtNetSalary != "") {
                $(this).css("border-bottom", "");
            }
            else {
                $(this).css("border-bottom", "1px solid red");
            }
        });
    </script>
    <script type="text/javascript">
        //Function to allow only numbers to textbox
        function validate(key) {
            //getting key code of pressed key
            var keycode = (key.which) ? key.which : key.keyCode;
            var txtGrossSalary = document.getElementById('txtGrossSalary');
            //comparing pressed keycodes
            if (!(keycode == 8 || keycode == 46) && (keycode < 48 || keycode > 57)) {
                return false;
            }
            else {
                //Condition to check textbox contains ten numbers or not
                if (txtGrossSalary.value.length < 7) {
                    return true;
                }
                else {
                    return false;
                }
            }
        }
</script>
</body>
</html>
