<ul class="breadcrumbs">
            <li><a href="dashboard.html"><i class="iconfa-home"></i></a> <span class="separator"></span></li>
            <li>Фракции<span class="separator"></span></li>
            <li>Гос. Фракции<span class="separator"></span></li>
            <li>Department of Defence</li>
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
<?php
$db->connect();
class Ranks
{
	static public function Rank($rank)
    {
		switch($rank)
		{
			case 1: $rank = "Рядовой"; break;
            case 2: $rank = "Специалист"; break;
            case 3: $rank = "Капрал"; break;
            case 4: $rank = "Сержант"; break;
            case 5: $rank = "Мастер сержант"; break;
            case 6: $rank = "Первый сержант"; break;
            case 7: $rank = "Уорент-Офицер"; break;
            case 8: $rank = "Ст. Уорент-Офицер"; break;
            case 9: $rank = "Второй Лейтенант"; break;
            case 10: $rank = "Первый Лейтенант"; break;
            case 11: $rank = "Капитан"; break;
            case 12: $rank = "Майор"; break;
            case 13: $rank = "Подполковник"; break;
            case 14: $rank = "Полковник"; break;
            case 15: $rank = "Генерал"; break;
            case 16: $rank = "Министр"; break;
			default: return false;
		}
		return $rank;
    }
}
$sql = mysql_query("SELECT `nickname`, `fraction`, `level`, `rank` FROM `accounts` WHERE `fraction` = '8'");
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
$sql1 = mysql_query("SELECT `nickname`, `fraction`, `rank` FROM `accounts` WHERE `fraction` = '8' and `rank` = '16'");
if($res1 = mysql_fetch_assoc($sql1))
{
	$leadname .="{$res1['nickname']}";
}
else 
{
	$leadname .="Свободное место";
}
$sql2 = mysql_query("SELECT `nickname`, `fraction`, `rank` FROM `accounts` WHERE `fraction` = '8' and `rank` = '15'");
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