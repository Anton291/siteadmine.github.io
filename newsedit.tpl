<div class="maincontent">
            <div class="maincontentinner"><?
$db->connect();
mysql_query("SET NAMES cp1251");
$sql = mysql_query('SELECT * FROM news ORDER BY id DESC');
echo '<table class="table table-bordered" width="100%">
<tr><th>Название</th><th>Дата добавления</th></tr>';
while ($res = mysql_fetch_assoc($sql))
{
	echo '<tr><td><a href="index.php?newsedit='.$res['id'].'">'.$res['title'].'</a></td><td>'.$res['date'].'</td></tr>';
}
echo '</table>';
$db->disconnect();
?></div></div>