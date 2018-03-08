function quit(){
        var tuichu=confirm("确定退出么？");
        if(tuichu==true){
            location="back.jsp";
        }
    }
     function change1(){
          if(document.getElementById("u1").style.display=="none"){
            document.getElementById("u1").style.display="block";
          }else{
               document.getElementById("u1").style.display="none";
          }
        }
     function change2(){
          if(document.getElementById("u2").style.display=="none"){
            document.getElementById("u2").style.display="block";
          }else{
               document.getElementById("u2").style.display="none";
          }
        }
     function change3(){
          if(document.getElementById("u3").style.display=="none"){
            document.getElementById("u3").style.display="block";
          }else{
               document.getElementById("u3").style.display="none";
          }
        }