<div class="maincontent">
            <div class="maincontentinner"><?
$db->connect();
mysql_query("SET NAMES cp1251");
$sql = mysql_query('SELECT * FROM news WHERE id="'.$_SESSION['newsedit'].'"');
$res = mysql_fetch_assoc($sql);
echo '<table class="table table-bordered">
<tr><th colspan="2">Редактирование новости</th></tr>
<form action="index.php?page=newssave" method="post"><input type="hidden" name="id" value="'.$res['id'].'"><tr><td colspan="2"> <input type="text" class="form-control" name="title"  value="'.$res['title'].'"></td></tr>
<tr><td colspan="2"> <textarea class="form-control" name="message" rows="3" id="textArea">'.$res['message'].'</textarea></td></tr>
<tr><td><button type="submit" class="btn btn-success">Сохранить изменения</button></td></form><form action="index.php?page=newsdelete" method="post"><input type="hidden" name="id" value="'.$res['id'].'"><td><button type="submit" class="btn btn-danger">Удалить новость</button></td></td></form></tr>
</table>';
$db->disconnect();
?></div></div>