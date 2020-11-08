<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>博文内容</title>

    <!-- Bootstrap -->
    <link href="bs/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/index-style.css" />

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="bs/js/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="bs/js/bootstrap.min.js"></script>
    <?php
    $classname = $_GET["classname"];
    $name = $_GET["name"];
    // echo $classname;
    // echo $name;
    $mysqli = new mysqli('localhost', 'root', '991314', 'student');
    $mysqli->set_charset('utf8');
    $sql = "select * from t_article where firstname='{$name}' and class='{$classname}'";
    $result = $mysqli->query($sql);
    $datas = $result->fetch_all();
    $result->free();
    $class = $datas[0][2];
    $mgs = $datas[0][3];
    ?>
</head>

<body>
    <!-- 导航栏 -->
    <nav class="navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img src="images/logo.png" alt="" height="100%" /></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">学院首页
                            <span class="sr-only">(current)</span></a>
                    </li>
                    <li><a href="index.html">学院简介</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">二级学院 <span class="caret"></span></a>
                    </li>
                    <li>
                        <span id="classname"></span><a href="#">学生基本信息</a>
                    </li>
                    <li><a href="article.html">博文系统</a></li>
                    <li><a href="blog.html">博文信息</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- 主体内容 -->
    <!-- <div class="container">
            <h2 class="page-header">
                << <?php echo $name ?> >>
            </h2>
        </div> -->
    <div class="container">
        <div class="col-sm-8">
            <h1 class="blog-title"><?php echo $name ?></h1>
            <div class="blog-info">
                <span>若惜</span> |
                <span>2.8K热度</span> |
                <span>5分钟前</span>
                <label class="label label-info"><?php echo $classname ?></label>
                <label class="label label-warning">博客</label>
            </div>
            <div class="blog-content">
                <blockquote>
                    <p style="font-size: 0.8em;"><?php echo $class ?></p>
                </blockquote>
                <div style="font-size: 1.5em;"><?php echo $mgs ?></div>
            </div>
        </div>
        <div class="col-sm-4">
            <div id="tj" class="side-bar-card side-bar-recommend clearfix">
            </div>
        </div>
    </div>
    <!-- 底部内容 -->
    <div class="foot" style="background-color: grey;">
        <p style="color: saddlebrown;">
            作者：张龙生&nbsp;&nbsp;|&nbsp;&nbsp;班级：软件技术ZK1801<br />
            邮箱：1460662245@qq.com<br />电话：XXXXXXXXXXXX
        </p>
    </div>
</body>
<script>
    // 博文推荐
    $.getJSON('./api/article_mgs.php?class='+"", function(json, textStatus) {
        let strobj = '<div class="alert alert-info" style="margin-bottom: 0px;">博文推荐</div>';
        for(let i=0;i<json[0].length;i++){
            let item=json[0][i];
            console.log(item);
            strobj += `<li class="list-group-item">
                <a href="blogmgs.php?classname=${item['class']}&name=${item['firstname']}">${item['firstname']}</a>
            </li>`;
        }
        $("#tj").html(strobj);
        console.log(strobj);
    });
</script>
</html>