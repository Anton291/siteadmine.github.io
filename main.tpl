<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>UCP (YourGame.su)</title>
<link rel="stylesheet" href="template/css/style.default.css" type="text/css" />
<link rel="stylesheet" href="template/css/responsive-tables.css" />
<link rel="stylesheet" href="template/css/bootstrap-fileupload.min.css" type="text/css" />
<script type="text/javascript" src="template/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="template/js/jquery-migrate-1.1.1.min.js"></script>
<script type="text/javascript" src="template/js/jquery-ui-1.9.2.min.js"></script>
<script type="text/javascript" src="template/js/bootstrap.min.js"></script>
<script type="text/javascript" src="template/js/jquery.uniform.min.js"></script>
<script type="text/javascript" src="template/js/jquery.cookie.js"></script>
<script type="text/javascript" src="template/js/modernizr.min.js"></script>
<script type="text/javascript" src="template/js/custom.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="template/js/excanvas.min.js"></script><![endif]-->
<meta http-equiv="content-type" content="text/html; charset=windows-1251"></head>

<body>

<div class="mainwrapper">
    
    <div class="header">

        <div class="headerinner">
            <ul class="headmenu">
                <li class="right">
                    <div class="userloggedinfo">
                        
                        <div class="userinfo">
                        	<? if(!$_SESSION['Name'])
                            {
                            echo '<h5>Здравствуйте, гость!</h5>
                            <ul>
                                <li><a href="#ModalPlayersInFraction" data-toggle="modal">Войти в аккаунт</a></li>
                            </ul>';
                            }
                            else 
                            {
                            echo '<h5>'.$_SESSION['Name'].'</h5>
                            <ul>
                                <li><a href="index.php?page=acc">ПРОФИЛЬ</a></li>
                                <li><a href="index.php?page=setting">НАСТРОЙКИ</a></li>
                                <li><a href="index.php?page=logout">ВЫЙТИ</a></li>
                            </ul>';
                            }
                            ?>
                        </div>
                    </div>
                </li>
            </ul><!--headmenu-->
        </div>
    </div>
<div aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" class="modal hide fade in" id="ModalPlayersInFraction">
    <div class="modal-header">
        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">&times;</button>
        <h3 id="myModalLabel">Введите данные</h3>
    </div>
    <div class="modal-body">
               <form action="index.php?page=login" method="post" />
            <div class="inputwrapper animate1 bounceIn">
               <center> <input type="text" name="name" id="username" placeholder="Введите Ваш ник" /> </center>
            </div>
            <div class="inputwrapper animate2 bounceIn">
              <center> <input type="password" name="password" id="password" placeholder="Введите Ваш пароль" /> </center>
               
            </div>
             <center> <a href="index.php?page=recovery">Восстановить пароль?</a></center>
            <div class="inputwrapper animate3 bounceIn">
            
              
            </div>
            
        
    </div>
    <div class="modal-footer">
       <button name="submit" class="btn btn-primary btn-rounded">Войти</button> </form><button data-dismiss="modal" class="btn">Закрыть</button>
    </div>
</div>
    <div class="leftpanel">
        
        <div class="leftmenu">        
            <ul class="nav nav-tabs nav-stacked">
            	<li class="nav-header">Навигация</li>
                
                <li <?=(!isset($_GET['page']) ? 'class="active"' : '')?>><a href="/"><span class="iconfa-laptop"></span> ГЛАВНАЯ</a></li>
                <li <?=(isset($_GET['page']) && $_GET['page'] == 'acc' ? 'class="active"' : '')?>><a href="index.php?page=acc"><span class="iconfa-user"></span> ПРОФИЛЬ</a></li>
                <li <?=(isset($_GET['page']) && $_GET['page'] == 'donate' ? 'class="active"' : '')?>><a href="index.php?page=donate"><span class="iconfa-money"></span> ДОНАТ</a></li>
                <li <?=(isset($_GET['page']) && $_GET['page'] == 'forum' ? 'class="active"' : '')?>><a href="http://sa-mp.pp.ua"><span class="iconfa-laptop"></span> ФОРУМ</a></li>
                <li <?=(isset($_GET['page']) && $_GET['page'] == 'setting' ? 'class="active"' : '')?>><a href="index.php?page=setting"><span class="iconfa-wrench"></span> НАСТРОЙКИ</a></li>
                <li <?=(isset($_GET['page']) && $_GET['page'] == 'support' ? 'class="active"' : '')?>><a href="index.php?page=support"><span class="iconfa-question-sign"></span> SUPPORT </a></li>
            </ul>
        </div><!--leftmenu-->
        
    </div><!-- leftpanel -->
    
    <div class="rightpanel">
            
        {content}
        
    </div><!--rightpanel-->
    
</div><!--mainwrapper-->

<script type="text/javascript">
    jQuery(document).ready(function() {
        
      // simple chart
		var flash = [[0, 11], [1, 9], [2,12], [3, 8], [4, 7], [5, 3], [6, 1]];
		var html5 = [[0, 5], [1, 4], [2,4], [3, 1], [4, 9], [5, 10], [6, 13]];
      var css3 = [[0, 6], [1, 1], [2,9], [3, 12], [4, 10], [5, 12], [6, 11]];
			
		function showTooltip(x, y, contents) {
			jQuery('<div id="tooltip" class="tooltipflot">' + contents + '</div>').css( {
				position: 'absolute',
				display: 'none',
				top: y + 5,
				left: x + 5
			}).appendTo("body").fadeIn(200);
		}
	
			
		var plot = jQuery.plot(jQuery("#chartplace"),
			   [ { data: flash, label: "Flash(x)", color: "#6fad04"},
              { data: html5, label: "HTML5(x)", color: "#06c"},
              { data: css3, label: "CSS3", color: "#666"} ], {
				   series: {
					   lines: { show: true, fill: true, fillColor: { colors: [ { opacity: 0.05 }, { opacity: 0.15 } ] } },
					   points: { show: true }
				   },
				   legend: { position: 'nw'},
				   grid: { hoverable: true, clickable: true, borderColor: '#666', borderWidth: 2, labelMargin: 10 },
				   yaxis: { min: 0, max: 15 }
				 });
		
		var previousPoint = null;
		jQuery("#chartplace").bind("plothover", function (event, pos, item) {
			jQuery("#x").text(pos.x.toFixed(2));
			jQuery("#y").text(pos.y.toFixed(2));
			
			if(item) {
				if (previousPoint != item.dataIndex) {
					previousPoint = item.dataIndex;
						
					jQuery("#tooltip").remove();
					var x = item.datapoint[0].toFixed(2),
					y = item.datapoint[1].toFixed(2);
						
					showTooltip(item.pageX, item.pageY,
									item.series.label + " of " + x + " = " + y);
				}
			
			} else {
			   jQuery("#tooltip").remove();
			   previousPoint = null;            
			}
		
		});
		
		jQuery("#chartplace").bind("plotclick", function (event, pos, item) {
			if (item) {
				jQuery("#clickdata").text("You clicked point " + item.dataIndex + " in " + item.series.label + ".");
				plot.highlight(item.series, item.datapoint);
			}
		});
    
        
        //datepicker
        jQuery('#datepicker').datepicker();
        
        // tabbed widget
        jQuery('.tabbedwidget').tabs();
        
        
    
    });
</script>
</body>
</html>
