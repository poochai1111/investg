<?php 
  use_stylesheet('anketo.css') ?>
<?php
  $categoryID = 0;
  $detailID = 0;
  $commonID = 0;
  $no = 3;
 ?>
<form action="<?php echo url_for("anketoModules/create"); ?>" method="post">
  <div id="anketo">
    <h1>调查一览</h1>
    <table class="anketos">
      <tr>
        <td colspan="10" class="category">◆被调查者基本信息</td>
      </tr>
      <tr>
        <td>Q1.</td>
        <td colspan="9">DHC的工作年限是？
          <div style="display:flex;">
            <div style="padding-left:20px;padding-top:5px;width:80px;">
              <input type="radio" name="year" id="year1"/>
              <label for="year1">一年以下</label>
            </div>
            <div style="padding-left:20px;padding-top:5px;width:80px;">
              <input type="radio" name="year" id="year2"/>
              <label for="year2">1-3年</label>
            </div>
            <div style="padding-left:20px;padding-top:5px;width:80px;">
              <input type="radio" name="year" id="year3"/>
              <label for="year3">3-5年</label>
            </div>
            <div style="padding-left:20px;padding-top:5px;width:80px;">
              <input type="radio" name="year" id="year4"/>
              <label for="year4">5-10年</label>
            </div>
            <div style="padding-left:20px;padding-top:5px;width:80px;">
              <input type="radio" name="year" id="year5"/>
              <label for="year4">10年以上</label>
            </div>
          </div>
        </td>
      </tr>
      <tr>
        <td>Q2.</td>
        <td colspan="9">性别
          <div style="display:flex;">
            <div style="padding-left:20px;padding-top:5px;width:80px;">
              <input type="radio" name="sex" id="sex1"/>
              <label for="sex1">男</label>
            </div>
            <div style="padding-left:20px;padding-top:5px;width:80px;">
              <input type="radio" name="sex" id="sex2"/>
              <label for="sex2">女</label>
            </div>
          </div>
        </td>
      </tr>
      <?php foreach ($anketo_list as $i => $category_list): ?>
      <?php $categoryID = $categoryID + 1; ?>
        <tr>
          <td colspan="10" class="category">◆<?php echo $i; ?></td>
        </tr>
        <?php foreach ($category_list as $j => $detail_list): ?>
          <?php $detailID = $detailID + 1; ?>
          <tr>
            <td>Q<?php echo $no ?>.</td>
            <?php $no = $no + 1; ?>
            <td colspan="9"><?php echo $j; ?>
              <div style="display:flex;">
                <?php foreach ($detail_list as $k => $check_list): ?>
                <?php $commonID =  $commonID + 1; ?>
                  <div style="padding-left:20px;padding-top:5px;width:80px;">
                    <input type="radio" name="<?php echo $categoryID.$detailID; ?>" id="<?php echo $categoryID.$detailID.$commonID; ?>"/>
                    <label for="<?php echo $categoryID.$detailID.$commonID; ?>"><?php echo $check_list; ?></label>
                  </div>
                <?php endforeach; ?>
              </div>
              <div style="padding-top:5px;"><label>建议/感想:</label><input type="text" class="underLine" /></div>
            </td>
          </tr>
          <?php $commonID = 0; ?>
        <?php endforeach; ?>
        <?php $detailID = 0; ?>
      <tr>
        <td colspan="10">
          <div>
            <div>该调查类别中问卷以外的感想或建议，请在下面填写</div>
            <textarea rows="2" style="width:90%;border:1px solid black;background-color:rgba(0,0,0,0);resize: none;"></textarea>
          </div>
        </td>
      </tr>
      <?php endforeach; ?>
      <?php $categoryID = 0; ?>
    </table>
  </div>
  <input type="submit" style="width:50px;" value="a">
</form>