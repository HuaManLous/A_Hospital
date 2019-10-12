<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>查看-- -2015</title>
    <link rel="stylesheet" type="text/css" href="../Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../Css/style.css" />
    <script type="text/javascript" src="../Js/jquery.js"></script>
    <script type="text/javascript" src="../Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="../Js/bootstrap.js"></script>
    <script type="text/javascript" src="../Js/ckform.js"></script>
    <script type="text/javascript" src="../Js/common.js"></script>
    <script type="text/javascript" src="../Js/ckeditor/ckeditor.js"></script>
 

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
    <script type="text/javascript">
    $(function () {       
		$('#backid').click(function(){
				window.location.href="${pageContext.request.getContextPath() }/Registration/Query";
		 });
    });
    </script>
</head>
<body>
<form action="index.html" method="post" class="definewidth m20">
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">姓名</td>
        <td>${rAccept.name }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">证件类型</td>
        <%-- <td>${rAccept.certificate_type }</td> --%>
        <td>
          <c:choose>
            <c:when test="${rAccept.certificate_type==1 }">
                                       身份证
            </c:when>
             <c:when test="${rAccept.certificate_type==2 }">
                                       军人
            </c:when>
            <c:otherwise>
                                       护照
            </c:otherwise>
          </c:choose>
        </td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">证件号</td>
        <td>${rAccept.ID_num }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">挂号费</td>
        <td>${rAccept.registration_fee }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">社保号</td>
        <td>${rAccept.social_safe_num }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">联系电话</td>
        <td>${rAccept.phone }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">是否自费</td>
        <td>${rAccept.self_paying==1?'是':'否' }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">性别</td>
        <td>${rAccept.sex==1?'男':'女' }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">年龄</td>
        <td>${rAccept.age }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">职业</td>
        <td>${rAccept.career }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">初复诊</td>
        <td>${rAccept.early_appointment }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">所挂科室</td>
        <td>${rAccept.secco_name }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">指定医生</td>
        <td>${rAccept.docName }</td>
    </tr>
	<tr>
        <td width="10%" class="tableleft">备注</td>
        <td>${rAccept.noted }</td>
	</tr>
    <tr>
        <td colspan="2">
			<center>
				<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
			</center>
		</td>
    </tr>
</table>
</form>
                                                                                            
</body>
</html> 