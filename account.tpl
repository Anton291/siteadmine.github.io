<ul class="breadcrumbs">
            <li><a href="/"><i class="iconfa-home"></i></a> <span class="separator"></span></li>
            <li>�������</li>
            <li class="right">
                    <a href="" data-toggle="dropdown" class="dropdown-toggle"><i class="icon-tint"></i> �������� �����</a>
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

function SexName($par)
{

	if($par == "0") return $par = "�� �����������";
	else if($par == "1") return $par = "�������";
	else if($par == "2") return $par = "�������";

}
function PhoneNumber($par)
{
	if($par == "0") return $par = "���� ��������";
    else if($par >= "1") return $par = $par;

}
function RankName($par)
{
	if($par == "0") return $par = "����� �� �������";
    else if($par >= "1") return $par = $par;

}
function lic($par)
{
	if($par == "0") return $par = "�� c���";
	else if($par == "1") return $par = "C���";
}
function ServerStatus($par)
{
	if($par == "0") return $par = "Offline";
	else if($par == "1") return $par = "Online";
}
function FractionName($par)
{
	if($par == "0") return $par = "����� �� �������";
	else if($par == "1") return $par = "FBI";
	else if($par == "2") return $par = "�����";
	else if($par == "3") return $par = "LSPD";
	else if($par == "4") return $par = "SFPD";
	else if($par == "5") return $par = "LVPD";
	else if($par == "6") return $par = "San Fierro Army";
	else if($par == "7") return $par = "Las Venturas Army";
	else if($par == "8") return $par = "����-������ �����";
	else if($par == "9") return $par = "San Andreas News";
	else if($par == "10") return $par = "LCN";
        else if($par == "11") return $par = "������";
        else if($par == "12") return $par = "������� �����";
else if($par == "13") return $par = "���";
else if($par == "14") return $par = "���������";
else if($par == "15") return $par = "Grove Street Gang";
else if($par == "16") return $par = "The Ballas Gang";
else if($par == "17") return $par = "The Aztecas Gang";
else if($par == "18") return $par = "Los Santos Vagos Gang";
else if($par == "19") return $par = "The Riga Gang";
}
        $sql1 = 'SELECT * FROM `unitpay_payments` ORDER BY id';
        $mysql1 = mysql_query($sql1);
		
		while($r = mysql_fetch_assoc($mysql1))
		{
        	$status = $r['status'];
        	if($status == 0) {$status = '�� ��������';}
            else if($status == 1) {$status = '��������';}
        	$messages .= "						<tr>
                    		<td>{$r['account']}</td>
                    		<td>{$r['sum']}</td>
                    		<td>{$r['dateCreate']}</td>
                            <td>{$r['dateComplete']}</td>
                            <td>{$status}</td>
                 		 </tr> ";
        }
        $sql2 = 'SELECT * FROM `support` ORDER BY id';
        $mysql2 = mysql_query($sql2);
		
		while($r2 = mysql_fetch_assoc($mysql2))
		{

        	$messages2 .= "	<table class='table table-bordered table-striped table-hover'>					<tr>
            				<td><a href='/index.php?mess={$r2['id']}'>ID: {$r2['id']} .Header: {$r2['zag']}</a></td>
                 		 </tr></table> ";
        }
?>
<div class="maincontent">
            <div class="maincontentinner">
			<ul class="nav nav-pills" id="myTab"> 
			    <li class="active">
				<a href="#profile" data-toggle="tab" class="btn btn-lg btn-primary">�������</a></li> 
                <li><a href="#donate" data-toggle="tab" class="btn btn-lg btn-primary">�����</a></li>  
                <?
                if($res['Admin'] >= 6){
                echo '<li><a href="#admin" data-toggle="tab" class="btn btn-lg btn-primary">���.������</a></li>  ';
                echo '<li><a href="#adminlog" data-toggle="tab" class="btn btn-lg btn-primary">����� ���</a></li>';
                echo '<li><a href="#adminsupp" data-toggle="tab" class="btn btn-lg btn-primary">�������� �����</a></li>';}
                ?>
			</ul><br />
<div class="panel-body">
    	<div class="tab-content">  
    	<div class="tab-pane active" id="profile">  

<div class="span4 profile-left">
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

                      <div class="span6"> <table class="table table-bordered table-invoice">
                            <tr>
                                <td class="width30">���:</td>
                                <td class="width70"><strong><? echo $res['Name']; ?></strong></td>
                            </tr>
                            <tr>
                                <td>���� ����������:</td>
                                <td><? echo $res['Level']; ?></td>
                            </tr>
                            <tr>
                                <td>����:</td>
                                <td><? echo $res['Exp']; ?></td>
                            </tr>
							<tr>
                                <td>���� �����������:</td>
                                <td><? echo $res['DataReg']; ?></td>
                            </tr>
							<tr>
                                <td>������:</td>
                                <td><? echo FractionName($res['Member']); ?></td>
                            </tr>
                        </table>

<table class="table table-bordered table-invoice">
                            <tr>
                                <td class="width30">�������� ����:</td>
                                <td class="width70"><? echo $res['Mail']; ?></td>
                            </tr>
                            <tr>
                                <td>��������������� IP:</td>
                                <td><? echo $res['Ip']; ?></td>
                            </tr>
                            <tr>
                                <td>��� IP:</td>
                                <td><? echo $res['EndIp']; ?></td>
                            </tr>
							<tr>
                                <td>�������:</td>
                                <td><? echo $res['Referal']; ?></td>
                            </tr>
							<tr>
                                <td>������:</td>
                                <td><? echo ServerStatus($res['Status']); ?></td>
                            </tr>
                        </table>
                    </div><!--span6-->



</div> 

<div class="tab-pane" id="donate">  
  
      <div class="col-lg-6">
<div class="panel panel-primary">
              <div class="panel-heading">
              </div>
              <div class="panel-body">

<table class="table table-bordered" width="100%"><tbody>
<tr><th><i class="icon-wrench"></i>����� �������</th>
<th></th></tr>
<tr><td>�� ������ �� �������� ������������ ���������� ��������� ������� MaryLand RP, ����� ���������� ����� ����� ������ �������� ��������. � ������� ���� �����, �� ������� ��������������� ���������� �������� ������������, ������� ����� ���������� ����� ������� ������� /mn => �����. 

��������, ���������� �� ���, ���� �� �������� � ���������� ������� ��������. </td>
</tr>
<tr><th><i class="icon-wrench"></i>����������</th>
</tr>
<tr><td> 1 - ������������ � <a href="index.php?page=dagreement">���������������� �����������</a><br/></td>
<tr><td>2 - ���������� ����� ������</td>
<tr><td>3 - ������� �� �������� ��� ������</td>
<tr><td>4 - ����� �� ������ � ��������� ����� ���� �������� ( /mn => ����� => 8.��������� ������)</td>
<tr><td>5 - ������������ � <a href="http://ucp.srl-rp.ru/index.php?page=dhelp">��������</a><br/> </td>
</tr>
</tr>
<tr><th><i class="icon-wrench"></i>������</th>

<tr><td><form class="bs-example form-horizontal" method="post" action="" enctype="utf-8">
<div class="control-group">
               	<p><input class="form-control" name="sum" id="sum" type="text" placeholder="������� �����"  required autofocus></p>
</div>
					<input type="hidden" name="account" id="account"value="<? echo $res['Name']; ?>">
                    <input type="hidden" name="desc" value="Donate MRP">
                      <button type="submit" class="btn btn-primary">����������</button> 
              </form></td>
</tbody>
</table>
              </div>
            </div>
          </div> 

<div class="col-lg-6">
<div class="panel panel-primary" >
              <div class="panel-heading">
              </div>
              <div class="panel-body">
              </div>
            </div>
          </div>   
          

<div class="col-lg-6" >
<div class="panel panel-primary" >
              <div class="panel-heading">
              </div>
              <div class="panel-body" >
             
</div>
            </div>
          </div>      
      
</div>

<div class="tab-pane" id="admin">  

<table class="table table-bordered" width="100%">
<tr><th><? echo $_SESSION['Name']; ?>, ����� ���������� � ������ ��������������!</th></tr>
<tr><td><a href="index.php?page=newsadd">���������� ��������</a></td></tr>
<tr><td><a href="index.php?page=newsedit">���������� ��������� (�������������� / ��������)</a></td></tr>
</table>


</div>	
<div class="tab-pane" id="adminsupp">  

<!--<section id="tables">
           			
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                  		<tr>
                    		<th><center>���</center></th>
                    		<th><center>���������</center></th>
                            <th><center>���������</center></th>
                            <th><center>Email</center></th>
                            <th><center>����</center></th>
                 		 </tr>
               		</thead>
                	<tbody>
<?
									echo $messages2;
								?>
					</tbody>
				</table>
			</section>-->
            ������� �� id ���������.
            <?
									echo $messages2;
								?>


</div> 
<div class="tab-pane" id="adminlog">  
     		<section id="tables">
           			
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                  		<tr>
                    		<th><center>���</center></th>
                    		<th><center>����� �������</center></th>
                    		<th><center>���� �������� �������</center></th>
                            <th><center>���� ������</center></th>
                            <th><center>������</center></th>
                 		 </tr>
               		</thead>
                	<tbody>
<?
									echo $messages;
								?>
					</tbody>
				</table>
			</section>
</div>


</div></div>

                <div class="footer">
                    <div class="footer-left">
                        <span><a href="http://yourgame.su/id_skin_samp.html">�� ���� ������ ����</a></span>
                    </div>
                    <div class="footer-right">
                        <span><a href="http://mp-serv.net">���������� SAMP ��������! (������� �� ������)</a></span>
                    </div>
                </div><!--footer-->


</div></div>




<?
$db->disconnect();
?>

