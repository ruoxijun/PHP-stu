$(()=>{
    //博文分类
    $.getJSON('./api/article_class.php?id='+1, function(json, textStatus) {
        console.log(json);
        // 定义一个字符串变量
        let strobj = '';
        // 通过for循环遍历每一个数组数据
        for (item of json.classes) {
            strobj += `<option>${item.class}</option>`
        }
        $('#class').html(strobj);
    });

    //博文提交
    $("#submitButton").click(()=>{
        let firstname=$("#firstname").val();//标题
        let blog_category=$("#blog-category").val();//类别
        let jj=$("#jj").val();//简介
        let myeditor=ue.body.innerText;//内容
        console.log(firstname);
        console.log(blog_category);
        console.log(jj);
        console.log(myeditor);

        $.getJSON('./api/article_insert.php', 
        {firstname:firstname,blog_category:blog_category,jj:jj,myeditor:myeditor},
        function(json, textStatus) {
            console.log(json);
            if(json){
                alert("博文添加成功");
                window.location='./article.html';
            }else{
                alert("博文添加失败");
            }
        });
        return false;
    });
});
