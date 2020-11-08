$.getJSON('./api/student.php?ProID=0&ClassID=0&StuName=0', function(json, textStatus) {
    console.log(json);
    //定义一个字符串变量
    let strobj = '';
    //通过for循环遍历每一个数组数据
    for (item of json.student) {
        strobj += `<tr>
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
    $('tbody').html(strobj);
});