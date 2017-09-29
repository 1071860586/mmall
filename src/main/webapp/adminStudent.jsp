<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" href="css/site.css">
    <script src="jquery/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="page/pagetool.js" type="text/javascript"></script>
    <title>慕课答疑平台</title>
    <script type="text/javascript">
        var pageNum=1;
        var index = -5;
        var totalPage;
        $(function(){
            // 加载数据
            getTotalNum();
            setTimeout(function () {
                getMsg(pageNum)
//            pageNum = setPage(pageNum, totalPage, "getMsg");
            },500);

        });
        function search(){
            index =(pageNum-1)*5;
            $("div").remove(".flag");
            var sname= $("input[name='username']").val();
            alert(sname);
            $.ajax({
                url:"selectStudent",
                type:"post",
                data:{"sname":sname},
                async:"true",
                dataType:"json",
                success:function (data) {
                    if(data!=null){
                        // 遍历数组内容
                        $.each(data, function(index,list) {
                            // 根据HTML模版创建副本
                            var msg = $(".template").clone();
                            // 设置属性
                            msg.removeClass("template");
                            msg.addClass("flag");
                            msg.find(".text-center").text(index+1);
                            msg.find(".title").text(list.id);
                            msg.find(".author").text(list.sname);
                            msg.find(".title").text(list.id);
                            msg.find(".sex").text(list.sex);
                            msg.find(".direction").text(list.direction);
                            msg.find(".clzname").text(list.clzname);
                            msg.find(".schoolname").text(list.schoolname);
                            msg.find(".depatment").text(list.depatment);
                            msg.find(".major").text(list.major);
                            msg.find(".card").text(list.card);
                            msg.find(".phone").text(list.phone);
                            msg.find(".address").text(list.address);
                            msg.find(".parentname").text(list.parentname);
                            msg.find(".parentphone").text(list.parentphone);

                            msg.find(".delbtn").attr("onclick", "delItem("+list.id+")");
                            // 节点追加
                            $(".querycontents").before(msg);
                        });
                    }else {
                        alert("不存在该学生")
                    }
                }
            });
            setPage(pageNum, totalPage, "getMsg");
        }
        function getTotalNum() {

            $.ajax({
                url:"adminNum",
                type:"post",
                async:"true",

                dataType:"json",
                success:function (data) {
                    totalPage = Math.ceil(parseFloat(data)/10);
                }
            });
        }
        //补0操作
        function getzf(num){
            if(parseInt(num) < 10){
                num = '0'+num;
            }
            return num;
        }
        function getMsg(pageNum){
            index =(pageNum-1)*5;
            $("div").remove(".flag");
            $.ajax({
                url : "adminGetlist",
                type : "post",
                async : "true",
                data : {"index":index},
                dataType : "json",
                success : function(data) {
//                  // 遍历数组内容
                    $.each(data, function(index,list) {
                        // 根据HTML模版创建副本
                        var msg = $(".template").clone();
                        // 设置属性
                        msg.removeClass("template");
                        msg.addClass("flag");
                        msg.find(".text-center").text(index+1);
                        msg.find(".title").text(list.id);
                        msg.find(".author").text(list.sname);
                        msg.find(".title").text(list.id);
                        msg.find(".sex").text(list.sex)
                        msg.find(".direction").text(list.direction);
                        msg.find(".clzname").text(list.clzname)
                        msg.find(".schoolname").text(list.schoolname);
                        msg.find(".depatment").text(list.depatment)
                        msg.find(".major").text(list.major);
                        msg.find(".card").text(list.card)
                        msg.find(".phone").text(list.phone);
                        msg.find(".address").text(list.address)
                        msg.find(".parentname").text(list.parentname);
                        msg.find(".parentphone").text(list.parentphone)

                        msg.find(".delbtn").attr("onclick", "delItem("+list.id+")");
                        // 节点追加
                        $(".querycontents").before(msg);
                    });
                }
            });
            setPage(pageNum, totalPage, "getMsg");
        }
        function delItem(listid) {
            $.ajax({
                url : "adminDelete",
                type : "post",
                async : "true",
                data : {"id":listid},
                dataType : "json",
                success : function(data) {
                    if (parseInt(data) ==1){
                        alert("删除成功");
                        window.location.reload();
                    }
                    else {
                        alert("删除失败")
                    }
                }
            });
        }

    </script>
</head>
<body>
<jsp:include flush="false" page="adminhander.jsp" />
<div class="container">
    <div class="row">
        <div class="col-sm-12 msgtitle">
            <h3>
                <span class="title">班级列表</span>
            </h3>
            <div class="replybtn">
                <button type="button" class="btn btn-success" data-toggle="modal"
                        data-target="#search">搜索</button>
            </div>
        </div>
    </div>
    <div class="row msglist template">
        <div class="col-sm-1 col-xs-1 text-center">1</div>
        <div class="col-sm-9 col-xs-8">
            <div class="col-sm-8 col-xs-12 title">id</div>
            <div class="col-sm-2 col-xs-6 author">姓名</div>
            <div class="col-sm-8 col-xs-12 sex">性别</div>
            <div class="col-sm-2 col-xs-6 direction">方向</div>
            <div class="col-sm-8 col-xs-12 clzname">班级</div>
            <div class="col-sm-2 col-xs-6 schoolname">学校</div>
            <div class="col-sm-8 col-xs-12 depatment">系别</div>
            <div class="col-sm-2 col-xs-6 major">专业</div>
            <div class="col-sm-8 col-xs-12 card">卡号</div>
            <div class="col-sm-2 col-xs-6 phone">电话</div>
            <div class="col-sm-8 col-xs-12 adress">地址</div>
            <div class="col-sm-2 col-xs-6 parentname">双亲名字</div>
            <div class="col-sm-2 col-xs-6 parentphone">双亲电话</div>

        </div>
        <div class="col-sm-2 col-xs-3 ">
            <button class="btn btn-danger delbtn">删除</button>
        </div>
    </div>

    <div class="row querycontents" style="text-align: center">
        <jsp:include page="/page/pagetool.jsp"/>
    </div>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="search" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content modalcenter">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="replyLabel">搜索</h4>
            </div>
            <div class="modal-body">
                <form role="form">

                    <div class="form-group">
                        <label for="username">用户名：</label>
                        <input type="text" class="form-control" id="username" name="username" placeholder="请输入查询的名字">
                    </div>
                    <%--<div class="form-group">--%>
                    <%--<label for="theme">主题：</label>--%>
                    <%--<select class="form-control" id="theme">--%>
                    <%--<option>未选择</option>--%>
                    <%--<option>Java</option>--%>
                    <%--<option>SSH</option>--%>
                    <%--<option>MySQL</option>--%>
                    <%--</select>--%>
                    <%--</div>--%>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="search(pageNum)">搜索</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<jsp:include flush="false" page="footer.jsp" />
</body>
</html>