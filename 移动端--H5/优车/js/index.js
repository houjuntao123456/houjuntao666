$(function(){
    track(channel,10360);
    setTimeout(function(){
        window.mySwipe = new Swipe(document.getElementById('swipte'), {
            startSlide: 0,
            speed: 400,
            disableScroll: false,
            stopPropagation: true,
            callback: function(index, elem) {},
            transitionEnd: function(index, elem) {}
        });
    },10);
    
    weekHot();
    function weekHot(){
        setTimeout(function(){
            showCar();
            setTimeout(function(){
               window.mySwipe2 = new Swipe(document.getElementById('swipte2'), {
                  startSlide: 0,
                  speed: 400,
                  continuous: true,
                  disableScroll: false,
                  stopPropagation: true,
                  callback: function(index, elem) {
                    var i = bullets.length;
                    while (i--) {
                        bullets[i].className = ' ';
                    }
                    bullets[index].className = 'on';
                  },
                  transitionEnd: function(index, elem) {}
                });
                var proCount = mySwipe2.getNumSlides();
                var bullets = document.getElementById('mypoint').getElementsByTagName('li'); 
            },500);
        },0);
    } 

    var nav1s = document.getElementById("nav1").getElementsByTagName('a');
    var nav2s = document.getElementById("nav2").getElementsByTagName('a');
    var nav3s = document.getElementById("nav3").getElementsByTagName('a');
    var nav4s = document.getElementById("nav4").getElementsByTagName('a');
    handMove();
    function handMove(){
        /*alert(mySwipe.stopPropagation);*/
        for(var i = 0;i < nav1s.length;i ++){
            nav1s[i].index = i;
            nav1s[i].onclick = function(){
                /*alert(this.index);*/
                track(channel,10361);
                mySwipe.slide(this.index, 0);
                /*setTimeout(function(){
                    mySwipe.slide(this.index, 0);
                },100);*/
            }
        }

        for(var i = 0;i < nav2s.length;i ++){
            nav2s[i].index = i;
            nav2s[i].onclick = function(){
                /*alert(this.index);*/
                track(channel,10362);
                mySwipe.slide(this.index, 0);
                /*setTimeout(function(){
                    mySwipe.slide(this.index, 0);
                },100);*/
            }
        }

        for(var i = 0;i < nav3s.length;i ++){
            nav3s[i].index = i;
            nav3s[i].onclick = function(){
                /*alert(this.index);*/
                track(channel,10363);
                mySwipe.slide(this.index, 0);
                /*setTimeout(function(){
                    mySwipe.slide(this.index, 0);
                },100);*/
            }
        }

        for(var i = 0;i < nav4s.length;i ++){
            nav4s[i].index = i;
            nav4s[i].onclick = function(){
                /*alert(this.index);*/
                track(channel,10364);
                mySwipe.slide(this.index, 0);
                /*setTimeout(function(){
                    mySwipe.slide(this.index, 0);
                },100);*/
            }
        }
    }
    
    


    function swipte3(){
        setTimeout(function(){
            window.mySwipe3 = new Swipe(document.getElementById('swipte3'), {
                startSlide: 0,
                speed: 400,
                disableScroll: false,
                stopPropagation: true,
                callback: function(index, elem) {
                    var i = bullets1.length;
                    while (i--) {
                        bullets1[i].className = ' ';
                    }
                    bullets1[index].className = 'on1';
                },
                transitionEnd: function(index, elem) {}
            });
            var proCount = mySwipe3.getNumSlides();
            var bullets1 = document.getElementById('mypoint1').getElementsByTagName('li');
        },500);
    }

    /*第二页搜索*/
    $(".made").on("click",function(){

        var sele1 = $('#sele1').val(),sele1Name = $('#sele1').find('option:selected').text();
        /*if (!sele1) {
            alert("请选择品牌！");
            return
        }*/

        var sele2 = $('#sele2').val(),sele2Name = $('#sele2').find('option:selected').text();
        /*if (!sele2) {
            alert("请选择车型！");
            return
        }
*/
        var mileage = $('#mileage').val(),mileageName = $('#mileage').find('option:selected').text();
        /*if (!mileage) {
            alert("请选择行驶里程！");
            return
        }*/

        var carage = $('#carage').val(),carageName = $('#carage').find('option:selected').text();
        /*if (!carage) {
            alert("请选择车龄！");
            return
        }*/
        track(channel,10366);
        setTimeout(function(){
            listdata(pi,sele1,sele2,mileage,carage);
        },10);
        
        /*$(".result_list").show();
        $(".fill1").hide();
        $(".result_detail").hide();
        $(".bag_bg").hide();*/
    });

    $(".re_search").on("click",function(){
        weekHot();
        $(".result_list").hide();
        $(".fill1").show();
        $(".result_detail").hide();
        $(".bag_bg").hide();
    });
    
    $(".swipte3 ul li a").live("click",function(){
        $(".result_list").show();
        $(".fill1").hide();
        $(".bag_bg").show();
        $(".result_detail").show();
        $(".bag_bg img").attr("src",bigImg[$(this).attr("data-i")]);
        /*alert($(this).index());*/
    });
    $(".bag_bg").on("click",function(){
        $(".bag_bg").hide();
    });
    $(".close").on("click",function(){

        if(u){
            $(".fill1").hide();
            $(".result_list").show();
        }else{
            $(".result_list").hide();
            $(".fill1").show();
        }

        /*$(".result_list").show();*/
        $(".result_detail").hide();
    });


    
    function showCar() {
        $.ajax({
            type: "GET",
            url: url + "weekcars?jsoncallback=weekcars",
            dataType: "jsonp",
            jsonp: 'callback'
        });
    }

    p_change();

    var pi = 1;
    p_change2();
    
    function listdata(pi,sele1,sele2,mileage,carage) {
        /*alert(pi);*/
        $.ajax({
            type: 'GET',
            url: url + "searchcar?jsoncallback=searchcar",
            dataType: "jsonp",
            jsonp: 'callback',
            data: {
                brandID: sele1,
                seriesID: sele2,
                carAge: carage,
                distance: mileage,
                pageIndex: pi,
                pageSize: 9
            }
        });
    }

    $(".weekHots").live("click",function(){
        CarDetailer($(this).attr("data_hot"));
        swipte3();
    });

    $(".list").live("click",function(){
        CarDetail($(this).attr("list_value"));
        swipte3();
    });

    function CarDetail(carId) {
        $.ajax({
            type: "GET",
            url: url + "cardetail?jsoncallback=cardetail&carID=" + carId,
            dataType: "jsonp",
            jsonp: 'callback'
        });
    }
     
    function CarDetailer(carId) {
        $.ajax({
            type: "GET",
            url: url + "cardetail?jsoncallback=cardetailer&carID=" + carId,
            dataType: "jsonp",
            jsonp: 'callback'
        });
    } 


    $("#more_list").live("click",function(){
        pi++;
        listdata(pi,$('#sele1').val(),$('#sele2').val(),$('#mileage').val(),$('#carage').val());
    });

    $(".telp").live("click",function(){
         track(channel,10365);
         setTimeout(function(){
            $(".telp").attr("href","tel:4000290695");
         },10);
    });

});


var bigImg = [];
var u = true;

var url = "http://www.youche.com/openservice/json/";
function weekcars(data) {
    var html = "";
    var n = 0;
    for (var i = 0; i < data.data.length; i++) {
        html += "<li class='weekHots clearfix' data_hot='"+data.data[i].carID+"'><h2>"+(!data.data[i].carName?"无":data.data[i].carName)
            +"</h2><img src='"+(!data.data[i].imgURL?"无":data.data[i].imgURL)
            +"' alt=''/><p>￥<strong>"
            +(!data.data[i].salePrice?"无":data.data[i].salePrice)
            +"</strong>万</p><span>新车价:<i>"
            +(!data.data[i].newPrice?"无":data.data[i].newPrice)
            +"</i></span><br/><span>为您节省:<var>"
            +(!data.data[i].saveMoney?"无":data.data[i].saveMoney)
            +"</var></span></li>";    
    }
    
    $("#swipte2_main").html(html);
}


function p_change() {
    for (var j = 0; j < car1.length; j++) {
        $('#sele1').append($("<option value='" + car1[j].bid + "'>" + car1[j].name + "</option>"));
    }
    $("#sele2").html("<option value=''>全部</option>");
    c_change();
}
function c_change() {
    
    for (var j = 0; j < car1.length; j++) {
        if (parseInt($("#sele1").val()) == car1[j].bid) {
            for (var i = 0; i < car1[j].seriesList.length; i++) {
                $('#sele2').append($("<option value='" + car1[j].seriesList[i].sid + "'>" + car1[j].seriesList[i].name + "</option>"));
            }
        }
    }
    $("#sele1").on("change",function(){
        $("#sele2").focus();
    });

    $("#sele2").on("change",function(){
        $("#mileage").focus();
    });

    $("#mileage").on("change",function(){
        $("#carage").focus();
    });

    $("#carage").on("change",function(){
       $("#made").focus();
    });
    
}



function p_change2() {
    for (var j = 0; j < car2.length; j++) {
        $('#sele3').append($("<option value='" + car2[j].bid + "'>" + car2[j].name + "</option>"));
    }
    $("#sele4").html("...");
    c_change2();
}
function c_change2() {
    for (var j = 0; j < car2.length; j++) {
        if (parseInt($("#sele3").val()) == car2[j].bid) {
            for (var i = 0; i < car2[j].seriesList.length; i++) {
                $('#sele4').append($("<option value='" + car2[j].seriesList[i].sid + "'>" + car2[j].seriesList[i].name + "</option>"));
            }
        }
    }
    $("#sele5").html("...");
    d_change($("#sele4").val());
}
function d_change(seriesid) {
    if (seriesid != null) {
        $.ajax({
            type: "GET",
            url: url + "carmodel?jsoncallback=carmodel&seriesid=" + seriesid,
            dataType: "jsonp",
            jsonp: 'callback'
        });
    }
}

function carmodel(data) {
    for (var k = 0; k < data.length; k++) {
        $("#sele5").append($("<option value='" + data[k].mid + "'>" + data[k].name + "</option>"));
    }
}

function searchcar(data) {
    $(".data_list").html("<a id='more_list' class='more_list' href='javascript:'>加载更多</a>");
    var htmlMore ="";
    (data.carList.length >= 9)?$("#more_list").show():$("#more_list").hide();
    if (data.carList.length > 0) {
        for (var k = 0; k < data.carList.length; k++) {
            htmlMore += "<div class='list' list_value='"+(!data.carList[k].carID?"无":data.carList[k].carID)
            +"'><h2>"+(!data.carList[k].carName?"无":data.carList[k].carName)
            +"</h2><img src='"+(!data.carList[k].imgURL?"无":data.carList[k].imgURL)
            +"'/><h3>￥<strong>"+(!data.carList[k].slaePrice?"无":data.carList[k].slaePrice)
            +"</strong>万</h3><dl><dd><span>里程</span><br/><em><i>"+(!data.carList[k].distance?"无":data.carList[k].distance)
            +"</i>万公里</em></dd><dd><span>排放标准</span><br/><em><i>"+(!data.carList[k].starndard?"无":data.carList[k].starndard)
            +"</i></em></dd><dd><span>变速箱</span><br/><em><i>"+(!data.carList[k].gearbox?"无":data.carList[k].gearbox)
            +"</i></em></dd></dl></div>";
        }
        /*$("#data_list").html(htmlMore);$("<b>你好吗？</b>").insertBefore("p")*/
        $(htmlMore).insertBefore($("#more_list"));
        $(".result_list").show();
        $(".fill1").hide();
        $(".result_detail").hide();
        $(".bag_bg").hide();
    }else{
        /*alert("无此种车源，请改变搜索条件！");*/
        $("#more_list").hide();
        return
    }
}

function cardetail(data) {
    if(! data.data.carName){
        alert("此车无详细信息，请重新搜索吧！");
        return;
    }else{


        $(".title h2").html((!data.data.carName?"无":data.data.carName));
        
        $(".title h3 strong").html(!data.data.slaePrice?" ":data.data.slaePrice);

        var imgList = $(".swipte3_main img");
        //alert(data.data.images.length);
        for(var i = 0;i < data.data.images.length;i ++){
            imgList.eq(i).attr("src",data.data.images[i].small);
            /*imgList[i].src = data.data.images[i].small;*/
            bigImg[i] = data.data.images[i].big;
            /*console.log(bigImg[i]);*/
        }
        /*for(var i = 0;i < data.data.images.length;i ++){
            bigImg[i] = data.data.images[i].big;
        }*/
        
        /*var html = "";
        html = "<li><a class='img' href='javascript:;'><img src='"+data.data.images[0].small
        +"'/></a><a class='img' href='javascript:;'><img src='"+data.data.images[1].small
        +"'/></a><a class='img' href='javascript:;'><img src='"+data.data.images[2].small
        +"'/></a></li><li><a class='img' href='javascript:;'><img src='"+data.data.images[3].small
        +"'/></a><a class='img' href='javascript:;'><img src='"+data.data.images[4].small
        +"'/></a><a class='img' href='javascript:;'><img src='"+data.data.images[5].small
        +"'/></a></li>";

        $(".swipte3_main").html(html);*/

        $(".title_nav .t_var1").html(!data.data.vinCode?"无":data.data.vinCode);
        $(".title_nav .t_var2").html(!data.data.licencePlate?"无":data.data.licencePlate);
        $(".title_nav .t_var3").html(!data.data.carID?"无":data.data.carID);
        
        $(".result_content .strong1").html(!data.data.brand?"无":data.data.brand);
        $(".result_content .strong2").html(!data.data.madeIn?"无":data.data.madeIn);
        $(".result_content .strong3").html(!data.data.series?"无":data.data.series);
        $(".result_content .strong4").html(!data.data.model?"无":data.data.model);
        $(".result_content .strong5").html(!data.data.displacement?"无":data.data.displacement);
        $(".result_content .strong6").html(!data.data.gearbox?"无":data.data.gearbox);
        $(".result_content .strong7").html(!data.data.distance?"无":data.data.distance+"万公里");
        $(".result_content .strong8").html(!data.data.registrationTime?"无":data.data.registrationTime);
        $(".result_content .strong9").html(!data.data.carAge?"无":data.data.carAge);
        $(".result_content .strong10").html(!data.data.location?"无":data.data.location);
        $(".result_content .strong11").html(!data.data.standard?"无":data.data.standard);
        $(".result_content .strong12").html(!data.data.condition?"无":data.data.condition);
        
        $(".result_list").hide();
        $(".fill1").hide();
        $(".bag_bg").hide();
        $(".result_detail").css("z-index","8").show();
        u = true;
    }
}

function cardetailer(data) {
    if(! data.data.carName){
        alert("此车无详细信息，请重新搜索吧！");
        return;
    }else{


        $(".title h2").html((!data.data.carName?"无":data.data.carName));
        
        $(".title h3 strong").html(!data.data.slaePrice?"无":data.data.slaePrice);

        var imgList = $(".swipte3_main img");

        for(var i = 0;i < data.data.images.length;i ++){
            imgList.eq(i).attr("src",data.data.images[i].small);

            bigImg[i] = data.data.images[i].big;
        }

        $(".title_nav .t_var1").html(!data.data.vinCode?"无":data.data.vinCode);
        $(".title_nav .t_var2").html(!data.data.licencePlate?"无":data.data.licencePlate);
        $(".title_nav .t_var3").html(!data.data.carID?"无":data.data.carID);
        
        $(".result_content .strong1").html(!data.data.brand?"无":data.data.brand);
        $(".result_content .strong2").html(!data.data.madeIn?"无":data.data.madeIn);
        $(".result_content .strong3").html(!data.data.series?"无":data.data.series);
        $(".result_content .strong4").html(!data.data.model?"无":data.data.model);
        $(".result_content .strong5").html(!data.data.displacement?"无":data.data.displacement);
        $(".result_content .strong6").html(!data.data.gearbox?"无":data.data.gearbox);
        $(".result_content .strong7").html(!data.data.distance?"无":data.data.distance+"万公里");
        $(".result_content .strong8").html(!data.data.registrationTime?"无":data.data.registrationTime);
        $(".result_content .strong9").html(!data.data.carAge?"无":data.data.carAge);
        $(".result_content .strong10").html(!data.data.location?"无":data.data.location);
        $(".result_content .strong11").html(!data.data.standard?"无":data.data.standard);
        $(".result_content .strong12").html(!data.data.condition?"无":data.data.condition);
        
        $(".result_list").hide();
        $(".fill1").show();
        $(".bag_bg").hide();
        $(".result_detail").css("z-index","8").show();
        u = false;
    }
}

function checkInfo(){
    track(channel,10367);
    var sele3 = $('#sele3').val(),sele3Name = $('#sele3').find('option:selected').text();  ;    
    if (!sele3) {
        alert("请选择品牌！");
        return
    }

    var sele4 = $('#sele4').val(),sele4Name = $('#sele4').find('option:selected').text();  ;    
    if (!sele4) {
        alert("请选择车系！");
        return
    }

    var sele5 = $('#sele5').val(),sele5Name = $('#sele5').find('option:selected').text();  ;    
    if (!sele5) {
        alert("请选择车款！");
        return
    }

    var carAge = $('#car_ages').val(),carAgeName = $('#car_ages').find('option:selected').text();  ;    
    if (!carAge) {
        alert("请选择车龄！");
        return
    }

    var budget = $('#budget').val(),budgetName = $('#budget').find('option:selected').text();  ;    
    if (!budget) {
        alert("请选择预算！");
        return
    }

    var name = $.trim($("#name").val()), reg_ch = /[^\u4e00-\u9fa5]/,reg_en = /^[a-zA-Z]+$/;
    if(!name) {
        alert("请输入您的姓名！");
        return
    }else if (reg_ch.test(name)&&!reg_en.test(name)) {
        alert("请输入中文姓名或英文姓名！");
        return
    }

    var sex = $('input[name="sex"]:checked').val();
    if(!sex){
        alert("请选择性别!");
        return;
    }

    var tel = $.trim($("#mobile").val()), reg = /^(13[0-9]|14[0-9]|15[0-9]|18[0-9])\d{8}$$/;
    if(!tel || !reg.test(tel)) {
        alert("请输入正确的手机号码..."); 
        return
    }
 
    var url = 'http://ama.adwo.com/advmessage/adv/addResultJsonP.action?advid=30136';
    $.ajax({
        url: url,
        cache: false,
        dataType: 'jsonp',
        jsonpCallback: "eventcallback",
        data: {
            mobile: tel,
            realname: name,
            sex: sex,
            expand1: sele3,
            expand2: sele4,
            expand3: sele5,
            expand4: carAge,
            expand5: budget,
            description: carAgeName + "_" + sele4Name + "_" + sele5Name + "_" + carAgeName + "_" + budgetName
        },
        success: setDealers
    });
}
function setDealers(data) {
    if(data[0].success == 1){
        alert("定制成功！");
    }
}

/*function check(){
    var sele1 = $('#sele1').val(),sele1Name = $('#sele1').find('option:selected').text();  ;    
    if (!sele1) {
        alert("请选择品牌！");
        return
    }

    var sele2 = $('#sele2').val(),sele2Name = $('#sele2').find('option:selected').text();  ;    
    if (!sele2) {
        alert("请选择车型！");
        return
    }

    var mileage = $('#mileage').val(),mileageName = $('#mileage').find('option:selected').text();  ;    
    if (!mileage) {
        alert("请选择行驶里程！");
        return
    }

    var carage = $('#carage').val(),carageName = $('#carage').find('option:selected').text();  ;    
    if (!carage) {
        alert("请选择车龄！");
        return
    }

    listdata(pi);
    $(".result_list").show();
    $(".fill1").hide();
    $(".result_detail").hide();
    $(".bag_bg").hide();
}*/