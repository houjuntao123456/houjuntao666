	
  			/*屏幕自适应*/
function resetPage() {
    var deviceWidth = document.documentElement.clientWidth,
    scale = deviceWidth / 320;
    document.body.style.zoom = scale;
}
window.onresize = function () {
    resetPage();
}
function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
    }

function isphone()
     	{
     	var mobile=eval(document.getElementById('mobile')).value;
          var partten = /^1[3,5,8]\d{9}$/;
          var fl=false;
          if(partten.test(mobile))
          {
               //alert('是手机号码');
               return true;
          }
          else
          {
               //return false;
               alert('不是手机号码');
          }
     }
    function submit1(){
     var s = getQueryString("s");
     //alert(s);
     //alert(getQueryString('u'));
     		
     var mobile=$('#mobile').val();
     $.ajax({
	 type: 'POST', 
	url:"http://track.mobile1.com.cn/advmessage/adv/addResultJsonP.action?advid=30146&trophyRecordid="+ s +"&mobile="+ mobile+"&expand1="+getQueryString('u'),
	dataType: 'jsonp',
	success: function(data) {
                if(data[0].success == 1) {
                	 //alert(s);
                    alert("恭喜您，领奖成功!");
                    location.href='success.html';
                } else {
                	//alert(s);
                    alert("领奖失败!");
                }
            },
       error:function() {
            alert('抱歉，提交失败');
	}
	});	
     	}