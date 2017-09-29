<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="bootstrapvalidator/css/bootstrapValidator.css">
    <link rel="stylesheet" href="css/site.css">
    <script src="jquery/jquery-2.2.4.min.js" type="text/javascript"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- 表单验证 -->
    <script src="bootstrapvalidator/js/bootstrapValidator.js" type="text/javascript"></script>
    <script src="js/echarts.js" type="text/javascript"></script>
    <title>实训学校管理系统</title>

</head>
<body>
<jsp:include flush="false" page="header.jsp" />
<div id="main" style="width: 100%;height:600px;background-color:red;"></div>
<script type="text/javascript">

    $(function () {
        getData();
    });
 function getData() {//Ajax方式动态获取json格式数据
     alert("xx");
        $.ajax({
            url: "jj",
            type: "post",
            dataType: "json",

            data: {"1":1},
            success: function (data) {
                if (data.length == 0) {
                    alert("无数据！");
                } else {
                  alert("rr")
                    DrawBar(data)
                }
            },
            error: function () {
                alert("加载数据失败,请重试！");
            }
        });
    }
    function DrawBar(data) {
        var xData = [];
        var yData=[];
alert(data.length);
        for (var i = 0; i < data.length; i++) {//将json格式转换为Echarts的数组格式
            xData.push(data[i].coursename);
            yData.push(data[i].totalscore);

        }
        var myChart = echarts.init(document.getElementById('main'));

        var option = {
            tooltip: {
                show: true
            },
            legend: {
                data:['java']
            },
            xAxis : [
                {
                    type : 'category',
                    data :xData
                }
            ],
            yAxis : [
                {
                    type : 'value'
                }
            ],
            series : [

                {
                    "name":"成绩",
                    "type":"bar",
                    "data":yData,
                    itemStyle: {
                        normal: {

                            color: function(params) {
                                // build a color map as your need.
                                var colorList = [
                                    '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B',
                                    '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',
                                    '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'
                                ];
                                return colorList[params.dataIndex]
                            },

                            label: {
                                show: true,
                                position: 'top',
//                             formatter: '{c}'
                                formatter: '{b}\n{c}'
                            }
                        }
                    },
                    barWidth:70,

                }
            ]
        };

        // 为echarts对象加载数据
        myChart.setOption(option);

    }

</script>
</div>
<jsp:include flush="false" page="footer.jsp" />
</body>
</html>