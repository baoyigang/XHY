<%@ Page Language="C#" AutoEventWireup="true" CodeFile="111WarehouseEditPage111.aspx.cs" Inherits="WebUI_CMD_WarehouseEditPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>仓库</title>
    <link rel="stylesheet" type="text/css" href="~/Css/default.css" />
    <link rel="stylesheet" type="text/css" href="~/Css/icon.css" />
    <script type="text/javascript" src="../../EasyUI/jquery.min.js"></script>
    <script language="javascript" type="text/javascript">

        function RefreshParent(path) {
            alert('仓库删除成功！');
            window.parent.document.getElementById('hdnRemovePath').value = path;
            window.parent.document.getElementById('btnRemoveNode').click();
        }
  
        function UpdateParent() {
            alert('仓库修改成功！');
            //window.parent.document.getElementById('btnUpdateSelected').click();
        }

        function ReloadParent() {
            alert('仓库添加成功！');
           // window.parent.document.getElementById('btnReload').click();
        }
        function openwin() {
            window.open("BatchAssignedProduct.aspx", "", "height=410px, width=600px,top=200px,left=300px, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")
        }
        function CheckBeforeSubmit() {
            var code = document.getElementById('txtWhCode').value;
            var name = document.getElementById('txtWhName').value; //document.getElementById('txtTitle').value.trim();


            if (code == "") {
                alert('仓库编码不能为空！');
                return false;
            }
            if (name == "") {
                alert('仓库名称不能为空！');
                return false;
            }
        }    
    </script>

</head>
<body >
    <form id="form1" runat="server">  
    
       <table width="99%" class="maintable" align="center" cellspacing="0" cellpadding="0" bordercolor="#ffffff" border="1">
            
            <tr style="display:none;">
                <td colspan="4">&nbsp;<asp:TextBox ID="txtWHID" runat="server" CssClass="HiddenControl" ></asp:TextBox>
                    </td>
            </tr>
            <tr><td colspan="4" style="height:30px">仓库</td></tr>
            <tr>
                <td align="center" class="musttitle" style="width:15%; ">
                    仓库编码
                </td>
                <td style="width:35%; ">
                &nbsp;<asp:TextBox ID="txtWhCode" runat="server" CssClass="TextRead" Width="80%" MaxLength="2"></asp:TextBox>
                </td>
                <td align="center" class="musttitle" style="width:15%;">
                    仓库名称
                </td> 
                <td style="width:35%">
                &nbsp;<asp:TextBox ID="txtWhName" runat="server"  CssClass="TextBox" Width="80%" 
                        MaxLength="20"></asp:TextBox>
                </td>
                <td align="center" class="musttitle" style="width:15%; display:none;">
                货架编码 
                <td style="width:35%;display:none">
                &nbsp;<asp:TextBox  runat="server" CssClass="TextRead" Width="80%" MaxLength="2"></asp:TextBox>
                </td>
                </td>
            </tr>
            <tr style="display:none";>
                    <td align="center" class="musttitle" style="width:15%;">
                    库区编码
                    </td> 
                    <td style="width:35%;">
                        &nbsp;<asp:TextBox ID="txtAreaCode" runat="server" CssClass="TextRead" Width="80%"></asp:TextBox>   
                    </td>
                    <td align="center" class="musttitle" style="width:15%;">
                        库区名称
                    </td> 
                    <td style="width:35%;" >
                        &nbsp;<asp:TextBox ID="txtAreaName" runat="server"  CssClass="TextBox" Width="80%" ></asp:TextBox>
                    </td>
            </tr>
            
            <tr style="display:none">
                <td align="center" class="musttitle" style="width:15%; display:none">库区名称</td>
                <td style="width:35%; display:none">
                    &nbsp;<asp:DropDownList ID="ddlAreaCode" runat="server" Width="80%">
                        </asp:DropDownList>
                        
                </td> 

                <td align="center" class="musttitle" style="width:15%;">货架名称</td> 
                <td>&nbsp;<asp:TextBox ID="txtShelfName" runat="server"  CssClass="TextBox" Width="80%" MaxLength="10"></asp:TextBox>
                </td>
                <td align="center" class=" smalltitle" style="width:15%;">货架层数</td> 
                <td>&nbsp;<asp:TextBox ID="txtCellRows" runat="server"  CssClass="TextBox" Width="80%">6</asp:TextBox>
                </td>
            </tr>

            <tr style="display:none">
                <td align="center" class="smalltitle" style="width:15%;">是否启用</td> 
                <td>
                    &nbsp;<asp:DropDownList ID="ddlActive" runat="server" Width="80%">
                        <asp:ListItem Selected="True" Value="1">启用</asp:ListItem>
                        <asp:ListItem Value="0">未启用</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td align="center" class="smalltitle" style="width:15%;">货架列数</td> 
                <td>&nbsp;<asp:TextBox ID="txtCellCols" runat="server"  CssClass="TextBox" Width="80%" >26</asp:TextBox>
                </td>
            </tr>  
            <tr style="display:none">
                <td  align="center" class="musttitle" style="width:15%;">货位编码</td> 
                <td >&nbsp;<asp:TextBox ID="txtCellCode" runat="server"  CssClass="TextRead"  Width="80%" ></asp:TextBox>
                </td>
                <td  align="center" class="musttitle" style="width:15%;">货位名称</td> 
                <td style="width:35%;">
                    &nbsp;<asp:TextBox ID="txtCellName" runat="server"  CssClass="TextRead"  Width="80%"></asp:TextBox>
                </td>
            </tr>
                      
            <tr style="display:none">
                <td align="center" class="musttitle" style="width:15%;">货位层数</td> 
                <td style="width:35%;">&nbsp;<asp:TextBox ID="TextBox1" runat="server"  CssClass="TextRead" Width="80%">1</asp:TextBox>
                </td>
                <td align="center" class="musttitle" style="width:15%;">货位列数</td> 
                <td>&nbsp;<asp:TextBox ID="TextBox2" runat="server"  CssClass="TextRead" Width="80%"></asp:TextBox>
                </td>
            </tr> 
            <tr style="display:none">
                <td align="center" class="musttitle" style="width:15%;">
                    是否锁定</td> 
                <td style="width:35%;">&nbsp;<asp:DropDownList ID="ddlLock" runat="server" Height="16px" 
                        Width="80%" Enabled="False">
                        <asp:ListItem Selected="True" Value="1">锁定</asp:ListItem>
                        <asp:ListItem Value="0">解锁</asp:ListItem>
                    </asp:DropDownList></td>
                <td align="center" class="musttitle" style="width:15%;">
                    是否启用</td> 
                <td style="width:35%;">
                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="80%">
                        <asp:ListItem Selected="True" Value="1">启用</asp:ListItem>
                        <asp:ListItem Value="0">未启用</asp:ListItem>
                    </asp:DropDownList>
                 </td>
            </tr> 
            <tr style="display:none">
               <td align="center" class="musttitle" style="width:15%;">
                   设定单元</td>
               <td colspan="3">
                    &nbsp;<asp:RadioButton ID="rpt1" runat="server" Checked="True" GroupName="Rpt" Text="单个货位" />&nbsp;
                    <asp:RadioButton ID="rpt2" runat="server" GroupName="Rpt" Text="货位所在货架层的所有货位" />&nbsp;  
                    <asp:RadioButton ID="rpt3" runat="server" GroupName="Rpt" Text="货位所在货架列的所有货位" />&nbsp;  
               </td> 
            </tr>

            <tr>
                <td align="center" class="smalltitle" style="width:15%; height:170px">备注</td> 
                <td colspan="3">
                &nbsp;<asp:TextBox ID="txtMemo" runat="server" CssClass="MultilineTextbox" 
                        Width="92%" Rows="10" TextMode="MultiLine" MaxLength="246"  
                        Height="153px"></asp:TextBox>
                </td>
            </tr> 
            <tr>
	        <td align="center" style="height:35px; text-align:center; " colspan="4">
                        <asp:Button ID="btnSave" runat="server" CssClass="ButtonCss" Text="保存"   Height="26px" Width="57px"  OnClick="btnSave_Click" OnClientClick="return CheckBeforeSubmit()" />&nbsp;
                      <asp:Button ID="Button2" runat="server" CssClass="ButtonCss" Text="删除"   Height="26px" Width="57px"  OnClick="btnDelete_Click" OnClientClick="return CheckBeforeSubmit()" />&nbsp; 
            </td>
            </tr> 
        </table>
  
    </form>
</body>
</html>
