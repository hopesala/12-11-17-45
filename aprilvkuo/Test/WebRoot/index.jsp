<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>





<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>在线预约首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<<<<<<< HEAD
<style>
<!--
body{
margin:0px;
padding:10px;
filter:progid:DXImageTransform.microsoft.gradient(gradienttype=0,startColorStr=blue,endColorStr=white);
}
-->
</style>

</head>
=======

  </head>
>>>>>>> parent of 7c09c06... 界面优化
  
  <body>
  <jsp:include  page="MyJsp.jsp"/>

   <div style="margin:0 auto;width:200px;">
	
</div>  




<script>
   $(function(){
      $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
      // 获取已激活的标签页的名称
      var activeTab = $(e.target).text(); 
      // 获取前一个激活的标签页的名称
      var previousTab = $(e.relatedTarget).text(); 
      $(".active-tab span").html(activeTab);
      $(".previous-tab span").html(previousTab);
   });
});
</script>
   <div id="myCarousel" class="carousel slide">
   <!-- 轮播（Carousel）指标 -->
   <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
   </ol>   
   <!-- 轮播（Carousel）项目 -->
   <div class="carousel-inner">
      <div class="item active">
         <img src="image/xiaoyuanyuyue.png" alt="First slide">
      </div>
      <div class="item">
         <img src="image/red1.png" alt="Second slide">
      </div>
      <div class="item">
         <img src="image/blue1.png" alt="Third slide">
      </div>
   </div>
   <!-- 轮播（Carousel）导航 -->
   <a class="carousel-control left" href="#myCarousel" 
      data-slide="prev">&lsaquo;</a>
   <a class="carousel-control right" href="#myCarousel" 
      data-slide="next">&rsaquo;</a>
</div> 
   
   
     <hr>
<div style="margin:0 auto;width: 273px; height: 167px">
<form class="well form-search">
<p>
   <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='registert.jsp'" >
      教师注册
   </button>
   <button type="button" class="btn btn-lg" onclick="window.location.href='Logint.jsp'" style="width: 119px; ">
      教师登录
   </button>
</p>


<br>


<p>
   <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='register.jsp'">
      学生注册
   </button>
   <button type="button" class="btn  btn-lg" onclick="window.location.href='Login.jsp'" style="width: 119px; ">
      学生登录
   </button>
</p>

</form>
</div>
<hr>

<<<<<<< HEAD
<script>/*========================================================*/  
/* Light Loader
/*========================================================*/
var lightLoader = function(c, cw, ch){
	
	var _this = this;
	this.c = c;
	this.ctx = c.getContext('2d');
	this.cw = cw;
	this.ch = ch;			
	
	this.loaded = 0;
	this.loaderSpeed = .6;
	this.loaderHeight = 10;
	this.loaderWidth = 310;				
	this.loader = {
		x: (this.cw/2) - (this.loaderWidth/2),
		y: (this.ch/2) - (this.loaderHeight/2)
	};
	this.particles = [];
	this.particleLift = 180;
	this.hueStart = 0;
	this.hueEnd = 120;
	this.hue = 0;
	this.gravity = .15;
	this.particleRate = 4;	
					
	/*========================================================*/	
	/* Initialize
	/*========================================================*/
	this.init = function(){
		this.loop();
	};
	
	/*========================================================*/	
	/* Utility Functions
	/*========================================================*/				
	this.rand = function(rMi, rMa){return ~~((Math.random()*(rMa-rMi+1))+rMi);};
	this.hitTest = function(x1, y1, w1, h1, x2, y2, w2, h2){return !(x1 + w1 < x2 || x2 + w2 < x1 || y1 + h1 < y2 || y2 + h2 < y1);};
	
	/*========================================================*/	
	/* Update Loader
	/*========================================================*/
	this.updateLoader = function(){
		if(this.loaded < 100){
			this.loaded += this.loaderSpeed;
		} else {
			this.loaded = 0;
		}
	};
	
	/*========================================================*/	
	/* Render Loader
	/*========================================================*/
	this.renderLoader = function(){
		this.ctx.fillStyle = '#000';
		this.ctx.fillRect(this.loader.x, this.loader.y, this.loaderWidth, this.loaderHeight);
		
		this.hue = this.hueStart + (this.loaded/100)*(this.hueEnd - this.hueStart);
		
		var newWidth = (this.loaded/100)*this.loaderWidth;
		this.ctx.fillStyle = 'hsla('+this.hue+', 100%, 40%, 1)';
		this.ctx.fillRect(this.loader.x, this.loader.y, newWidth, this.loaderHeight);
		
		this.ctx.fillStyle = '#222';
		this.ctx.fillRect(this.loader.x, this.loader.y, newWidth, this.loaderHeight/2);
	};	
	
	/*========================================================*/	
	/* Particles
	/*========================================================*/
	this.Particle = function(){					
		this.x = _this.loader.x + ((_this.loaded/100)*_this.loaderWidth) - _this.rand(0, 1);
		this.y = _this.ch/2 + _this.rand(0,_this.loaderHeight)-_this.loaderHeight/2;
		this.vx = (_this.rand(0,4)-2)/100;
		this.vy = (_this.rand(0,_this.particleLift)-_this.particleLift*2)/100;
		this.width = _this.rand(1,4)/2;
		this.height = _this.rand(1,4)/2;
		this.hue = _this.hue;
	};
	
	this.Particle.prototype.update = function(i){
		this.vx += (_this.rand(0,6)-3)/100; 
		this.vy += _this.gravity;
		this.x += this.vx;
		this.y += this.vy;
		
		if(this.y > _this.ch){
			_this.particles.splice(i, 1);
		}					
	};
	
	this.Particle.prototype.render = function(){
		_this.ctx.fillStyle = 'hsla('+this.hue+', 100%, '+_this.rand(50,70)+'%, '+_this.rand(20,100)/100+')';
		_this.ctx.fillRect(this.x, this.y, this.width, this.height);
	};
	
	this.createParticles = function(){
		var i = this.particleRate;
		while(i--){
			this.particles.push(new this.Particle());
		};
	};
					
	this.updateParticles = function(){					
		var i = this.particles.length;						
		while(i--){
			var p = this.particles[i];
			p.update(i);											
		};						
	};
	
	this.renderParticles = function(){
		var i = this.particles.length;						
		while(i--){
			var p = this.particles[i];
			p.render();											
		};					
	};
	

	/*========================================================*/	
	/* Clear Canvas
	/*========================================================*/
	this.clearCanvas = function(){
		this.ctx.globalCompositeOperation = 'source-over';
		this.ctx.clearRect(0,0,this.cw,this.ch);					
		this.ctx.globalCompositeOperation = 'lighter';
	};
	
	/*========================================================*/	
	/* Animation Loop
	/*========================================================*/
	this.loop = function(){
		var loopIt = function(){
			requestAnimationFrame(loopIt, _this.c);
			_this.clearCanvas();
			
			_this.createParticles();
			
			_this.updateLoader();
			_this.updateParticles();
			
			_this.renderLoader();
			_this.renderParticles();
			
		};
		loopIt();					
	};

};

/*========================================================*/	
/* Check Canvas Support
/*========================================================*/
var isCanvasSupported = function(){
	var elem = document.createElement('canvas');
	return !!(elem.getContext && elem.getContext('2d'));
};

/*========================================================*/	
/* Setup requestAnimationFrame
/*========================================================*/
var setupRAF = function(){
	var lastTime = 0;
	var vendors = ['ms', 'moz', 'webkit', 'o'];
	for(var x = 0; x < vendors.length && !window.requestAnimationFrame; ++x){
		window.requestAnimationFrame = window[vendors[x]+'RequestAnimationFrame'];
		window.cancelAnimationFrame = window[vendors[x]+'CancelAnimationFrame'] || window[vendors[x]+'CancelRequestAnimationFrame'];
	};
	
	if(!window.requestAnimationFrame){
		window.requestAnimationFrame = function(callback, element){
			var currTime = new Date().getTime();
			var timeToCall = Math.max(0, 16 - (currTime - lastTime));
			var id = window.setTimeout(function() { callback(currTime + timeToCall); }, timeToCall);
			lastTime = currTime + timeToCall;
			return id;
		};
	};
	
	if (!window.cancelAnimationFrame){
		window.cancelAnimationFrame = function(id){
			clearTimeout(id);
		};
	};
};			

/*========================================================*/	
/* Define Canvas and Initialize
/*========================================================*/
if(isCanvasSupported){
  var c = document.createElement('canvas');
  c.width = 400;
  c.height = 100;			
  var cw = c.width;
  var ch = c.height;	
  document.body.appendChild(c);	
  var cl = new lightLoader(c, cw, ch);				
  
  setupRAF();
  cl.init();
}
</script>
=======
>>>>>>> parent of 7c09c06... 界面优化

  </body>
</html>
