		<ul class="breadcrumbs">
            <li><a href="/"><i class="iconfa-home"></i></a> <span class="separator"></span></li>
            <li>���������</li>
            <li class="right">
                    <a href="" data-toggle="dropdown" class="dropdown-toggle"><i class="icon-tint"></i> Color Skins</a>
                    <ul class="dropdown-menu pull-right skin-color">
                        <li><a href="default">Default</a></li>
                        <li><a href="navyblue">Navy Blue</a></li>
                        <li><a href="palegreen">Pale Green</a></li>
                        <li><a href="red">Red</a></li>
                        <li><a href="green">Green</a></li>
                        <li><a href="brown">Brown</a></li>
                    </ul>
            </li>
        </ul>
<?
$db->connect();
$namenick = $_SESSION['Name'];
$namenick = addslashes($namenick);
mysql_real_escape_string($namenick);
$sql = mysql_query("SELECT * FROM accounts WHERE Name='$namenick'");
$res = mysql_fetch_assoc($sql);
?>
		<div class="pageheader">
            <form action="results.html" method="post" class="searchbar" />
            </form>
            <div class="pageicon"><span class="iconfa-laptop"></span></div>
            <div class="pagetitle">
                <h5>Name Project</h5>
                <h1>��������� ��������</h1>
            </div>
        </div><!--pageheader-->
<div class="maincontent">
        <div class="maincontentinner">
        
        
        
        
             <div class="row-fluid">
             
             
<? echo $lol; echo $changeemail;?>
            <?
         if(!$res['Mail']) {  echo ' <div class="alert alert-dismissable alert-warning">
                <button type="button" class="close" data-dismiss="alert">&times;</button>
                <h4>Warning!</h4>
                <p>�������� � ��� �� ���������� Email �����. ���������� ���, ��� ����� �������������. � ������� ���� �� ������� ������������ ������� ������.</p>
              </div>';}
?>					<div class="span4 profile-left">
						<div class="widgetbox box-inverse">
                            <div class="headtitle">
                                <h4 class="widgettitle">���������������� ����</h4>
                            </div>
                            <div class="widgetcontent">
                                <div class="profilethumb">
                                    <img src="template/images/skins/<? echo $res['Char']; ?>.png" alt="" class="img-polaroid" />
                                </div><!--profilethumb-->
                            </div>
<div class="headtitle">
                                <h4 class="widgettitle">����������� ����</h4>
                            </div>
                            <div class="widgetcontent">
                                <div class="profilethumb">
                                    <img src="template/images/skins/<? echo $res['FracSkin']; ?>.png" alt="" class="img-polaroid" />
                                </div><!--profilethumb-->
                            </div>
                        </div>
					</div><!-- span4 -->

	 <div class="span8">
			<div class="widgetbox box-inverse">
            
                <h4 class="widgettitle">����� ������</h4>
                <div class="widgetcontent wc1">
                    <form class="stdform" method="post" action="index.php?page=changepass" />
                            <div class="par control-group">
                            		<label class="control-label" for="firstname">������� ������ ������</label>
                                <div class="controls"><input type="text" name="Password" class="input-large" value="" placeholder="������� ������ ������" /></div>
                            </div>
                            
                            <div class="control-group">
                            		<label class="control-label" for="firstname">������� ����� ������</label>
                                <div class="controls"><input type="text" name="rePassword" class="input-large" value="" placeholder="������� ����� ������"/></div>
                            </div>
                             
                             <div class="control-group">
                             		<label class="control-label" for="firstname">������� ����� ������ ��� ���</label>
                                <div class="controls"><input type="text" name="rePassword2" class="input-large" value="" placeholder="������� ����� ������ ��� ���"/></div>
                            </div>        
                                                    
                            <p class="stdformbutton">
                                    <button class="btn btn-primary">�����������</button>
                            </p>
                    </form>
                </div><!--widgetcontent-->
                <h4 class="widgettitle">����� �����</h4>
                <div class="widgetcontent wc1">
                    <form class="stdform" method="post" action="index.php?page=changeemail" />
                            
                            <div class="par control-group">
                                    <label class="control-label" for="email">���� �����</label>
                                <div class="controls"><input type="text"disabled="disabled" name="Mail" value="" placeholder="<? echo $res['email'];?>" class="input-xlarge" /></div>
                            </div>
                            
                            <div class="par control-group">
                                    <label class="control-label" for="email">������� ����� �����</label>
                                <div class="controls"><input type="text" name="Mail" value="" placeholder="������� ����� ����� " class="input-xlarge" /></div>
                            </div>

							<div class="par control-group">
                                    <label class="control-label" for="email">����������� ����� �����</label>
                                <div class="controls"><input type="text" name="reMail" value="" placeholder="����������� ����� ����� " class="input-xlarge" /></div>
                            </div>
                                                    
                            <p class="stdformbutton">
                                    <button class="btn btn-primary">�����������</button>
                            </p>
                    </form>
                </div><!--widgetcontent-->
            </div><!--widget-->
		</div>
	</div>

                <div class="footer">
                    <div class="footer-left">
                        <span></span>
                    </div>
                    <div class="footer-right">
                        <span><a href="http://mp-serv.net">������� �� ������!</a></span>
                    </div>
                </div><!--footer-->


</div></div>




<?
$db->disconnect();
?>

