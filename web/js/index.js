var submitList = [];
$(function() {
	$("#submit").click(function () {
		var tmpObj = $('#anketoList').serializeObject();

		var insertAllInformationList = new Array();
		var insertCommentList = new Array();
		var dataList = {};
		var commentList = {};
		var j = 1;
		for (var i = 1; i <= $("#maxCategoryID").val(); i++) {
			for (var j; j <= $("#maxDetailID").val(); j++) {
				if (tmpObj[i + "-" + j] == undefined) {
					if ($("#" + i.toString() + "-" + j.toString()).is(":visible")) {
						alert("你有一些选项没有填写。请确认。");
						alert(i.toString() + "-" + j.toString());
						return false;
					} else {
						break;
					}
				} else {
					dataList = {};
					dataList.year = tmpObj.year;
					dataList.sex = tmpObj.sex;
					dataList.categoryID = i;
					dataList.detailID = j;
					dataList.checkFlag = tmpObj[i + "-" + j];
					dataList.comment = tmpObj[i + "-" + j + "comment"];
					insertAllInformationList.push(dataList);
				}
			}
			commentList = {};
			commentList.categoryID = i;
			commentList.categoryComment = tmpObj[i];
			insertCommentList.push(commentList);
		}
        createForm.attr("action", pathName + "/create"); 
        $('<input id="dataList" name="dataList" type="hidden">').val(JSON.stringify(insertAllInformationList)).appendTo(createForm);
        $('<input id="commentList" name="commentList" type="hidden">').val(JSON.stringify(insertCommentList)).appendTo(createForm);
        createForm.submit();

		alert("1");

	});
	$.fn.serializeObject = function() {
	var o = {};
	var a = this.serializeArray();
	$.each(a, function() {
		if (o[this.name]) {
			if (!o[this.name].push) {
				o[this.name] = [ o[this.name] ];
			}
			o[this.name].push(this.value || '');
		} else {
			o[this.name] = this.value || '';
		}
	});
	return o;
	};
});