<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <?php include_http_metas() ?>
    <?php include_metas() ?>
    <?php include_title() ?>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="shortcut icon" href="/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="..\..\..\..\floatmenu\jquery-ui-1.11.4\jquery-ui.css" />
    <link rel="stylesheet" type="text/css" href="..\..\..\..\floatmenu\bootstrap\css\bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="..\..\..\..\floatmenu\css\floatmenu.css">
    <script src="..\..\..\..\floatmenu\jquery-1.10.2.min.js"></script>
    <script src="..\..\..\..\floatmenu\jquery-ui-1.11.4\jquery-ui.min.js"></script>
    <script src="..\..\..\..\floatmenu\bootstrap\js\bootstrap.min.js"></script>
    <script type="text/javascript" src='..\..\..\..\floatmenu\js\floatmenu.js'></script>
    <style type="text/css">
    th{
    	width:30px;
    }
		.underLine{
			width: 90%;
			background-color: rgba(0,0,0,0);
			border-bottom: 1px solid;
			border-left-width:0px;
			border-right-width:0px;
			border-top-width:0px;
			}
	</style>
	
  </head>
  <body>
    <div id="container">
      <div id="header">
        <div class="content">
			<h1>
			  <a href="<?php echo url_for('@homepage') ?>">
				<img src="" alt="Jobeet Job Board" />
			  </a>
			</h1>
        </div>
      </div>

      <div id="content">
        <div class="content">
          <?php echo $sf_content ?>
        </div>
      </div>
    
      <div id="footer">
        <div class="content">
          <span class="symfony">
            <img src="/images/jobeet-mini.png" />
            powered by <a href="http://www.symfony-project.org/">
            <img src="/images/symfony.gif" alt="symfony framework" /></a>
          </span>
          <ul>
            <li><a href="">About Jobeet</a></li>
            <li class="feed"><a href="">Full feed</a></li>
            <li><a href="">Jobeet API</a></li>
            <li class="last"><a href="">Affiliates</a></li>
          </ul>
        </div>
      </div>
    </div>
  </body>
</html>
