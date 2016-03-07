jQuery(document).ready(function(){                   
    jQuery("#infom").on("change", function(){   
        var optionValue0 = jQuery(this).val(); 
        
        $.ajax({
            url: "/anketoModules/select",
            data: "newValue0=" + optionValue0,  
            method: "POST",
            async : false,
            success : function(all) {
            	all = all.split(",");
                var a = "<option value='0'>- select -</option>";
                for (var x = 0; x < all.length; x++) {
                    a += "<option value=" + all[x] + ">" + all[x] + "</option>";
                }
                $("#info").html(a).show();           
                
            },
            error : function() {
                alert("fail");      
            }                 
        });
    });
});

function show(){                                 // show value in textarea
	var a = document.getElementById("info");
    document.getElementById("area").style.display = 'block';	
}

jQuery(document).ready(function(){                  // get final textarea value from database
    jQuery("#info").on("change", function(){   
        var optionValue = jQuery(this).val(); 
        optionValue1 = $('#infom').val();      
        $.ajax({
            url: "/anketoModules/select",
            data: "newValue=" + optionValue + "&oldValue=" + optionValue1,  
            method: "POST",
            async : false,
            success : function(data) {
               $("#area").html(data).show();
            },
            error : function() {
                alert("fail");      
            }                 
        });
    });
});

$(document).ready(function(){                           // analysize data via jqplot
	jQuery("#info").on("change", function(){
		$('#char1').empty();
		var dd2 = jQuery(this).val(); 
		var dd1 = $('#infom').val(); 
		$.ajax({
			url: "/anketoModules/analysize",
            data: "dd1=" + dd1 + "&dd2=" + dd2,  
            method: "POST",
            async : false,
            success : function(a) {            	
            	a = a.split(",");
            	 var b = $.grep(a,function(value){return value.length>1});
                 var c = $.grep(a,function(value){return value.length<2});
                var s1 = c;
//                alert(s1);
                var xAxis = b;
//                alert(xAxis);
                $.jqplot('chart1', [s1], CreateBarChartOptions(xAxis)).replot();               
		}
		});    
   function CreateBarChartOptions(xAxis) {
    $.jqplot.config.enablePlugins = true;
	   var optionsObj =  {
        animate: !$.jqplot.use_excanvas,
        seriesDefaults:{
            renderer:$.jqplot.BarRenderer,
            rendererOptions:{
                barPadding:8,
                barMargin:5,
                barWidth:100
                }
        },
        axesDefaults:{
               tickRenderer:$.jqplot.CanvasAxisTickRenderer
            },
        axes: {
            xaxis: {
                renderer: $.jqplot.CategoryAxisRenderer,
                ticks: xAxis          
            }
        },
        highlighter: { show: false }        
    };
    return optionsObj;
   } 
	});
});
