<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>爱心公益网</title>
<link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
<link rel="stylesheet" type="text/css" href="css/jdt.css" media="all" />
<!--<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/jdt.js"></script>
<script type="text/javascript" src="js/jcarousellite.min.js"></script>

<script type="text/javascript">
$(function(){
	$('.tabMenu li').mousemove(function(){
	
		$('.tabMenu li').attr('class','');
		$('.con').css('display','none');
		
		$(this).attr('class','current');
		$('.con').eq($(this).index()).css("display","block");

	});
	
});


$(function(){
    $("#proList").imgScroll({
        btnPrev: ".prev",
		btnNext: ".next",
   		auto: 4000,//图片停留时间
   		scroll: 5,//每次滚动覆盖的图片个数
   		speed: 1000, //设置速度，0是不动。其次就是数字越大 ，移动越慢。
   		vertical: false,//横向（true），竖向（false）
   		visible: 5, //显示的数量
   		circular: true //是否循环
    });
	
});
</script>-->
<style type="text/css">
/*banner样式开始*/
.banner{
	height:434px;
	background:url(images/beijing.jpg) no-repeat center;
	position:relative;}
.banner:before{
	content:"";
	height:10px;
	background:rgba(0,0,0,0.2);
	display:block;
	}
.banner:after{
	content:"";
	height:100px;
	width:100%;
	display:block;
	background:url(images/zl.png) repeat-x;
	position:absolute;
	top:373px;}
.banner p{
	font-size:48px;
	font-family:微软雅黑;
	text-align:center;
	height:100px;
	background:rgba(255,255,255,0.3);
	padding-top:80px;
	text-shadow:-1px 1px 0px #fff;
	position:absolute;
	top:245px;
	width:100%;
	}
.banner p span{
	font-size:24px;
	display:block;
	color:#4714ae;
	}
/*banner样式结束*/
</style>

</head>

<body>

<%@ page contentType="text/html;charset=utf-8"%>
<%@ page language="java" import="java.sql.*"%>
<%--@include file="protect/protect.jsp"--%>
<jsp:useBean id="indexbean" scope="page" class="mydb.mydb"/>

<div id="header">
    	<h1>爱心公益网</h1>
        <ul>
        	<li><i class="iconfont">&#xe602;</i> 您好，欢迎参与爱心公益 |</li>
            <li><i class="iconfont">&#xe603;</i> <strong>昵称： </strong><%=(String)session.getValue("name")%>|</li>
            <li><i class="iconfont">&#xe601;</i> <a href="index.html">注销</a></li>
        </ul>
</div>

<div id="nav">
	<ul>
    	<li class="active"><a href="index1.jsp">首 页</a></li>
        <li><a href="../mujuan/list.jsp">募捐活动</a></li>
        <li><a href="../yigong/list.jsp">义工活动</a></li>
        <li><a href="../liuyan/ly.jsp">公益留言</a></li>
        <li><a href="index4.jsp">数据报表</a></li>
        <li><a href="index3.jsp">个人服务</a></li>
        <li><a href="index2.jsp">联系我们</a></li>
    </ul>
</div>


<div class="banner">
	<p>
	<span></span>
    </p>
</div>

<!--<div class="roll">
	<ul class="rImg">
    	<li><a href="#"><img src="images/01.jpg" /></a></li>
    	<li><a href="#"><img src="images/02.jpg" /></a></li>
    	<li><a href="#"><img src="images/03.jpg" /></a></li>
    	<li><a href="#"><img src="images/04.jpg" /></a></li>
    </ul>

	<ul class="rTit">
    	<li>园林式花园景观设计</li>
    	<li>家装效果图</li>
    	<li>后现代主义风格设计</li>
    	<li>欧式家居效果</li>
    </ul>
	
    <ul class="rNum">
    	<li class="current">1</li>
        <li>2</li>
        <li>3</li>
        <li>4</li>
    </ul>
</div>-->


<!--<div class="main clearfix">
	<div class="about clearfix">
    	<h2><i class="iconfont">&#xe605;</i> 关于我们</h2>
        <img src="images/about.jpg" />
        <h3>爱心公益网简介</h3>
        <p>道喜装饰有限公司致力于办公、酒店、商业、会所、餐饮娱乐、茶楼、厂房办公空间的设计与施工为一体的装饰企业。公司以国际时尚前沿设计理念为优势，以精品环保施工为标准，为公司、企业等... <a href="#">[详细]</a></p>
    </div>
    
    <div class="tab">
    	<ul class="tabMenu">
        	<li class="current"><a href="#">企业新闻</a></li>
            <li><a href="#">网站公告</a></li>
            <li><a href="#">行业信息</a></li>
        </ul>
        
        <div class="con clearfix" style="display:block;">
        	<img src="images/tabimg1.jpg" alt="" />
            <ul>
            	<li><span>[2013-09-10]</span><a href="#">装饰公司带你走出装修三大误区</a></li>
                <li><span>[2013-09-11]</span><a href="#">卧室隔断在选购和搭配上有何注意事项</a></li>
                <li><span>[2013-09-20]</span><a href="#">首触装修遇难题,装修公司为你解答</a></li>
                <li><span>[2013-09-22]</span><a href="#">双色搭配,让家居有相映成趣之美</a></li>
                <li><span>[2013-09-27]</span><a href="#">装修公司分享鞋柜的清洁保养有妙招</a></li>
            </ul>
        </div>
        <div class="con clearfix">
        	<img src="images/tabimg2.jpg" alt="" />
            <ul>
            	<li><span>[2013-10-10]</span><a href="#">装修公司分享家居灯饰选购注意六原则</a></li>
                <li><span>[2013-11-12]</span><a href="#">装修公司揭秘导致涂装产生缺陷的五要素</a></li>
                <li><span>[2013-10-17]</span><a href="#">装环保步步为营,室内装修绿色有理</a></li>
                <li><span>[2013-10-12]</span><a href="#">装修公司提醒别墅空间体型需与环境相协调</a></li>
                <li><span>[2013-10-15]</span><a href="#">装饰公司分享厨房装修"五不要"</a></li>
            </ul>
        </div>
        <div class="con clearfix">
        	<img src="images/tabimg3.jpg" alt="" />
          

            <ul>
            	<li><span>[2013-09-10]</span><a href="#"> 中国"以房养老"开展甚难</a></li>
                <li><span>[2013-09-11]</span><a href="#"> 减少损失源头,遏止偷工减料</a></li>
                <li><span>[2013-09-12]</span><a href="#">装饰公司支招,入木三分探红</a></li>
                <li><span>[2013-09-15]</span><a href="#">地板企业内容营销需以创意为基准</a></li>
                <li><span>[2013-10-19]</span><a href="#">精装简修，不如先考虑怎么改造飘窗</a></li>
            </ul>
        </div>
        
    </div>
</div>-->



<div class="box10" style="margin-top:40px;">
<div class="box2">
<div>
<h1>聚焦公益</h1>

<dl>
<dd><img src="images/t1.jpg"> </dd><dd><img src="images/t2.jpg"></dd>
</dl><!--<ul>
<li>·<a href="http://gongyi.china.com.cn/2020-02/06/content_41049394.htm" >抗击疫情进行时 爱心接力不打烊</a></li><li>·<a href="http://gongyi.china.com.cn/2020-02/06/content_41049389.htm" >周庄“跑腿”志愿队暖心服务阻病毒</a></li><li>·<a href="http://gongyi.china.com.cn/2020-02/06/content_41049387.htm" >河南：用”暖心”热线守好公众心理防线</a></li><li>·<a href="http://gongyi.china.com.cn/2020-02/05/content_41048088.htm" >社区防控，我们在行动</a></li><li>·<a href="http://gongyi.china.com.cn/2020-02/05/content_41048085.htm" >“你保大家安康，我们为你护航”——宁夏爱心司机逆行“表白”抗疫“天使”</a></li><li>·<a href="http://gongyi.china.com.cn/2020-02/05/content_41048078.htm" >“宅”生活的文化味道</a></li>
</ul>
<p><a href="http://gongyi.china.com.cn/node_521551.htm" >更多>></a></p>-->
<p style="text-indent:2em;">
2月4日，工作人员在给送餐箱消毒。 新型冠状病毒感染的肺炎疫情发生后，不少餐饮企业暂停营业。但在安徽合肥却有一家餐饮企业开始了疫情期间的忙碌，他们主动联系安徽省立医院感染病院，为在战“疫”一线的医护人员提供免费爱心餐。 从1月28日开始，这家企业每天向安徽省立医院感染病院供应120份爱心餐。“他们在一线战斗，我们也要尽最大的努力，向这些最可爱的人致敬。”该企业负责人说。 新华社发（黄博涵摄）
</p>
</div>

<div style="margin:0 42px;">
<h1>公益访谈</h1>

<h2><img src="images/t3.png"> <br>云南双尚科技有限公司——树立行业标杆 铸就民族品牌
</h2>
<p style="text-indent:2em;">
近年来美业的发展变化迅速,人们的美容理念也在不断变化,美容已经不仅仅局限于面部,身体的各个部位都有权利去美化,不仅是指面部、身体、还有局部细节的靓丽,也包括心理和身体的健康。大健康是美业趋势的发展方向,健康产业和美容行业的交汇融合带来健康美容大机遇。有一位女性长期致力于美丽事业,热爱美,创造美,传播美,让这个世界变得更美,让美丽与生命产生共鸣,把美丽升华成一种源源不断的正能量,她就是美丽的缔造者与传播者、云南双尚科技有限公司创始人、董事长刘双琼,雙尚商学院荣誉院长,世界旅游辣妈大赛昆明赛区主席 ,《企业盈利的钥匙》导师,香港美尚美生物科技有限公司总裁,《老板增长思维》导师,双尚系统创始人,
</p>
</div>

<div>
<h1>公益视频</h1>

<h2><img src="images/t4.png"> <br>中国传统文化的守护者—田景和</h2>
<p style="text-indent:2em;">
有一个人长期以中国传统文化为核心,一直致力于民族民间文化的探索研究工作，具有强烈的历史使命感和执着的责任心，对长江巴渝历史文化、神话故事、特别是酉阳历史文化、土家民俗文化、音乐（器乐）文化、铜梁龙舞文化等方面都有独到的见解，他就是田景和；田景和：男，56岁，重庆酉阳人，中国致公党员，中华伏羲文化及长江巴渝桃花源文化研究领军人物，酉阳桃花源旅投集团原顾问（酉阳桃花源书院原院长）、重庆华夏人文艺术研究院副院长、重庆市创造者旅游文化股份有限公司顾问、重庆龙爸凤妈文化传媒有限公司董事长。长期致力于深入挖掘以桃花源文化为代表的中华文化，力求还原并丰富中华文化的深厚底蕴，用文化谱写新中国的盛世讴歌。
</p>
</div>
</div>

<!--<div class="box5 bg1">
<div class="box4">
<h1>高层声音</h1>

<div><iframe id="pic1" name="pic1" src="http://gongyi.china.com.cn/node_521733.htm" width="624" height="165" scrolling="no" marginheight="0" frameborder="0"></iframe></div>

<ul style="margin-right:13px;">
<li>·<a href="http://gongyi.china.com.cn/2019-03/27/content_40700992.htm" >李振佑：咬定脱贫攻坚目标不放松</a></li><li>·<a href="http://gongyi.china.com.cn/2019-03/27/content_40700991.htm" >李睿：打赢打好脱贫攻坚战关键在人</a></li><li>·<a   href="http://gongyi.china.com.cn/2019-03/27/content_40700989.htm" >王晓芳：全面精准把握扶贫工作重要论述思想精髓</a></li><li>·<a href="http://gongyi.china.com.cn/2019-03/21/content_40695149.htm" >专访宫蒲光:应高度关注城市贫困问题</a></li><li>·<a   href="http://gongyi.china.com.cn/2019-03/18/content_40691226.htm" >全国人大代表支月英回复记者提问</a></li><li>·<a   href="http://gongyi.china.com.cn/2019-03/15/content_40689504.htm" >汤亚平：用行动诠释社区工作者的为民初心</a></li>
</ul>
<ul>
<li>·<a href="http://gongyi.china.com.cn/2019-03/15/content_40689470.htm" >高继明代表：全面推进公益诉讼工作</a></li><li>·<a href="http://gongyi.china.com.cn/2019-03/15/content_40689466.htm" >于集华代表：以工匠精神弘扬陶瓷文化</a></li><li>·<a href="http://gongyi.china.com.cn/2019-03/15/content_40689462.htm" >刘奇凡代表：以作风攻坚促脱贫攻坚</a></li><li>·<a href="http://gongyi.china.com.cn/2019-03/15/content_40689388.htm" >李干杰：环保攻坚下一步重点聚焦七场战役</a></li><li>·<a href="http://gongyi.china.com.cn/2019-03/14/content_40688240.htm" >全国政协委员罗玉平：开展多样化扶贫 巩固脱贫攻坚成果</a></li><li>·<a   href="http://gongyi.china.com.cn/2019-03/13/content_40686945.htm" >王银香代表：“最重要的是让人有活儿干”</a></li>
</ul>
<p><a href="http://gongyi.china.com.cn/node_521548.htm" >更多>></a></p></div>

<div class="box6">
<h1>公益模范</h1>

<dl>
<dd><a href="http://gongyi.china.com.cn/2019-11/11/content_40955463.htm" ><img src="http://gongyi.china.com.cn/images/2019-11/11/d600be73-e333-4709-9c04-8b2079367a0f.png" border=0> <br />江西援外医生：当地民众对中国医生很尊重</a></dd><dd><a href="http://gongyi.china.com.cn/2019-11/05/content_40947958.htm" ><img src="http://gongyi.china.com.cn/images/2019-11/05/7009cbb5-87aa-4104-a7cf-eeec29d102da.png"   border=0> <br />走近耿美玉</a></dd>
</dl><ul>
<li>·<a href="http://gongyi.china.com.cn/2020-02/06/content_41049383.htm" >【新春走基层·脱贫攻坚一线见闻】扶贫路上的“轮椅女孩”</a></li><li>·<a   href="http://gongyi.china.com.cn/2020-02/05/content_41048085.htm" >“你保大家安康，我们为你护航”——宁夏爱心司机逆行“表白”抗疫“天使”</a></li><li>·<a   href="http://gongyi.china.com.cn/2020-02/05/content_41048081.htm" >志愿者：疫情防控中的“红色轻骑兵”</a></li><li>·<a   href="http://gongyi.china.com.cn/2020-02/04/content_41046764.htm" >重庆：战“疫”一线医生黄霞</a></li><li>·<a   href="http://gongyi.china.com.cn/2020-02/03/content_41045854.htm" >致敬！逆行的“白衣战士”！（来自疫情防控一线的报道）——武汉疫情防控一线纪实之二</a></li><li>·<a   href="http://gongyi.china.com.cn/2020-01/22/content_41042931.htm" >变化的速度 不变的期待——三代列车长眼中的30年春运</a></li>
</ul>
<p><a href="http://gongyi.china.com.cn/node_521547.htm" >更多>></a></p>
</div>
</div>-->

<div class="box2">
<div>
<h1>公益慈善家</h1>

<dl>
<dd><img src="images/t5.jpg"> <br />杨澜：让“爱的启蒙”帮扶更多留守儿童</dd><dd><img src="images/t6.jpg"></dd>
</dl>
<p style="text-indent:2em;">
杨澜表示，对于乡村儿童、流动人口这样的弱势群体，在精神与情感层面上，他们有非常多的渴望需要大家去关注支持。“我们发现在乡村，特别是贫困地区的留守儿童，以及那些和父母来到城市的流动儿童，由于工作等问题，他们的父母不能够给予他们足够的陪伴，孩子们的精神和情感领域的这种需求，让我特别感同身受。”杨澜说。2006年，杨澜创立阳光未来艺术教育基金会，创建之初，基金会开发“爱的启蒙”美育教学实践项目，面向教育资源匮乏的儿童青少年群体，在打工子弟学校和乡村学校开展多种形式的美育实践活动。杨澜表示，实施教育慈善项目过程是一个不断学习、不断创新的过程。
</p>
</div>

<div style="margin:0 42px;">
<h1>爱心艺术家</h1>

<dl>
<dd><img src="images/t77.jpg"> <br />慧敏艺术馆开馆仪式暨潘慧敏书法作品展在京举行</dd><dd><img src="images/t88.jpg"></dd>
</dl>
<p style="text-indent:2em;">
4月9日,潘慧敏艺术馆开馆仪式暨潘慧敏书法作品展在北京市通州国泰北京ONE举行。潘慧敏现为中国书法家协会会员,国家一级美术师,中央国家机关美术家协会会员。他的书法作品一改当代书法浮夸之风,注重书法本身用笔与结构所体现出的美感,笔墨横姿,字里行间散发出魏晋文人的洒脱与率性,形成独具一格的风格面貌。潘慧敏艺术馆坐落于北京市副行政中心的通州北京ONE商业圈,该区域是继国贸、华贸商圈之后另一个现代化高档商圈。潘慧敏艺术馆入驻北京ONE,不仅极大丰富了北京ONE商圈的文化模块,也让北京市民体验到了一种全新的生活理念和生活方式。
</p>
</div>

<div>
<h1>榜样公益</h1>

<div style="width:100%; padding-top:10px;">
<dl>
<dd><img src="images/t9.jpg"> <br />向榜样致敬！贵阳市召开学习马金涛同志先进事迹动员大会</dd><dd><img src="images/t10.jpg"></dd>
</dl>
<p style="text-indent:2em;">
2018年12月20日18时许，马金涛同志在参加扫黑除恶专项斗争涉黄赌毒线索排查整治行动中，与犯罪嫌疑人英勇搏斗，壮烈牺牲，年仅30岁。从警五年来，马金涛同志始终奋斗在公安工作第一线，忠实践行习近平总书记提出的“对党忠诚、服务人民、执法公正、纪律严明”的新时代公安工作总要求，怀着对党的无限忠诚、对人民的无限深情和对公安事业的无比热爱，在平凡的岗位上做出了不平凡的业绩。2016年、2017年连续两年公务员考核为优秀等次，2017年因工作突出，荣立个人嘉奖一次。马金涛同志牺牲后，引发了社会各界的自发悼念和深切缅怀，先后有10万余人前往殡仪馆吊唁、敬献花圈。
</p>
</div>
</div>
</div>
</div>




<!--
<div class="main clearfix">
	<div class="project">
    	<div class="hd"><a href="#">>>更多</a><h2><i class="iconfont">&#xe604;</i> 工程案例</h2></div>
        <a class="prev" href="javascript:void(0);">◀</a>
		<a class="next" href="javascript:void(0);">▶</a>
	
        <div id="proList">
            <ul>
                <li><a href="#"><img src="images/gc1.jpg" /></a></li>
                <li><a href="#"><img src="images/gc2.jpg" /></a></li>
                <li><a href="#"><img src="images/gc3.jpg" /></a></li>
                <li><a href="#"><img src="images/gc4.jpg" /></a></li>
                <li><a href="#"><img src="images/gc5.jpg" /></a></li>
                <li><a href="#"><img src="images/gc6.jpg" /></a></li>
                <li><a href="#"><img src="images/gc7.jpg" /></a></li>
                <li><a href="#"><img src="images/gc8.jpg" /></a></li>
                <li><a href="#"><img src="images/gc9.jpg" /></a></li>
                <li><a href="#"><img src="images/gc10.jpg" /></a></li>
    
            </ul>
        </div>
    </div>
    
    <div class="sidebar">
    	<a href="#"><img src="images/sid1.jpg" /></a>
        <a href="#"><img src="images/sid2.jpg" /></a>
        <a href="#"><img src="images/sid3.jpg" /></a>
    </div>

</div>-->

<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>爱心公益网 版权所有</p>
	<!--<p><a href="#">网站首页</a> | <a href="#">关于我们</a> | <a href="#">工程案例</a> | <a href="#">人才招聘</a></p>-->
</div>
</body>
</html>
