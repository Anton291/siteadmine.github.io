<ul class="breadcrumbs">
            <li><a href="/"><i class="iconfa-home"></i></a> <span class="separator"></span></li>
            <li>Просмотр профиля</li>
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
$namenick = $_GET['name'];
$namenick = addslashes($namenick);
mysql_real_escape_string($namenick);
$sql = mysql_query("SELECT * FROM accounts WHERE nickname='$namenick'");
$res = mysql_fetch_assoc($sql);

function SexName($par)
{

	if($par == "0") return $par = "Не определился";
	else if($par == "1") return $par = "Мужской";
	else if($par == "2") return $par = "Женский";

}
function PhoneNumber($par)
{
	if($par == "0") return $par = "Нету телефона";
    else if($par >= "1") return $par = $par;

}
function lic($par)
{
	if($par == "0") return $par = "Не cдал";
	else if($par == "1") return $par = "Cдал";
}
function FractionName($par)
{
	if($par == "0") return $par = "Нигде не состоит";
	else if($par == "1") return $par = "LSPD";
	else if($par == "2") return $par = "Медики";
	else if($par == "3") return $par = "SFPD";
	else if($par == "4") return $par = "Лицензеры";
	else if($par == "5") return $par = "Мэрия";
	else if($par == "6") return $par = "Лас Вентурас Армия";
	else if($par == "7") return $par = "The Ballas Gang";
	else if($par == "8") return $par = "Grove Street Gang";
	else if($par == "9") return $par = "Varios Los Aztecas Gang";
	else if($par == "10") return $par = "Los Santos Vagos Gang";
	else if($par == "11") return $par = "The Rifa Gang";
	else if($par == "12") return $par = "The Crips";
	else if($par == "13") return $par = "Yakuza";
	else if($par == "14") return $par = "La Cosa Nostra";
	else if($par == "15") return $par = "Russian Mafia";
	else if($par == "16") return $par = "Mongols MC";
	else if($par == "17") return $par = "Sons of Anarchy";
	else if($par == "18") return $par = "News Los Santos";
	else if($par == "19") return $par = "Лос Сантос Армия";
	else if($par == "20") return $par = "FBI";
	else if($par == "21") return $par = "News San Fiero";
}
?>
function ServerStatus($par)
{
	if($par == "0") return $par = "Offline";
	else if($par == "1") return $par = "Online";
}
?>

<div class="maincontent">
            <div class="maincontentinner">

<table class="table table-bordered" width="100%"><tbody>
<tr><th>Статистика аккаунта</th><th><? echo $res['Name'] ?></th></tr>
<tr><td>Игровой уровень:</td>
<td><? echo $res['level']; ?></td>
</tr>
<tr><td>Количество EXP:</td>
<td><? echo $res['Exp']; ?></td>
</tr>
<tr><td>Варны (кол-во):</td>
<td><? echo $res['warn']; ?></td>
</tr>
<tr><td>Пол:</td>
<td><? echo SexName($res['sex']) ;?></td>
</tr>
<tr><td>Наличные:</td>
<td><? echo $res['money']; ?> $</td>
</tr>
<tr>
<td>В Банке:</td>
<td><? echo $res['bank']; ?> $</td>
</tr>
<tr>
<td>Организация:</td>
<td><? echo FractionName($res['Member']); ?></td>
</tr>
<tr>
<td>Ранг:</td>
<td><? echo $res['Rank']; ?></td>
</tr>
<tr>
<td>Номер телефона:</td>
<td><? echo PhoneNumber($res['Number']); ?></td>
</tr>
<tr>
<td>Организация:</td>
<td><? echo ServerStatus($res['Member']); ?></td>
</tr>
<tr>
<td>Дата регистрации:</td>
<td><? echo $res['DataReg']; ?></td>
</tr>
<tr>
<td>Донат-очков:</td>
<td><? echo lic($res['Doante']) ;?></td>
</tr>
</tbody>
</table>

                <div class="footer">
                    <div class="footer-left">
                        <span><a href="http://yourgame.su/id_skin_samp.html">ИД скинов SA:MP</a></span>
                    </div>
                    <div class="footer-right">
                        <span><a href="http://mp-serv.net">Мониторинг САМП серверов</a></span>
                    </div>
                </div><!--footer-->
</div></div>




<?
$db->disconnect();
?>

