<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" href="css/site.css">
    <script src="jquery/jquery-2.2.4.min.js" type="text/javascript"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="page/pagetool.js" type="text/javascript"></script>
    <title>班级成绩查看</title>
    <script type="text/javascript">
        var pageNum = 1;
        var index = -5;
        var totalPage;
        $(function () {
            // 加载数据
            getTotalNum();
            setTimeout(function () {
                getMsg(pageNum)
//            pageNum = setPage(pageNum, totalPage, "getMsg");
            }, 500);

        });

        function getTotalNum() {

            $.ajax({
                url: "totalnum",
                type: "post",
                async: "true",

                dataType: "json",
                success: function (data) {

                    totalPage = Math.ceil(parseFloat(data) / 5);
                }
            });
        }

        //补0操作
        function getzf(num) {
            if (parseInt(num) < 10) {
                num = '0' + num;
            }
            return num;
        }

        function change(listid) {
            alert(listid);
            $.ajax({
                url: "changePhoto",
                type: "post",
                async: "true",
                data: {"stuid": listid},
                dataType: "json",
                success: function (data) {
                    alert("vv");
                    window.location.replace("change.jsp")

                }
            });
        }

        function getMsg(pageNum) {
            index = (pageNum - 1) * 5;
            $("div").remove(".flag");
            alert("cc");
            $.ajax({
                url: "getScores",
                type: "post",
                async: "true",
                data: {"index": index},
                dataType: "json",
                success: function (data) {
//                  // 遍历数组内容
                    alert("cc");
                    $.each(data, function (index, list) {
                        // 根据HTML模版创建副本
                        var msg = $(".template").clone();
                        // 设置属性

                        msg.removeClass("template");
                        msg.addClass("flag");
                        msg.find(".text-center").text(index + 1);
                        msg.find(".sname").text("姓名  " + list.sname);
                        msg.find(".sex").text("性别  " + list.sex);
                        msg.find(".clzname").text("班级名称  " + list.clzname);
                        msg.find(".schoolname").text("学校名称  " + list.schoolname);
                        msg.find(".coursename").text("考试名称  " + list.scores[0].coursename);
                        msg.find(".proscore").text("项目成绩  " + list.scores[0].proscore);
                        msg.find(".examscore").text("考试成绩  " + list.scores[0].examscore);
                        msg.find(".totalscore").text("最终成绩  " + list.scores[0].totalscore);
                        /*msg.find(".coursename").text("考试名称  " + list.scores[1].coursename);
                        msg.find(".proscore").text("项目成绩  " + list.scores[1].proscore);
                        msg.find(".examscore").text("考试成绩  " + list.scores[1].examscore);
                        msg.find(".totalscore").text("最终成绩  " + list.scores[1].totalscore);*/
                        msg.find(".createtime").text("创建时间  " + list.scores[0].createtime);

                        msg.find(".change").attr("onclick", "change(" + list.scores[0].stuid + ")");


                        // 节点追加
                        $(".querycontents").before(msg);
                    });
                }
            });
            setPage(pageNum, totalPage, "getMsg");
        }

    </script>
</head>
<body>
<jsp:include flush="false" page="header.jsp"/>
<div class="container">
    <div class="row">
        <div class="col-sm-12 msgtitle">
            <h3>
                <span class="title">班级列表</span>
            </h3>
            <div class="replybtn">
                <button type="button" class="btn btn-success" data-toggle="modal"
                        data-target="#search">搜索
                </button>
            </div>
        </div>
    </div>
    <div class="row msglist template">
        <div class="col-sm-1 col-xs-1 text-center">1</div>
        <div class="col-sm-9 col-xs-8">
            <div class="col-sm-8 col-xs-12 sname">姓名</div>

            <div class="col-sm-8 col-xs-12 sex">性别</div>
            <div class="col-sm-8 col-xs-12 clzname">班级</div>
            <div class="col-sm-8 col-xs-12 schoolname">学校</div>
            <div class="col-sm-8 col-xs-12 coursename">课程名</div>
            <div class="col-sm-8 col-xs-12 proscore">项目成绩</div>
            <div class="col-sm-8 col-xs-12 examscore">考试成绩</div>
            <div class="col-sm-8 col-xs-12 totalscore">最终成绩</div>
            <div class="col-sm-8 col-xs-12 createtime">创建时间</div>

        </div>
        <div class="col-sm-2 col-xs-3 ">
            <button class="btn btn-danger change">成长柱状图</button>
        </div>
    </div>

    <div class="row querycontents" style="text-align: center">
        <jsp:include page="/page/pagetool.jsp"/>
    </div>
</div>

<!-- 模态框（Modal） -->

<jsp:include flush="false" page="footer.jsp"/>
</body>
</html>