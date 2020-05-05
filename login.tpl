<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Авторизация</title>
<link rel="stylesheet" href="template/css/style.default.css" type="text/css" />
<link rel="stylesheet" href="template/css/style.shinyblue.css" type="text/css" />

<script type="text/javascript" src="template/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="template/js/jquery-migrate-1.1.1.min.js"></script>
<script type="text/javascript" src="template/js/jquery-ui-1.9.2.min.js"></script>
<script type="text/javascript" src="template/js/modernizr.min.js"></script>
<script type="text/javascript" src="template/js/bootstrap.min.js"></script>
<script type="text/javascript" src="template/js/jquery.cookie.js"></script>
<script type="text/javascript" src="template/js/custom.js"></script>
<meta http-equiv="content-type" content="text/html; charset=windows-1251"></head>

<body class="loginpage">

<div class="loginpanel">
    <div class="loginpanelinner">
       
        <form action="index.php?page=login" method="post" />
            <? echo $login; ?> <div class="inputwrapper login-alert">
                <div class="alert alert-error">Invalid username or password</div>
            </div>
            	
            <? if(!$_SESSION['Name'])
            	{
                echo '<div class="inputwrapper animate1 bounceIn">
                    		<input type="text" name="name" id="username" placeholder="Введите Ваш ник" />
                	  </div>
                	  <div class="inputwrapper animate2 bounceIn">
                    		<input type="password" name="password" id="password" placeholder="Введите Ваш пароль" />
                   
                	  </div>
                  	  <a href="index.php?page=recovery"><span class="label label-warning">Восстановить пароль?</span> </a>
                	  <div class="inputwrapper animate3 bounceIn">
                			<button name="submit">Войти</button>
                	  </div>';
                 }
            ?>
            
        </form>
    </div><!--loginpanelinner-->
</div><!--loginpanel-->

<div class="loginfooter">
    <p>Name Project</p>
</div>

</body>
</html>