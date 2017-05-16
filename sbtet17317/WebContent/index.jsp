<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="SH.html"%>
<style>
#snackbar {
	visibility: hidden;
	min-width: 250px;
	margin-left: -125px;
	background-color: #333;
	color: #fff;
	text-align: center;
	border-radius: 2px;
	padding: 16px;
	position: fixed;
	z-index: 1;
	left: 50%;
	bottom: 30px;
	font-size: 17px;
}

#snackbar.show {
	visibility: visible;
	-webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
	animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

@
-webkit-keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
-webkit-keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}

}
@
keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
</style>
<script>
	function myFunction() {
		var x = document.getElementById("snackbar")
		x.className = "show";
		setTimeout(function() {
			x.className = x.className.replace("show", "");
		}, 30000);
	}
</script>
<div class="wrapper bgded overlay"
	style="background-image: url('images/demo/backgrounds/index.jpg');">
	<article id="pageintro" class="hoc clear">
		<!-- ################################################################################################ -->
		<h3 class="heading">Diploma Result Zone</h3>
		<p>This Site Provides Exam Result information of Diploma Students
		</p>
		<footer>
			<a class="btn" onclick="myFunction()">Tell it us more</a>
		</footer>
		<!-- ################################################################################################ -->
	</article>
	<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
</div>

<div id="snackbar">This study was carried out to verify all the
	manual process involvedin generating Students Examination Result and to
	seek a way ofautomating the system for eﬀective operations. Since there
	iscontinuous moves towards technological advances that
	enhancedproductivity of labor and free human beings of task
	moreeconomically by machines. Computer and its appreciations have
	become vital tools in economic, industrial and social development
	ofadvanced countries of the world. This system is designed toeﬃciently
	handle processes like inputting scores,</div>
