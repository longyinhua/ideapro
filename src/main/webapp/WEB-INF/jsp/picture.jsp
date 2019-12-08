<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <title></title>
    <style>
        .block {
            margin: 0 auto;
            width: 700px;
            height: 400px;
            position: relative;
            overflow: hidden;
        }

        .block > div:nth-child(1) {
            width: 4900px;
            height: 400px;
            margin-left: 0px;
        }

        .tranAnimate {
            transition: margin-left 0.5s ease-in-out;
        }

        .block > div > img {
            float: left;
            width: 700px;
            height: 400px;
        }

        .dian {
            position: absolute;
            width: 108px;
            height: 15px;
            bottom: 20px;
            left: 296px;
        }

        .dian > div {
            width: 14px;
            height: 14px;
            border-radius: 50%;
            background-color: white;
            float: left;
            margin: 0 2px;
            border: 2px solid black;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
<div class="block">
    <div>
        <img src="<%=request.getContextPath()%>/static/images/1.jpg" alt=""/>
        <img src="<%=request.getContextPath()%>/static/images/2.jpg" alt=""/>
        <img src="<%=request.getContextPath()%>/static/images/3.jpg" alt=""/>
        <img src="<%=request.getContextPath()%>/static/images/4.jpg" alt=""/>
        <img src="<%=request.getContextPath()%>/static/images/5.jpg" alt=""/>
        <img src="<%=request.getContextPath()%>/static/images/6.jpg" alt=""/>
        <img src="<%=request.getContextPath()%>/static/images/1.jpg" alt=""/>


    </div>
    <div class="dian">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>
<button id="btnright">向右</button>
<button id="btnleft">向左</button>
<script>
    var btnright = document.getElementById("btnright");
    var btnleft = document.getElementById("btnleft");
    var bpar = document.getElementsByClassName("block")[0];
    var dian = document.getElementsByClassName("dian")[0].children;
    var bimage = bpar.children[0];
    var count = 0;
    var time;
    dian[0].style.backgroundColor = "black";
    window.onload = showAnimate();
    function showAnimate() {
        time = setInterval(function () {
            Animate();
        }, 1500);
    }
    function Animate() {
        bimage.className = "tranAnimate";
        dian[count].style.backgroundColor = "white";
        count++;
        var index = count >= bimage.children.length - 1 ? 0 : count;
        dian[index].style.backgroundColor = "black";
        bimage.style.marginLeft = (-700 * count) + "px";
        //动画完成状态 0.5s
        setTimeout(function () {
            if (count >= bimage.children.length - 1) {
                count = 0;
                bimage.className = "";
                bimage.style.marginLeft = "0px";
            }
        }, 500);
    }
    for (var i = 0; i < dian.length; i++) {
        dian[i].index = i;
        dian[i].onmouseenter = function () {
            bimage.className = "tranAnimate";
            bimage.style.marginLeft = (-700 * this.index) + "px";
            dian[count].style.backgroundColor = "white";
            this.style.backgroundColor = "black";
            count = this.index;
        }
    }
    bpar.onmouseenter = function () {
        clearInterval(time);
    }
    bpar.onmouseleave = function () {
        showAnimate();
    }
    document.addEventListener("visibilitychange", function () {
        if (!document["hidden"]) {
            //激活
            showAnimate();
        } else {
            clearInterval(time);
        }
    });
    btnright.onmouseenter = function () {
        clearInterval(time);
    }
    btnright.onclick = function () {
        Animate();
    }
    btnleft.onmouseenter = function () {
        clearInterval(time);
    }
    btnleft.onclick = function () {
        dian[count].style.backgroundColor = "white";
        count--;
        if (count < 0) {
            bimage.className = "";
            count = 5;
            bimage.style.marginLeft = "-4200px";
            setTimeout(function () {
                bimage.className = "tranAnimate";
                bimage.style.marginLeft = (-700 * count) + "px";
            }, 1);
        }
        else {
            bimage.className = "tranAnimate";
            bimage.style.marginLeft = (-700 * count) + "px";
        }
        dian[count].style.backgroundColor = "black";
    }
</script>

</body>
</html>
 