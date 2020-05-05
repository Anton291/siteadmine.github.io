<?php
$db->connect();
class Ranks
{
	static public function Rank($rank)
    {
		switch($rank)
		{
			case 1: $rank = "New Nigga"; break;
            case 2: $rank = "Baby"; break;
            case 3: $rank = "Young Gangster"; break;
            case 4: $rank = "Gangster"; break;
            case 5: $rank = "Hustla"; break;
            case 6: $rank = "Famous Nigga"; break;
            case 7: $rank = "Dangerous Gang"; break;
            case 8: $rank = " O.G. Scrappy"; break;
            case 9: $rank = "O.G. Rich"; break;
            case 10: $rank = "Daddy"; break;
			default: return false;
		}
		return $rank;
    }
}
$sql = mysql_query("SELECT `nickname`, `fraction`, `level`, `rank` FROM `accounts` WHERE `fraction` = '3'");
$messages1 = "";
while($res = mysql_fetch_assoc($sql))
{
	$members++;
	$messages1 .= "<tr>
						<td>
							<a href='index.php?name={$res['nickname']}'target='_blank'>{$res['nickname']}</a>
						</td>
                        
						<td>
							{$res['level']}
						</td>
                        
                        <td>
							".Ranks::Rank($res['rank'])."
						</td>
					</tr>";
}
unset($sql);
unset($res);
$sql1 = mysql_query("SELECT `nickname`, `fraction`, `rank` FROM `accounts` WHERE `fraction` = '3' and `rank` = '10'");
if($res1 = mysql_fetch_assoc($sql1))
{
	$leadname .="{$res1['nickname']}";
}
else 
{
	$leadname .="Свободное место";
}
$sql2 = mysql_query("SELECT `nickname`, `fraction`, `rank` FROM `accounts` WHERE `fraction` = '3' and `rank` = '9'");
if($res2 = mysql_fetch_assoc($sql2))
{
	$zamname .="{$res2['nickname']}";
}
else 
{
	$zamname .="Свободное место";
}
?>
<div class="maincontent">
	<div class="maincontentinner"> 
                <div class="span4">
                        <table class="table table-bordered table-invoice">
                            <tr>
                                <td class="width30">Лидер:</td>
                                <td class="width70">
                                    <b>
										<? echo $leadname; ?>
                                    </b>
                                </td>
                            </tr>
							<tr>
                                <td class="width30">Заместитель:</td>
                                <td class="width70">
                                    <b>
										<? echo $zamname; ?>								
                                    </b>
                                </td>
                            </tr>
							<tr>
                                <td class="width30">Работников:</td>
                                <td class="width70">
                                    <b id="count_workers">
                                    	<? echo $members; ?>
                                    </b>
                                </td>
                            </tr> 
                            <tr>
                                <td class="width30">Цвет:</td>
                                <td class="width70">
                                    <b id="count_workers">
                                    	<b style="color:#A020F0"> Purple </b>
                                    </b>
                                </td>
                            </tr>                   
                        </table>
                </div><!--span4-->     
                <div class="span5">    
						<h4 class="widgettitle">Список работников</h4>
						<table class="table table-bordered table-invoice" id="ranks">
						 	<thead>
                                <tr>
                                    <th><center>Имя</center></th>
                                    <th><center>Проживает в штате</center></th>
                                    <th><center>Должность</center></th>
                                 </tr>
                            </thead>  
                            <tbody>
                            <?
								echo $messages1;
							?>	
                            </tbody>	
						</table>
						
                        
                </div><!--span6-->
	</div>    
</div>         