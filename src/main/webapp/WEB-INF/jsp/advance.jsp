<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="www.zzjs.net,站长特效网，站长必备js特效及广告代码。大量高质量js特效，提供高质量广告代码下载,尽在站长特效网" />
    <title>图片不间断滚动效果(兼容火狐和IE) zzjs.net收集，站长特效网欢迎您。</title>
    <style type="text/css">
        #colee img,#colee_bottom img,#colee_left img,#colee_right img{
            width:500px;height:253px;
        }
    </style>
</head>

<body>
<!--下面是向上滚动代码-->
<hr>
向上滚动代码结束
<div id="colee" style="overflow:hidden;width:500px;height:253px;margin-bottom: 50px;">
    <div id="colee1">
        <img src="http://seopic.699pic.com/photo/50047/8124.jpg_wh1200.jpg" onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

        <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535965702595&di=92678036266b71f63028f88b85270422&imgtype=0&src=http%3A%2F%2Fwww.water8848.com%2Ffile%2Fupload%2F201608%2F17%2F09-15-38-99-4361.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

        <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535965740283&di=b31f6c937eb117f124aa3f459c8d03ab&imgtype=0&src=http%3A%2F%2Fg.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F0dd7912397dda1443b5c9090bfb7d0a20cf486bf.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

        <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535965740283&di=3b411b9075c69123159662b994a8e380&imgtype=0&src=http%3A%2F%2Fe.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F728da9773912b31b549fe00b8b18367adab4e125.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

        <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535965740282&di=406f45d77c815804daddd76737ff9f7a&imgtype=0&src=http%3A%2F%2Fg.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F7af40ad162d9f2d359b91acca4ec8a136327cc6c.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

        <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535965740282&di=c1fe20fe5e098cc00eccbd1ff345469e&imgtype=0&src=http%3A%2F%2Fa.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F0dd7912397dda1449dd17697bfb7d0a20cf4863e.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

        <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535965760243&di=6daa632a49d5ee2811c10be9143beeb0&imgtype=0&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F8d5494eef01f3a2966bddeeb9425bc315c607c99.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

        <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535965760243&di=4b21abf82b810ad14b4bd9a8b0198d99&imgtype=0&src=http%3A%2F%2Fg.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F79f0f736afc37931a41d8d0ce6c4b74543a91199.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

        <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535965760242&di=4dec12789a8fe2368431c88d1572a1ad&imgtype=0&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F7c1ed21b0ef41bd5268ee0d15cda81cb39db3d31.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

    </div>
    <div id="colee2"></div>
</div>
<script>
    var speed = 30;
    var colee2 = document.getElementById("colee2");
    var colee1 = document.getElementById("colee1");
    var colee = document.getElementById("colee");
    colee2.innerHTML = colee1.innerHTML; //克隆colee1为colee2
    function Marquee1() {
        //当滚动至colee1与colee2交界时
        if(colee2.offsetTop - colee.scrollTop <= 0) {
            colee.scrollTop -= colee1.offsetHeight; //colee跳到最顶端
        } else {
            colee.scrollTop++
        }
    } //欢迎来到站长特效网，我们的网址是www.zzjs.net，很好记，zz站长，js就是js特效，本站收集大量高质量js代码，还有许多广告代码下载。
    var MyMar1 = setInterval(Marquee1, speed) //设置定时器
    //鼠标移上时清除定时器达到滚动停止的目的
    colee.onmouseover = function() { clearInterval(MyMar1) }
    //鼠标移开时重设定时器
    colee.onmouseout = function() { MyMar1 = setInterval(Marquee1, speed) }
</script>
<!--向上滚动代码结束-->

<!--下面是向下滚动代码-->
向下滚动代码
<div id="colee_bottom" style="overflow:hidden;width:500px;height:253px;">
    <div id="colee_bottom1">
        <img src="http://seopic.699pic.com/photo/50047/8124.jpg_wh1200.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

        <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535965702595&di=92678036266b71f63028f88b85270422&imgtype=0&src=http%3A%2F%2Fwww.water8848.com%2Ffile%2Fupload%2F201608%2F17%2F09-15-38-99-4361.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

        <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535965740283&di=b31f6c937eb117f124aa3f459c8d03ab&imgtype=0&src=http%3A%2F%2Fg.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F0dd7912397dda1443b5c9090bfb7d0a20cf486bf.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

        <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535965740283&di=3b411b9075c69123159662b994a8e380&imgtype=0&src=http%3A%2F%2Fe.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F728da9773912b31b549fe00b8b18367adab4e125.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

        <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535965740282&di=406f45d77c815804daddd76737ff9f7a&imgtype=0&src=http%3A%2F%2Fg.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F7af40ad162d9f2d359b91acca4ec8a136327cc6c.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

        <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535965740282&di=c1fe20fe5e098cc00eccbd1ff345469e&imgtype=0&src=http%3A%2F%2Fa.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F0dd7912397dda1449dd17697bfb7d0a20cf4863e.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

        <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535965760243&di=6daa632a49d5ee2811c10be9143beeb0&imgtype=0&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F8d5494eef01f3a2966bddeeb9425bc315c607c99.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

        <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535965760243&di=4b21abf82b810ad14b4bd9a8b0198d99&imgtype=0&src=http%3A%2F%2Fg.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F79f0f736afc37931a41d8d0ce6c4b74543a91199.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

        <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535965760242&di=4dec12789a8fe2368431c88d1572a1ad&imgtype=0&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F7c1ed21b0ef41bd5268ee0d15cda81cb39db3d31.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />

    </div>
    <div id="colee_bottom2"></div>
</div>
<script>
    var speed = 30
    var colee_bottom2 = document.getElementById("colee_bottom2");
    var colee_bottom1 = document.getElementById("colee_bottom1");
    var colee_bottom = document.getElementById("colee_bottom");
    colee_bottom2.innerHTML = colee_bottom1.innerHTML
    colee_bottom.scrollTop = colee_bottom.scrollHeight

    function Marquee2() {
        if(colee_bottom1.offsetTop - colee_bottom.scrollTop >= 0)
            colee_bottom.scrollTop += colee_bottom2.offsetHeight
        else {
            colee_bottom.scrollTop--
        }
    } //欢迎来到站长特效网，我们的网址是www.zzjs.net，很好记，zz站长，js就是js特效，本站收集大量高质量js代码，还有许多广告代码下载。
    var MyMar2 = setInterval(Marquee2, speed)
    colee_bottom.onmouseover = function() { clearInterval(MyMar2) }
    colee_bottom.onmouseout = function() { MyMar2 = setInterval(Marquee2, speed) }
</script>
<!--向下滚动代码结束-->

<!--下面是向左滚动代码-->
向左滚动代码
<div id="colee_left" style="overflow:hidden;width:500px;height:253px;">
    <table cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td id="colee_left1" valign="top" align="center">
                <table cellpadding="2" cellspacing="0" border="0">
                    <tr align="center">
                        <td>
                            <img src="http://imgsrc.baidu.com/imgad/pic/item/ac6eddc451da81cbf7a8b6e35966d01609243155.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />
                        </td>
                        <td>
                            <img src="http://img4.imgtn.bdimg.com/it/u=3248801285,1182515199&fm=26&gp=0.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />
                        </td>

                        <td>
                            <img src="http://imgsrc.baidu.com/imgad/pic/item/b17eca8065380cd7ce6868c0aa44ad34598281ad.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />
                        </td>
                        <td>
                            <img src="http://seopic.699pic.com/photo/50047/8124.jpg_wh1200.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />
                        </td>
                        <td>
                            <img src="http://imgsrc.baidu.com/image/c0%3Dpixel_huitu%2C0%2C0%2C294%2C40/sign=ed78b181df3f8794c7f2406ebb636b98/72f082025aafa40f34c69ce4a064034f78f01982.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />
                        </td>
                        <td>
                            <img src="http://imgsrc.baidu.com/image/c0%3Dpixel_huitu%2C0%2C0%2C294%2C40/sign=92648692083b5bb5aada28be5fabb055/77094b36acaf2edd199cced0861001e93901939e.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />
                        </td>
                        <td>
                            <img src="http://imgsrc.baidu.com/image/c0%3Dpixel_huitu%2C0%2C0%2C294%2C40/sign=cc28892db399a9012f38537674ed6f17/472309f790529822a1166cfadcca7bcb0a46d4e6.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />
                        </td>
                    </tr>
                </table>
            </td>
            <td id="colee_left2" valign="top"></td>
        </tr>
    </table>
</div>
<script>
    //使用div时，请保证colee_left2与colee_left1是在同一行上.
    var speed = 30 //速度数值越大速度越慢
    var colee_left2 = document.getElementById("colee_left2");
    var colee_left1 = document.getElementById("colee_left1");
    var colee_left = document.getElementById("colee_left");
    colee_left2.innerHTML = colee_left1.innerHTML

    function Marquee3() {
        if(colee_left2.offsetWidth - colee_left.scrollLeft <= 0) //offsetWidth 是对象的可见宽度
            colee_left.scrollLeft -= colee_left1.offsetWidth //scrollWidth 是对象的实际内容的宽，不包边线宽度
        else {
            colee_left.scrollLeft++;
        }
    } //欢迎来到站长特效网，我们的网址是www.zzjs.net，很好记，zz站长，js就是js特效，本站收集大量高质量js代码，还有许多广告代码下载。
    var MyMar3 = setInterval(Marquee3, speed)
    colee_left.onmouseover = function() { clearInterval(MyMar3) }
    colee_left.onmouseout = function() { MyMar3 = setInterval(Marquee3, speed) }
</script>
<!--向左滚动代码结束-->

<!--下面是向右滚动代码-->
向右滚动代码
<div id="colee_right" style="overflow:hidden;width:500px;height:253px;">
    <table cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td id="colee_right1" valign="top" align="center">
                <table cellpadding="2" cellspacing="0" border="0">
                    <tr align="center">
                        <td>
                            <img src="http://imgsrc.baidu.com/imgad/pic/item/64380cd7912397ddc07c52295282b2b7d0a28792.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />
                        </td>
                        <td>
                            <img src="http://img4.imgtn.bdimg.com/it/u=3248801285,1182515199&fm=26&gp=0.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />
                        </td>

                        <td>
                            <img src="http://imgsrc.baidu.com/imgad/pic/item/b17eca8065380cd7ce6868c0aa44ad34598281ad.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />
                        </td>
                        <td>
                            <img src="http://imgsrc.baidu.com/imgad/pic/item/b3b7d0a20cf431ada2d488144036acaf2edd989d.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />
                        </td>
                        <td>
                            <img src="http://imgsrc.baidu.com/image/c0%3Dpixel_huitu%2C0%2C0%2C294%2C40/sign=ed78b181df3f8794c7f2406ebb636b98/72f082025aafa40f34c69ce4a064034f78f01982.jpg"  onclick="javascript:window.open(this.src);" style="cursor:pointer;" />
                        </td>
                    </tr>
                </table>
            </td>
            <td id="colee_right2" valign="top"></td>
        </tr>
    </table>
</div>
<script>
    var speed = 30 //速度数值越大速度越慢
    var colee_right2 = document.getElementById("colee_right2");
    var colee_right1 = document.getElementById("colee_right1");
    var colee_right = document.getElementById("colee_right");
    colee_right2.innerHTML = colee_right1.innerHTML

    function Marquee4() {
        if(colee_right.scrollLeft <= 0)
            colee_right.scrollLeft += colee_right2.offsetWidth
        else {
            colee_right.scrollLeft--;
        }
    } //欢迎来到站长特效网，我们的网址是www.zzjs.net，很好记，zz站长，js就是js特效，本站收集大量高质量js代码，还有许多广告代码下载。
    var MyMar4 = setInterval(Marquee4, speed)
    colee_right.onmouseover = function() { clearInterval(MyMar4) }
    colee_right.onmouseout = function() { MyMar4 = setInterval(Marquee4, speed) }
</script>
<!--向右滚动代码结束-->
</body>

</html>