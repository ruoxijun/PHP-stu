let Pro;//专业id和name对象
let Classse;//班级id和name对象
let ProID="",ClassseID="";//专业和班级的id

$(function(){
    //专业
    $.getJSON('./api/pro.php', function(json, textStatus) {
        Pro=json.pro;
		console.log(json);
		//定义一个字符串变量
		let strobj = '';
		//通过for循环遍历每一个数组数据
		for (item of json.pro) {
            strobj += `<option>${item.name}</option>`;
        }
        $('#pro').append(strobj);
    });

    //专业改变时
    $("#proname").change(function(){
        console.log("专业改变");
        for (item of Pro) {
            //班级选中的id
            if(item.name==$("#proname").val()){
                ProID=item.id;
            }
        }
        getJson(ProID);
    });

    //班级改变时
    $("#txtclassname").change(function(){
        console.log("班级改变");
        for (item of Classse) {
            //班级选中的id
            if(item.name==$("#txtclassname").val()){
                ClassseID=item.id;
            }
        }
    });

    //搜索按钮按下时
    $("#goto").click(()=>{
        let StuName=$("#stuname").val();
        console.log("搜索被按下传入值:ProID="+ProID+",ClassseID="+ClassseID+",StuName="+StuName);

        if (ProID==""||$("#proname").val()=="") {ProID='0'};
        if (ClassseID==""||$("#txtclassname").val()=="") {ClassseID='0'};
        if (StuName=="") {StuName='0'};
        console.log("搜索被按下请求值:ProID="+ProID+",ClassseID="+ClassseID+",StuName="+StuName);

        $.getJSON('./api/student.php?ProID='+ProID+'&ClassID='+ClassseID+'&StuName='+StuName
            , function(json, textStatus) {
            console.log(json);
            //定义一个字符串变量
            let strobj = '';
            //只有一个班级时的班级名
            let classname=json.cname;
            //通过for循环遍历每一个数组数据
            for (item of json.student) {
                let itemname="";
                if(classname==""){//每一个的班级名
                itemname=`<td>${item.Classname}</td>`;
                }
                strobj += `<tr>
                            ${itemname}
                            <td>${item.name}</td>
                            <td>${item.studenId}</td>
                            <td>${getgender(item.ID,'C')}</td>
                            <td>${getbirthday(item.ID,'C')}</td>
                            <td>${getage(item.ID)}</td>
                            <td>${item.ID}</td>
                            <td>
                                <button type="button" class="btn btn-primary btn-sm">选项</button>
                                <button type="button" class="btn btn-danger btn-sm" itemid="${item.studenId}">删除</button>
                            </td>
                        </tr>`
            }
            if(classname==""){//表格班级标题栏
                //班级栏的存在
                if($('thead>tr>th:first').text()!=="班级"){
                    $('thead>tr').prepend(`<th>班级</th>`);
                }
            }else{
                let bj=$('thead>tr>th').eq(0);
                console.log(bj.text());
                if(bj.text()=="班级"){bj.remove();}
            }
            console.log($('#classtitle'));
            $('#classtitle').html(classname);
            $('tbody').html(strobj);

            //删除按钮点击事件
            $("[itemid]").click(function(){
                item=$(this).parent().parent();
                StuNo=$(this).parent().prevAll().eq(4).text();

                $.getJSON('./api/del.php?StuNo='+StuNo, function(json, textStatus) {
                    console.log("删除"+json);
                    if (json) {
                        console.log(StuNo+"删除成功");
                        alert("删除成功");
                        console.log(item.remove());
                    }else{
                        alert("删除失败");
                    };
                });

            });
        });
        return false;
    });
});

//获取班级并添加
function getJson(id){
    $.getJSON('./api/classes.php?id='+id, function(json, textStatus) {
        Classse=json.classes;
        ClassseID=json.classes[0].id;
        console.log(json);
        // 定义一个字符串变量
        let strobj = '';
        // 通过for循环遍历每一个数组数据
        for (item of json.classes) {
            strobj += `<option>${item.name}</option>`
        }
        $('#classes').html(strobj);
    });
}