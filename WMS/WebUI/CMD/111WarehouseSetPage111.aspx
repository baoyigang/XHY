<%@ Page Language="C#" AutoEventWireup="true" CodeFile="111WarehouseSetPage111.aspx.cs" Inherits="WebUI_CMD_WarehouseSetPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="~/Css/default.css" />
    <link rel="stylesheet" type="text/css" href="~/Css/icon.css" />
    <link rel="stylesheet" type="text/css" href="../../EasyUI/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="../../EasyUI/themes/icon.css" />
    <script type="text/javascript" src="../../EasyUI/jquery.min.js"></script>
    <script type="text/javascript" src="../../EasyUI/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../../EasyUI/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="../../JScript/JsAjax.js" ></script>
    <script type="text/javascript">
        function LoadTree(node, data) {
            $("#whTree li:eq(1)").find("div").toggleClass("tree-node-selected");   //设置第一个节点高亮  
            var n = $("#whTree").tree("getSelected");
            if (n != null) {
                $("#whTree").tree("select", n.target);
            }   //相当于默认点击了一下第一个节点，执行onSelect方法  


        }
        function SelectNote(node){
            var tNodeID = node.id;
            var text = node.text;
            var tNodeIDLen = tNodeID.length;
            $('#cc').layout('panel', 'center').panel('setTitle', "当前选中的节点：" + text);
            if (tNodeIDLen == 2) {
                //仓库
                $("#frmMain_warehouse").attr("src", "WarehouseEditPage.aspx?WAREHOUSE_CODE=" + tNodeID);
                //var bao = document.getElementById("frmMain_warehouse").contentDocument.getElementsByTagName("table")[0];
                //$("tr", bao)[2].style.display = "none";
            }
            else if (tNodeIDLen == 3) {
                //库区
                //$("#frmMain_warehouse").attr("src", "WarehouseAreaEditPage.aspx?CMD_WH_AREA_ID=" + tNodeID);
                var bao = document.getElementById("frmMain_warehouse").contentDocument.getElementsByTagName("table")[0];
                $("tr", bao)[3].style.display = "";
                $("tr", bao)[4].style.display = "none";
                $("tr", bao)[5].style.display = "none";
                var Edit = $("tr", bao)[2];
                $("td", Edit)[0].style.display = "";
                $("td", Edit)[1].style.display = "";
                $("td", Edit)[4].style.display = "none";
                $("td", Edit)[5].style.display = "none";
                $("tr", bao)[6].style.display = "none";
                $("tr", bao)[7].style.display = "none";
                $("tr", bao)[8].style.display = "none";
                $("tr", bao)[9].style.display = "none";
            }
            else if (tNodeIDLen == 6) {
                //货架
                //$("#frmMain_warehouse").attr("src", "WarehouseShelfEditPage.aspx?CMD_WH_SHELF_ID=" + tNodeID);
                var bao = document.getElementById("frmMain_warehouse").contentDocument.getElementsByTagName("table")[0];
                var Edit = $("tr", bao)[2];
                var Shelf = $("tr", bao)[4];
                $("tr", bao)[2].style.display = "";
                $("tr", bao)[3].style.display = "none";
                $("tr", bao)[4].style.display = "";
                $("tr", bao)[5].style.display = "";
                $("tr", bao)[6].style.display = "none";
                $("tr", bao)[7].style.display = "none";
                $("tr", bao)[8].style.display = "none";
                $("tr", bao)[9].style.display = "none";
                $("td", Edit)[0].style.display = "none";
                $("td", Edit)[1].style.display = "none";
                $("td", Edit)[4].style.display = "";
                $("td", Edit)[5].style.display = "";
                $("td", Shelf)[0].style.display = "none";
                $("td", Shelf)[1].style.display = "none";
                $("td", Shelf)[4].style.display = "";
                $("td", Shelf)[5].style.display = "";
            }
            else if (tNodeIDLen >= 9) {
                //货位
                // $("#frmMain_warehouse").attr("src", "WarehouseCellEditPage.aspx?CMD_CELL_ID=" + tNodeID);
                var bao = document.getElementById("frmMain_warehouse").contentDocument.getElementsByTagName("table")[0];
                $("tr", bao)[2].style.display = "none";
                $("tr", bao)[3].style.display = "none";
                $("tr", bao)[4].style.display = "";
                $("tr", bao)[5].style.display = "none";
                $("tr", bao)[6].style.display = "";
                $("tr", bao)[7].style.display = "";
                $("tr", bao)[8].style.display = "";
                $("tr", bao)[9].style.display = "";
                var Shelf = $("tr", bao)[4];
                $("td", Shelf)[0].style.display = "";
                $("td", Shelf)[1].style.display = "";
                $("td", Shelf)[4].style.display = "none";
                $("td", Shelf)[5].style.display = "none";
            }
            else {
               $("#frmMain_warehouse").attr("src", "");
            }
        }
    </script>
</head>
<body id="cc" class="easyui-layout">
    <div data-options="region:'north',split:true" style="height:40px;">
        <table style="width:100%">
            <tr>
                <td align="right">
                    <a href="javascript:void(0)" onclick="Exit()" class="easyui-linkbutton" data-options="iconCls:'icon-no',plain:true">离开</a>
                </td>
            </tr>
        </table>
    </div>   
    <div data-options="region:'west',split:true" style="width:200px;">
        <ul id="whTree" class="easyui-tree" data-options="url:'WareHouseTree.ashx',onLoadSuccess:LoadTree,onSelect:SelectNote"></ul>
    </div>   
    <div id="ShowDiv" data-options="region:'center',title:'当前选中的节点：'" style="padding:2px;">   
         <iframe id="frmMain_warehouse" scrolling="no" frameborder="0" width="100%" height="100%" src=""> </iframe>
    </div>
</body>
</html>



