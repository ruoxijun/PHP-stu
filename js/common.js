//根据身份证号码求出这个人的出生日期
function getbirthday(id,formart = 'C'){
	//获得数据
	let year = id.substr(6,4);//获得出生年
	let month = id.substr(10,2);//获得出生月
	let day = id.substr(12,2);//获得出生日
	//
	let result = '';
	//
	switch(formart){
		case "C":
		result = year + "年" + month + "月" + day + "日";
		break;
		case "-":
		result = year + "-" + month + "-" + day;
		break;
		case "/":
		result = year + "/" + month + "/" + day;
		break;
	}
	//
	return result;
}
//根据身份证号码获取性别
function getgender(id,formart = 'C'){
	let tag = id.substr(16,1);
	let tag1 = tag%2 ? 1 : 0;
	let genderresult = '';
	//
	switch(formart){
		case "C":
		genderresult = tag1 ? '男' : '女';
		break;
		case "-":
		genderresult = tag1 ? true : false;
		break;
		case "/":
		genderresult = tag1 ? 1 : 0;
		break;
	}
	//返回结果
	return genderresult;
}
//根据身份证号码获取年龄
function getage(id){
	//获得当前时间
	let Now = new Date();
	birthday = getbirthday(id,"-");
	let Birthday = new Date(birthday);
	//
	let tmp = Now - Birthday;
	let age = Math.floor(tmp / 1000 / (24 * 3600) / 365);
	return age;
}