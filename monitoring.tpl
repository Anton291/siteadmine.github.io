<?php
$db->connect();
class Ages
{
	static public function Age($age) 
	{
		if( ($age >= 10 && $age < 20) || substr($age, -1) == 0 || substr($age, -1) >= 5) $return = ' ���';
		else if(substr($age, -1) == 1) $return = ' ���';
		else if(substr($age, -1) > 1) $return = ' ����';
		return "$age $return";
	}
	static public function Online($online)
	{
		switch($online)
		{
			case 0: $on = "<p class='text-danger'>OFFLINE</p>"; break;
			case 1: $on = "<p class='text-success'>ONLINE</p>"; break;
			default: return false;
		}
		return $on;
	}
	static public function member($mem)
	{
        $mem = addslashes($mem);
		mysql_real_escape_string($mem);
		$sqls = mysql_query("SELECT `Name`, `Member`, `Level`, `Status` FROM `accounts` WHERE `Member` = '{$mem}'");
		while($ress = mysql_fetch_assoc($sqls))
		{
			switch($ress['fraction'])
			{
				case 0: $member = "����� �� �������"; break;
				case 1: $member = "LSPD"; break;
				case 2: $member = "������"; break;
				case 3: $member = "SFPD"; break;
				case 4: $member = "���������"; break;
				case 5: $member = "�����"; break;
				case 6: $member = "��� �������� �����"; break;
				case 7: $member = "The Ballas Gang"; break;
				case 8: $member = "Grove Street Gang"; break;
				case 9: $member = "Varios Los Aztecas Gang"; break;
				case 10: $member = "Los Santos Vagos Gang"; break;
				case 11: $member = "The Rifa Gang"; break;
				case 12: $member = "The Crips"; break;
				case 13: $member = "Yakuza"; break;
				case 14: $member = "La Cosa Nostra"; break;
				case 15: $member = "Russian Mafia"; break;
				case 16: $member = "Mongols MC"; break;
				case 17: $member = "Sons of Anarchy"; break;
				case 18: $member = "News Los Santos"; break;
				case 19: $member = "��� ������ �����"; break;
				case 20: $member = "FBI"; break;
				case 21: $member = "News San Fiero"; break;
				default: $member = "����� �� �������"; break;	
			}
			$messages3 .= "<tr>
							<td>
								<center>
									<a href='index.php?name={$ress['nickname']}'target='_blank'>{$ress['nickname']}</a>
								</center>
							</td>
							<td>
								<center>
									".Ages::Age($ress['level'])."
								</center>
							</td>
						</tr>";
		}
		return $messages3;
	}
}

$sql = mysql_query("SELECT `nickname`, `fraction`, `level`, `online` FROM `accounts` WHERE `online` = '1'");
$members = "";
$messages1 = "";
while($res = mysql_fetch_assoc($sql))
{
	switch($res['fraction'])
	{
		case 0: $members = "����� �� �������"; break;
		case 1: $members = "LSPD"; break;
		case 2: $members = "������"; break;
		case 3: $members = "SFPD"; break;
		case 4: $members = "���������"; break;
		case 5: $members = "�����"; break;
		case 6: $members = "��� �������� �����"; break;
		case 7: $members = "The Ballas Gang"; break;
		case 8: $members = "Grove Street Gang"; break;
		case 9: $members = "Varios Los Aztecas Gang"; break;
		case 10: $members = "Los Santos Vagos Gang"; break;
		case 11: $members = "The Rifa Gang"; break;
		case 12: $members = "The Crips"; break;
		case 13: $members = "Yakuza"; break;
		case 14: $members = "La Cosa Nostra"; break;
		case 15: $members = "Russian Mafia"; break;
		case 16: $members = "Mongols MC"; break;
		case 17: $members = "Sons of Anarchy"; break;
		case 18: $members = "News Los Santos"; break;
		case 19: $members = "��� ������ �����"; break;
		case 20: $members = "FBI"; break;
		case 21: $members = "News San Fiero"; break;
		default: $members = "����� �� �������"; break;	
	}
	$messages1 .= "<tr>
						<td>
							<center><a href='index.php?name={$res['nickname']}'target='_blank'>{$res['nickname']}</a></center>
						</td>
						<td>
							<center>{$members}</center>
						</td>
						<td>
							<center>".Ages::Age($res['level'])."</center>
						</td>
					</tr>";
}
unset($sql);
unset($res);
$leader = "";
$messages2 = "";
$sql = mysql_query("SELECT `nickname`, `fraction`, `level`, `online` FROM `accounts` WHERE `fraction` > '0'");
while($res = mysql_fetch_assoc($sql))
{
	switch($res['fraction'])
	{
		case 0: $leader = "����� �� �������"; break;
		case 1: $leader = "LSPD"; break;
		case 2: $leader = "������"; break;
		case 3: $leader = "SFPD"; break;
		case 4: $leader = "���������"; break;
		case 5: $leader = "�����"; break;
		case 6: $leader = "��� �������� �����"; break;
		case 7: $leader = "The Ballas Gang"; break;
		case 8: $leader = "Grove Street Gang"; break;
		case 9: $leader = "Varios Los Aztecas Gang"; break;
		case 10: $leader = "Los Santos Vagos Gang"; break;
		case 11: $leader = "The Rifa Gang"; break;
		case 12: $leader = "The Crips"; break;
		case 13: $leader = "Yakuza"; break;
		case 14: $leader = "La Cosa Nostra"; break;
		case 15: $leader = "Russian Mafia"; break;
		case 16: $leader = "Mongols MC"; break;
		case 17: $leader = "Sons of Anarchy"; break;
		case 18: $leader = "News Los Santos"; break;
		case 19: $leader = "��� ������ �����"; break;
		case 20: $leader = "FBI"; break;
		case 21: $leader = "News San Fiero"; break;
		default: $leader = "����� �� �������"; break;	
	}
	$messages2 .= "<tr>
						<td>
							<center><a href='index.php?name={$res['nickname']}'target='_blank'>{$res['nickname']}</a></center>
						</td>
						<td>
							<center>{$leader}</center>
						</td>
						<td>
							<center>".Ages::Online($res['online'])."</center>
						</td>
					</tr>";
}
unset($sql);
unset($res);
?>
<div class="pageheader">
            <form action="results.html" method="post" class="searchbar" />
            </form>
            <div class="pageicon"><span class="iconfa-laptop"></span></div>
            <div class="pagetitle">
                <h5>Name Project</h5>
                <h1>Monitoring</h1>
            </div>
        </div><!--pageheader-->

<div class="maincontent">
	<div class="maincontentinner">
		
        	<ul class="nav nav-pills" id="myTab"> 
    			<li class="active"><a href="#playersonline" data-toggle="tab">������ ������</a></li>  
   	 			<li><a href="#leadermon" data-toggle="tab">������</a></li> 
                <li><a href="#fractionon" data-toggle="tab">�������</a></li>   
  			</ul><br />
  		<div class="tab-content">  
    	<div class="tab-pane active" id="playersonline">  
     		<section id="tables">
           			
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                  		<tr>
                    		<th><center>���</center></th>
                    		<th><center>�����������</center></th>
                    		<th><center>��������� � �����</center></th>
                 		 </tr>
               		</thead>
                	<tbody>
<?
									echo $messages1;
								?>
					</tbody>
				</table>
			</section>
 		</div>  
    	<div class="tab-pane" id="leadermon">  
		<div class="row-fluid"><br />
             <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>�����������</center></th>
                        <th><center>������</center></th>
                      </tr>
                	</thead>
                  	<tbody>
<?
								echo $messages2;
							?>

                        	
                    	</tr>
					</tbody>
				</table>
			 </section><br />
        </div>
		</div>
        <div class="tab-pane" id="fractionon">  
		<div class="row-fluid">
        	<br />
           <div class="tab-content">
            <div class="tab-pane active" id="lspd">  
            
            	<div class="col-lg-7" > <section id="tables">
                
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(1).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div>
            <div class="tab-pane" id="medic">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(2).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div>   
            <div class="tab-pane" id="sfpd">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(3).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div> 
            <div class="tab-pane" id="licensers">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(4).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div> 
            <div class="tab-pane" id="marya">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(5).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div> 
            <div class="tab-pane" id="lva">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(6).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div> 
            <div class="tab-pane" id="ballas">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(7).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div> 
            <div class="tab-pane" id="grove">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(8).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div> 
            <div class="tab-pane" id="aztec">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(9).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div> 
            <div class="tab-pane" id="vagos">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(10).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div> 
            <div class="tab-pane" id="rifa">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(11).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div> 
            <div class="tab-pane" id="crips">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(12).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div>
            <div class="tab-pane" id="yakuza">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(13).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div>
            <div class="tab-pane" id="lcn">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(14).""; ?>
					</tbody>
                    
				</table>
              
			 </section> 
              </div>
            </div>
            <div class="tab-pane" id="rm">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(15).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div>
            <div class="tab-pane" id="mongols">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(16).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div>
            <div class="tab-pane" id="anarchy">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(17).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div>
            <div class="tab-pane" id="nls">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(18).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div>
            <div class="tab-pane" id="lsa">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(19).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div> 
            <div class="tab-pane" id="fbi">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(20).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div> 
            <div class="tab-pane" id="nsf">  
            	<div class="col-lg-7" > <section id="tables">
				<table class="table table-bordered table-striped table-hover">
                	<thead>
                      <tr>
                        <th><center>���</center></th>
                        <th><center>��������� � �����</center></th>
                      </tr>
                	</thead>
                  	<tbody>
 <? echo "".Ages::member(21).""; ?>
					</tbody>
				</table>
			 </section> </div>
            </div> 
           </div>  
          
            <div class="bs-example" align="right">
              <ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
                <li class="active"><a href="#lspd" data-toggle="tab">LSPD</a></li>
                <li><a href="#medic" data-toggle="tab">������</a></li>
                <li><a href="#sfpd" data-toggle="tab">SFPD</a></li>
                <li><a href="#licensers" data-toggle="tab">���������</a></li>
                <li><a href="#marya" data-toggle="tab">�����</a></li>
                <li><a href="#lva" data-toggle="tab">��� �������� �����</a></li>
                <li><a href="#ballas" data-toggle="tab">The Ballas Gang</a></li>
                <li><a href="#grove" data-toggle="tab">Grove Street Gang</a></li>
                <li><a href="#aztec" data-toggle="tab">Varios Los Aztecas Gang</a></li>
                <li><a href="#vagos" data-toggle="tab">Los Santos Vagos Gang</a></li>
                <li><a href="#rifa" data-toggle="tab">The Rifa Gang</a></li>
                <li><a href="#crips" data-toggle="tab">The Crips</a></li>
                <li><a href="#yakuza" data-toggle="tab">Yakuza</a></li>
                <li><a href="#lcn" data-toggle="tab">La Cosa Nostra</a></li>
                <li><a href="#rm" data-toggle="tab">Russian Mafia</a></li>
                <li><a href="#mongols" data-toggle="tab">Mongols MC</a></li>
                <li><a href="#anarchy" data-toggle="tab">Sons of Anarchy</a></li>
                <li><a href="#nls" data-toggle="tab">News Los Santos</a></li>
                <li><a href="#lsa" data-toggle="tab">��� ������ �����</a></li>
                <li><a href="#fbi" data-toggle="tab">FBI</a></li>
                <li><a href="#nsf" data-toggle="tab">News San Fiero</a></li>
              </ul>
            </div>

          </div>
  
        </div>

            </div>
                <div class="footer">
                    <div class="footer-left">
                        <span>&copy; 2013-2014 MARYLAND ROLE PLAY.</span>
                    </div>
                    <div class="footer-right">
                        <span><a href="http:///"></a> BY ILYA KARPOV</span>
                    </div>
                </div><!--footer-->
	</div>
</div>
          
<?
$db->disconnect();
?>

