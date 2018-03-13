function displayShow(){
	$('#sharewb').show();
}
function displayHide(){
	$('#sharewb').hide();
}

function getRootPath(){
var strFullPath=window.document.location.href;
var strPath=window.document.location.pathname;
var pos=strFullPath.indexOf(strPath);
var prePath=strFullPath.substring(0,pos);
var postPath=strPath.substring(0,strPath.substr(1).indexOf('/')+1);
return(prePath+postPath);
}
function wb(){
	
		location.href='http://service.weibo.com/share/share.php?appkey=xxxx&url=http://static.adwo.com/ad/201411/ziranzhibao/index.html&title=“双棍夹蛋”等你来挑战！晃动你的手机让筷子夹住鸡蛋即有机会赢取自然之宝的超值大奖哦~！最高奖品为价值239元的复合蛋白质粉，快来挑战吧！&source=自然之宝&sourceUrl=http://static.adwo.com/ad/201411/ziranzhibao/index.html&content=“双棍夹蛋”等你来挑战！晃动你的手机让筷子夹住鸡蛋即有机会赢取自然之宝的超值大奖哦~！最高奖品为价值239元的复合蛋白质粉，快来挑战吧！';
	
}
function txwb(){
	
		location.href='http://share.v.t.qq.com/index.php?c=share&a=index&title=“双棍夹蛋”等你来挑战！晃动你的手机让筷子夹住鸡蛋即有机会赢取自然之宝的超值大奖哦~！最高奖品为价值239元的复合蛋白质粉，快来挑战吧！&url=http://static.adwo.com/ad/201411/ziranzhibao/index.html&&appkey=xx&site=http://static.adwo.com/ad/201411/ziranzhibao/index.html';
	
}
