<?PHP
if($_POST['account']){
include('../engine/database.php');
$db = new DataBase;
$db->connect();
$accname = mysql_real_escape_string($_POST['account']);
$sql = mysql_num_rows(mysql_query("SELECT * FROM accounts WHERE nickname='$accname'"));
if($sql > 0)
{
        echo '<button type="button" class="btn btn-success disabled">Аккаунт найден в базе данных.</button>';
}
else
{
        echo '<button type="button" class="btn btn-danger disabled">Внимание!!! Аккаунт не найден в базе данных.</button>';      
} }
?>