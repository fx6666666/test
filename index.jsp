<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>微信分享</title>
</head>
<body>
<!-- <script typet="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script> -->
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
<script type="text/javascript">
   var url = window.location.href;
   var articleId = "";
   var shareTitle="为了迎接2019年开年以来的第一个大规模车展——底特律车展，日产旗下的豪华汽车品...";
   var shareImgUrl="http://p8.qhimg.com/bdr/640__/t01053fd0679e5f349b.jpg"
   var timestamp;
   var noncestr;
   var signature;
   //获取签名
    $.ajax({
      type: "GET",
      url: "wshare/getSignature",
      //data:{timestamp:timestamp,noncestr:noncestr,url:url},
      data:{url:url},
      success: function(data){
        var objData=JSON.parse(data); 
        timestamp=objData.timestamp; 
        noncestr=objData.noncestr; 
        signature=objData.signature;
        console.log(objData);
        wxShare();
      }
     });
   function wxShare(){
   wx.config({
    debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
    appId: 'wx0add1b97ed73191a', // 和获取Ticke的必须一样------必填，公众号的唯一标识
    timestamp:timestamp, // 必填，生成签名的时间戳
    nonceStr: noncestr, // 必填，生成签名的随机串
    signature: signature,// 必填，签名，见附录1
    jsApiList: [
      'onMenuShareAppMessage','onMenuShareTimeline','onMenuShareTimeline','onMenuShareQQ','onMenuShareQZone'
    ] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
   });
   }
   wx.ready(function(){
     //config信息验证后会执行ready方法，所有接口调用都必须在config接口获得结果之后，
     //config是一个客户端的异步操作，所以如果需要在页面加载时就调用相关接口，则须把相关
     //接口放在ready函数中调用来确保正确执行。对于用户触发时才调用的接口，则可以直接调用，不需要放在ready函数中。
 
    //----------“分享给朋友”
    wx.onMenuShareAppMessage({
     title: "怪异外观之下是强大实力！英菲尼迪QX Inspiration抢先看", // 分享标题
     desc: shareTitle, // 分享描述
     link: url, // 分享链接
     imgUrl: shareImgUrl, // 分享图标
     type: '', // 分享类型,music、video或link，不填默认为link
     dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
     success: function () { 
      // 用户确认分享后执行的回调函数、
    	 alert("分享成功");
     },
     cancel: function () { 
      // 用户取消分享后执行的回调函数
    	 alert("分享失败");
     }
    });
    //------------"分享到朋友圈"
    wx.onMenuShareTimeline({
     title: '怪异外观之下是强大实力！英菲尼迪QX Inspiration抢先看', // 分享标题
     link: '', // 分享链接
     imgUrl: shareImgUrl, // 分享图标
     success: function () { 
      // 用户确认分享后执行的回调函数
    	 alert("分享成功");
     },
     cancel: function () { 
      // 用户取消分享后执行的回调函数
    	 alert("分享失败");
     }
    });
    //-------------分享到QQ
    wx.onMenuShareQQ({
     title: '怪异外观之下是强大实力！英菲尼迪QX Inspiration抢先看', // 分享标题
     desc: shareTitle, // 分享描述
     link: '', // 分享链接
     imgUrl: shareImgUrl, // 分享图标
     success: function () { 
      // 用户确认分享后执行的回调函数
    	 alert("分享成功");
     },
     cancel: function () { 
      // 用户取消分享后执行的回调函数
    	 alert("分享失败");
     }
    });
    //-------------分享到QQ空间
    wx.onMenuShareQZone({
     title: '怪异外观之下是强大实力！英菲尼迪QX Inspiration抢先看', // 分享标题
     desc: shareTitle, // 分享描述
     link: '', // 分享链接
     imgUrl: shareImgUrl, // 分享图标
     success: function () { 
      // 用户确认分享后执行的回调函数
    	 alert("分享成功");
     },
     cancel: function () { 
      // 用户取消分享后执行的回调函数
    	 alert("分享失败");
     }
    });
 
   });

</body>
</html>