<ul class="breadcrumbs">
            <li><a href="/"><i class="iconfa-home"></i></a> <span class="separator"></span></li>
            <li>Поддержка</li>
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
<div class="maincontent">
            <div class="maincontentinner">

  			<? echo $suppsadd; ?>
            <div class="widgetbox box-inverse">
                <h4 class="widgettitle">Отправить вопрос/жалобу</h4>
                <div class="widgetcontent nopadding">
                    <form class="stdform stdform2" method="post" action="index.php?page=support" />
                            <p>
                                <label>Выберите из списка</label>
                                <span class="field"><select name="selection" class="uniformselect">
                                    <option value="1" />Жалоба
                                    <option value="2" />Вопрос
                                </select></span>
                            </p>
                            
                            <p>
                                <label>Заголовок</label>
                                <span class="field"><input type="text" name="zag" class="input-xxlarge" /></span>
                            </p>
                            
                            <p>
                                <label>Ваш Email для ответа.</label>
                                <span class="field"><input type="text" name="email" class="input-xxlarge" /></span>
                            </p>
                            
                            <p>
                                <label>Введите сообщение <small>Напишите ясно и точно, что случилось.</small></label>
                                <span class="field"><textarea cols="80" rows="5" name="post" class="span5"></textarea></span>
                            </p>
                            

                                                    
                            <p class="stdformbutton">
                                <button class="btn btn-primary">Отправить</button>
                            </p>
                    </form>
                </div><!--widgetcontent-->
            </div><!--widget-->
                <div class="footer">
                    <div class="footer-left">
                        <span></span>
                    </div>
                    <div class="footer-right">
                        <span><a href="http://mp-serv.net">Мониторинг САМП серверов</a></span>
                    </div>
                </div><!--footer-->
</div></div>


