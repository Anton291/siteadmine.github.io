<ul class="breadcrumbs">
            <li><a href="dashboard.html"><i class="iconfa-home"></i></a> <span class="separator"></span></li>
            <li>�������<span class="separator"></span></li>
            <li>���. �������<span class="separator"></span></li>
            <li>��������� ����</li>
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
			case 1: $rank = "������"; break;
            case 2: $rank = "�������� ��������"; break;
            case 3: $rank = "�����������"; break;
            case 4: $rank = "��������"; break;
            case 5: $rank = "��������"; break;
            case 6: $rank = "�������"; break;
            case 7: $rank = "�������"; break;
            case 8: $rank = "��������"; break;
            case 9: $rank = "������� ��������"; break;
            case 10: $rank = "��������"; break;
			default: return false;
		}
		return $rank;
    }
}
$sql = mysql_query("SELECT `nickname`, `fraction`, `level`, `rank` FROM `accounts` WHERE `fraction` = '10'");
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
$sql1 = mysql_query("SELECT `nickname`, `fraction`, `rank` FROM `accounts` WHERE `fraction` = '10' and `rank` = '10'");
if($res1 = mysql_fetch_assoc($sql1))
{
	$leadname .="{$res1['nickname']}";
}
else 
{
	$leadname .="��������� �����";
}
$sql2 = mysql_query("SELECT `nickname`, `fraction`, `rank` FROM `accounts` WHERE `fraction` = '10' and `rank` = '9'");
if($res2 = mysql_fetch_assoc($sql2))
{
	$zamname .="{$res2['nickname']}";
}
else 
{
	$zamname .="��������� �����";
}
?>
<div class="maincontent">
	<div class="maincontentinner"> 
                <div class="span4">
                        <table class="table table-bordered table-invoice">
                            <tr>
                                <td class="width30">�����:</td>
                                <td class="width70">
                                    <b>
										<? echo $leadname; ?>
                                    </b>
                                </td>
                            </tr>
							<tr>
                                <td class="width30">�����������:</td>
                                <td class="width70">
                                    <b>
										<? echo $zamname; ?>								
                                    </b>
                                </td>
                            </tr>
							<tr>
                                <td class="width30">����������:</td>
                                <td class="width70">
                                    <b id="count_workers">
                                    	<? echo $members; ?>
                                    </b>
                                </td>
                            </tr>                    
                        </table>
                </div><!--span4-->     
                <div class="span5">    
						<h4 class="widgettitle">������ ����������</h4>
						<table class="table table-bordered table-invoice" id="ranks">
						 	<thead>
                                <tr>
                                    <th><center>���</center></th>
                                    <th><center>��������� � �����</center></th>
                                    <th><center>���������</center></th>
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