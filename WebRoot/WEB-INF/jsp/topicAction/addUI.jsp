<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
   	<%@ include file="/WEB-INF/jsp/public/commons.jspf" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>发表新主题</title>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/blue/forum.css" />

	<script language="javascript" src="${pageContext.request.contextPath}/fckeditor/fckeditor.js" charset="utf-8"></script>
    <script type="text/javascript">
		$(function(){
			var fck = new FCKeditor("content");
			fck.Width = "99%";
			fck.Height = "100%";
			fck.ToolbarSet = "bbs";
			fck.BasePath = "${pageContext.request.contextPath}/fckeditor/";
			//fck.Config['SkinPath'] = "${pageContext.request.contextPath}/scriipt/fckeditoreditor/skins/office2003/";
			//fck.Config['SkinPath'] = "http://bbs.itcast.cn:80/widgets/fckeditor/editor/skins/office2003/";
			fck.ReplaceTextarea();
		});
    </script>
</head>
<body>

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 发表新主题
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id="MainArea">
<s:form action="topic_add" style="margin: 0; padding: 0;">
	<s:hidden name="forumId"></s:hidden>
	<div id="PageHead"></div>
	<center>
		<div class="ItemBlock_Title1">
			<div width=85% style="float:left">
				<font class="MenuPoint"> &gt; </font>
				<s:a action="forum_list">论坛</s:a>
				<font class="MenuPoint"> &gt; </font>
				<s:a action="forum_show?id=%{#forum.id}">${forum.name }</s:a>
				<font class="MenuPoint"> &gt;&gt; </font>
				发表新主题
			</div>
		</div>
		<div class="ItemBlockBorder">
			<table border="0" cellspacing="1" cellpadding="1" width="100%" id="InputArea">
				<tr>
					<td class="InputAreaBg" height="30"><div class="InputTitle">标题</div></td>
					<td class="InputAreaBg"><div class="InputContent">
						<s:textfield type="text" name="title" class="InputStyle" style="width:100%"/></div>
					</td>
				</tr>
				<tr>
					<!--<td class="InputAreaBg" height="30"><div class="InputTitle">表情</div></td>-->
					<td class="InputAreaBg"><div class="InputContent">
						<table cellpadding="0" border="0" cellspacing="0">
						</table></div>
					</td>
				</tr>
				<tr height="240">
					<td class="InputAreaBg"><div class="InputTitle">内容</div></td>
					<td class="InputAreaBg"><div class="InputContent"><s:textarea name="content"></s:textarea></div></td>
				</tr>
				<tr height="30">
					<td class="InputAreaBg" colspan="2" align="center">
						<input type="image" src="${pageContext.request.contextPath}/style/blue/images/button/submit.PNG" style="margin-right:15px;"/>
						<a href="javascript:history.go(-1);"><img src="${pageContext.request.contextPath}/style/blue/images/button/goBack.png"/></a>
					</td>
				</tr>
			</table>
		</div>
	</center>
</s:form>
</div>

<div class="Description">
	说明：<br />
	
</div>

</body>
</html>
