<div class="pageheader">
            <form action="results.html" method="post" class="searchbar" />
            </form>
            <div class="pageicon"><span class="iconfa-laptop"></span></div>
            <div class="pagetitle">
                <h5>Name Project</h5>
                <h1>News</h1>
            </div>
        </div><!--pageheader-->
            

		<div class="maincontent">
			<div class="maincontentinner">
<?
		$db->connect();
		mysql_query("SET NAMES cp1251");
		$sql = mysql_query('SELECT * FROM `news` ORDER BY `id` DESC LIMIT 50');
		while ($result = mysql_fetch_assoc($sql))
		{
        	$textmes = $result['message'];
			//echo mb_strlen($textmes, 'utf-8');
			if(mb_strlen($textmes, 'windows-1251') > 300)
			{
				$textmes = smartTrim($textmes,300);	
			}
			echo '	
				<span class="label label-info">
                	'.$result['date'].'
                </span>
                <hr/>
            	<a href="index.php?news='.$result['id'].'" style="font-size:150%;">'.$result['title'].'</a>
				<span>
                	<p>'.$textmes.'</p>
              	</span> 
				<div align="right">
               	 	<span class="label label-default">
                		Автор: '.$result['autor'].'
                    </span>
                 </div>


			<hr/>
';}$db->disconnect();
?>
                <div class="footer">
                    <div class="footer-left">
                        <span><a href="http://yourgame.su/gta/samp/websa/">Готовый сайт SAMP</a></span>
                    </div>
                    <div class="footer-right">
                        <span><a href="http://mp-serv.net">Мониторинг САМП серверов</a></span>
                    </div>
                </div><!--footer-->
			
			</div> <!-- maincontentinner -->
		</div> <!-- maincontent -->