<div class="maincontent">
	<div class="maincontentinner">
<?
$db->connect();
$sql = mysql_query('SELECT * FROM support WHERE id="'.$_SESSION['idsupp'].'"');
$res = mysql_fetch_assoc($sql);
if($res['selection'] == 1) { $types = '������'; }
else if($res['selection'] == 2) { $types = '������'; }
echo '<table class="table table-bordered">
			<tr>
				<th colspan="2">�������� �����</th>
            </tr>
			<form action="index.php?page=suppsave" method="post">
            <tr>
                <td colspan="2">
                <label>���������</label><input type="text" disabled="disabled" value="'.$res['zag'].'" class="span8">
                <label>����</label><input type="text" name="email" id="email" disabled="disabled" value="'.$res['email'].'" class="span8"><input type="hidden" name="email" id="email" value="'.$res['email'].'" class="span8">
                <label>���</label><input type="text" disabled="disabled" value="'.$types.'" class="span8">
                </td>
            </tr>
			<tr>
            	<td colspan="2">
                <textarea name="message" id="message" class="span8" rows="10" placeholder="������� ���������..."></textarea>
                </td>
          	</tr>
			<tr>
            	<td>
                <button type="submit" class="btn btn-success">��������� ���������</button></form>
                </td>
			</tr>
	</table>';
$db->disconnect();
?>
	</div>
</div>    