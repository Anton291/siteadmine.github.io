<div class="pageheader">
            <form action="results.html" method="post" class="searchbar" />
            </form>
            <div class="pageicon"><span class="iconfa-laptop"></span></div>
            <div class="pagetitle">
                <h5>Name Project</h5>
                <h1>News</h1>
            </div>
        </div><!--pageheader-->
<?
$db = new DataBase;
if ($_GET['news'])
{
		$db->connect();
		mysql_query("SET NAMES cp1251");
        $ids = (int)$_GET['news'];
		$sql = mysql_query("SELECT * FROM news WHERE id = '$ids'");
		$result = mysql_fetch_assoc($sql);
        
		echo '<div class="maincontent">
            <div class="maincontentinner">


		<span class="label label-info">'.$result['date'].'</span>
                    	<hr/>
            
						<a href="index.php?news='.$result['id'].'" style="font-size:150%;">'.$result['title'].'</a>
			
						<span><p>'.$result['message'].'</p></span> 
		
					<div align="right"><span class="label label-default">Автор: '.$result['autor'].'</span></div>


			<hr/>

                <div class="footer">
                    <div class="footer-left">
                        <span><a href="http://yourgame.su/gta/samp/websa/">Готовый сайт SAMP</a></span>
                    </div>
                    <div class="footer-right">
                        <span><a href="http://mp-serv.net">Мониторинг САМП серверов</a></span>
                    </div>
                </div><!--footer-->
	 </div> </div>';
		$db->disconnect();
}
?>