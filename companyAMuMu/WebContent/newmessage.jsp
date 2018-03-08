<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="img/1/jd100.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>

</head>
<body background=img/1/bookbg.gif leftmargin='0' topmargin='3'
    marginwidth='0' marginheight='0'>
<div align='center'><IMG src=img/1/welcome.jpg></div>
<!--   留言信息显示    开始 -->
<div align='center'>
<div align='center' style='width=750'>
<table width='750' border='0' cellspacing='1' cellpadding='4'
                align='center'>
                <tr>
                    <td height='20' colspan='2' align='right' class='unnamed2'>
                        <marquee onMouseOut=start(); onMouseOver=stop(); scrollamount=3>
                            <b><font color=#000099>欢迎您使用&nbsp;留言本&nbsp;</font> </b>
                        </marquee>
                    </td>
                </tr>

            </table>
<div align='left'>
<table width='%' height='20' border='0' cellpadding='0' cellspacing='0'>
    <tr>
        <td width='11' background='img/1/titlemu_1.gif'></td>
        <td width='*' background='img/1/titlemu_2.gif'>
        <div align='center'><a href='message' class=jdmenu><b>留言</b></a>
        </div>
        </td>
        <td width='12' background='img/1/titlemu_3.gif'></td>

    </tr>
</table>
</div>
</div>
<TABLE width='750' height=0 border=1 align=center cellPadding=0
    cellSpacing=0 class='jd_tab' style='border-collapse:collapse'>
    <TBODY>
        <TR>
            <TD height=25 class=jd_titlemu>
            <div align='center'><strong>新 留 言 </strong></div>
            </TD>
        </TR>
        <TR>
            <TD align=middle valign='top'>
            <form name='form' method='post' action='<%=path %>/newmessage' onSubmit=''>
            <table width='100%' border='0' align='center' cellpadding='1'
                cellspacing='1' class='unnamed1'>

                <tr>
                    <td width='86' align='right'>姓名：</td>
                    <td width='577'><input name='xm' type='text'
                        class='input1' value='' size='20' maxLength=10> <font
                        color='#FF0000'>*</font></td>
                </tr>
                <tr>
                    <td align='right'>标题：</td>
                    <td><input name='bt' type='text' class='input1' value=''
                        size='30' maxlength=50></td>
                </tr>
                <tr>
                    <td align='right' valign='top'>内容：</td>
                    <td><textarea name='nr' cols='80' rows='6' class='input1'></textarea>
                    <br>
                    &nbsp;&nbsp; <input type='submit' name='Submit' value=' 提 交 '>
                    &nbsp; <br>
                    </td>
                </tr>


            </table>
            </form>
            </TD>
        </TR>
    </TBODY>
</TABLE>
</div>
</body>
</html>