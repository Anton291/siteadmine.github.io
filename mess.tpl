<?
$db = new DataBase;
if ($_GET['mess'])
{
		$db->connect();
		mysql_query("SET NAMES cp1251");
        $ids = $_GET['mess'];
		$sql = mysql_query("SELECT * FROM support WHERE id = '$ids'");
		$result = mysql_fetch_assoc($sql);
        $selections = $result['selection'];
        	if($selections == 1) {$selections = 'Жалоба';}
            else if($selections == 2) {$selections = 'Вопрос';}
        $_SESSION['idsupp'] = $result['id'];
		echo ' <div class="maincontent">
            <div class="maincontentinner">
                <div class="messagepanel">
                    <div class="messagecontent">

                        <div class="message">
                            <div class="messageview">
                                '.$suppsdelete.'
                                <div class="btn-group pull-right">
                            <form action="index.php?page=suppdel" method="post">
    <button type="submit" class="btn btn-danger">Удалить</button></form>
      <form action="index.php?page=suppedit" method="post"><button type="submit" class="btn btn-success">Ответить</button></form>
                                </div>
                                <h1 class="subject">Название: '.$result['zag'].'</h1>
                                <div class="msgauthor">
                                        <span class="date pull-right">'.$result['date'].'</span>
                                         <h5>Type: <span>'.$selections.'</span></h5>
                                        <h5>Autor: <span>'.$result['email'].'</span></h5>
                                </div><!--msgauthor-->
                                <div class="msgbody">
                                    '.$result['post'].'
                                </div><!--msgbody-->

	
                               
                              
                            </div><!--messageview-->
                            
                        </div><!--messageright-->
';
		$db->disconnect();
}
?>

                
                                <div class="footer">
                    <div class="footer-left">
                        <span></span>
                    </div>
                    <div class="footer-right">
                        <span></span>
                    </div>
                </div><!--footer-->
                
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->