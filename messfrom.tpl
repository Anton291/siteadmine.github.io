<div class="maincontent">
	<div class="maincontentinner">
<?
$db->connect();
$sql = mysql_query('SELECT * FROM support WHERE id="'.$_SESSION['idsupp'].'"');
$res = mysql_fetch_assoc($sql);
if($res['selection'] == 1) { $types = 'Жалоба'; }
else if($res['selection'] == 2) { $types = 'Вопрос'; }
echo '<table class="table table-bordered">
			<tr>
				<th colspan="2">Напишите ответ</th>
            </tr>
			<form action="index.php?page=suppsave" method="post">
            <tr>
                <td colspan="2">
                <label>Заголовок</label><input type="text" disabled="disabled" value="'.$res['zag'].'" class="span8">
                <label>Кому</label><input type="text" name="email" id="email" disabled="disabled" value="'.$res['email'].'" class="span8"><input type="hidden" name="email" id="email" value="'.$res['email'].'" class="span8">
                <label>Тип</label><input type="text" disabled="disabled" value="'.$types.'" class="span8">
                </td>
            </tr>
			<tr>
            	<td colspan="2">
                <textarea name="message" id="message" class="span8" rows="10" placeholder="Введите сообщение..."></textarea>
                </td>
          	</tr>
			<tr>
            	<td>
                <button type="submit" class="btn btn-success">Отправить сообщение</button></form>
                </td>
			</tr>
	</table>';
$db->disconnect();
?>
	</div>
</div>    