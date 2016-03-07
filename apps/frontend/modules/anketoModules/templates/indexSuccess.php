<?php 
  use_stylesheet('anketo.css');
  use_javascript('index.js'); ?>
<?php
  $categoryID = 0;
  $detailID = 0;
  $commonID = 0;
  $maxDetailID = 0;
  $no = 3;
 ?>

 <script type="text/javascript">
	$(function(){
		$("#floatmenu").FloatMenu({
	  	});	
	});
	</script>
  <div id='floatmenu' style="top:80%">
  <div>aaaaaaaaaaaaaaaaaaa</div>
  	<button onclick="window.open('anketoModules/show')">show</button>
  </div>
<form id="anketoList" method="post">

<form id="anketoList" action="<?php echo url_for("anketoModules/create?"); ?>" method="post">

  <div id="anketo">
    <h1>问卷调查</h1>
    <table class="anketos">
      <tr>
        <td colspan="10" class="category">◆被调查者基本信息</td>
      </tr>
      <tr>
        <td style="vertical-align:top;">Q1.</td>
        <td colspan="9">DHC的工作年限是？
          <div>
            <div class="chooseradio">
              <input type="radio" name="year" id="year1" value="一年以下"/>
              <label for="year1">一年以下</label>
            </div>
            <div class="chooseradio">
              <input type="radio" name="year" id="year2" value="1-3年"/>
              <label for="year2">1-3年</label>
            </div>
            <div class="chooseradio">
              <input type="radio" name="year" id="year3" value="3-5年"/>
              <label for="year3">3-5年</label>
            </div>
            <div class="chooseradio">
              <input type="radio" name="year" id="year4" value="5-10年"/>
              <label for="year4">5-10年</label>
            </div>
            <div class="chooseradio">
              <input type="radio" name="year" id="year5" value="10年以上"/>
              <label for="year5">10年以上</label>
            </div>
          </div>
        </td>
      </tr>
      <tr>
        <td style="vertical-align:top;">Q2.</td>
        <td colspan="9">性别
          <div>
            <div class="chooseradio">
              <input type="radio" name="sex" id="sex1" value="男"/>
              <label for="sex1">男</label>
            </div>
            <div class="chooseradio">
              <input type="radio" name="sex" id="sex2" value="女"/>
              <label for="sex2">女</label>
            </div>
          </div>
        </td>
      </tr>
      <?php $maxDetailID = 1;foreach ($anketo_list as $i => $category_list): ?>
      <?php $categoryID = $categoryID + 1; ?>
        <tr>
          <td colspan="10" class="category">◆<?php echo $i; ?></td>
        </tr>
        <?php foreach ($category_list as $j => $detail_list): ?>
          <?php $detailID = $detailID + 1;?>
          <tr>
            <td style="vertical-align:top;">Q<?php echo $no ?>.</td>
            <?php $no = $no + 1; ?>
            <td colspan="9"><?php echo $j; ?>
              <div>
                <?php foreach ($detail_list as $k => $check_list): ?>
                <?php $commonID =  $commonID + 1; ?>
                  <div class="chooseradio">
                    <input type="radio" name="<?php echo $categoryID.$detailID; ?>" id="<?php echo $categoryID.$detailID.$commonID; ?>" value="<?php echo $commonID; ?>"/>
                    <label for="<?php echo $categoryID.$detailID.$commonID; ?>"><?php echo $check_list; ?></label>
                  </div>
                <?php endforeach; ?>
              </div>
              <div style="padding-top:5px;"><label>建议感想:</label><input type="text" class="underLine" name="<?php echo $categoryID.$detailID."comment"; ?>"/></div>
            </td>
          </tr>
          <?php $commonID = 0; ?>
        <?php endforeach; ?>

        <?php
          if ($detailID > $maxDetailID) {
              $maxDetailID = $detailID;
          }
//          $detailID = 0;
          
        
        ?>

        <?php $detailID = 0; ?>

      <tr>
        <td colspan="10">
          <div>
            <div>该调查类别中问卷以外的感想或建议在下面填写</div>
            <textarea rows="2" style="width:90%;border:1px solid black;background-color:rgba(0,0,0,0);resize: none;" name="<?php echo $categoryID; ?>" id="<?php echo $categoryID; ?>"></textarea>
          </div>
        </td>
      </tr>
      <?php endforeach; ?>
      <?php $categoryID = 0; ?>
    </table>
  </div>
  <input type="submit" id="submit" style="width:50px;" value="提交">
  <button onclick="window.open('anketoModules/count')" style="right-width:50px">统计</button>
</form>
<input type="hidden" id="maxCategoryID" value="<?php echo $categoryID; ?>">
<input type="hidden" id="maxDetailID" value="<?php echo $maxDetailID; ?>">
<?php  // var_dump("------------------------------->",$maxDetailID);?>
<?php   //var_dump("------------------------------->",$categoryID);?>

</form>

