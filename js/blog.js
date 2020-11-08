$(()=>{
    //博文分类
    findclass();
    //全部博文
    findallblog();
    
});

//加载博文分类
function findclass(){
    $.getJSON('./api/article_class.php?id='+1, function(json, textStatus) {
        console.log(json);
        let strobj = `<div class="alert alert-info" style="margin-bottom: 0px;">博文分类</div>
                        <li id="all" class="list-group-item active">
                            <span class="badge" id="allcount"></span>全部
                        </li>`;
        let countnum=0;
        for (item of json.classes) {
            console.log(item);
            countnum +=parseInt(item.count);
            strobj += `<li class="list-group-item" id="${item.class}">
                            <span class="badge">${item.count}</span>${item.class}
                        </li>`;
        }
        console.log(countnum);
        $('#blogclass').html(strobj);
        $('#allcount').html(countnum);
        $('#all').click(()=>{
            findclass();
            findallblog();
        });
        //添加事件
        for (item of json.classes) {
            let thistag=$(`#${item.class}`);
            thistag.click(()=>{
                console.log(thistag.attr("id"));
                findallblog(thistag.attr("id"));
                $("#blogclass>li").removeClass("active");
                thistag.addClass("active");
            });
        }
    });
}

//获取全部博文标题
function findallblog(where=''){
    console.log("get article_mgs.php --------------------"+where);
    $.getJSON('./api/article_mgs.php?class='+where, function(json, textStatus) {
        let strobj = '<div class="alert alert-info" style="margin-bottom: 0px;">博文列表</div>';
        for(let i=0;i<json[0].length;i++){
            let item=json[0][i];
            console.log(item);
            strobj += `<li class="list-group-item">
                <a href="blogmgs.php?classname=${item['class']}&name=${item['firstname']}">${item['firstname']}</a>
            </li>`;
        }
        $("#bloglist").html(strobj);
        console.log(strobj);
    });
}