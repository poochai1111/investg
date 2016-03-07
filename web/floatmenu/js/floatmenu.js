/**
 * Class for the float operation menu
 * 
 * Usage:
 * create a div on your page which includes operation items,
 * then call this module's construct function.
 * 
 * 	$([expression]).FloatMenu({
 *		position:up|right|down|left,
 *		initState:extend|hide,
 *		marginTobound:number
 *	});
 * 
 * 
 */

(function($){
	var methods = {
		init : function(options) {
			var defaults = {
					position:"right",//up,right,down,left
					initState:"hide",//extend or hide
					marginTobound:0
				}, 
			ops=$.extend(true,defaults,options);
			
			var _hiddenmenu = $("<div id='foldedmenu"+ops.position+"' class='foldedmenu ui-widget-content ui-state-default'>" +
					"<div><span class='ui-icon'></span></div></div>");
			
			//for float menu, make element's position to be fix
			$(this).addClass("expandedmenu ui-widget-content");
			
			//add round corner to the float menu
			//also set the width/height to the hidden menu
			switch(ops.position){
				case "right":
					$(this).addClass("ui-corner-left");
					_hiddenmenu.height($(this).height());
					_hiddenmenu.addClass("ui-corner-left");
					$(this).css("right",ops.marginTobound);
					//_hiddenmenu.css("top",$(this).offset().top);
					_hiddenmenu.css("top","80%");
					_hiddenmenu.css("right",ops.marginTobound);
					adjustIconVer($(this),_hiddenmenu);
					_hiddenmenu.children("div").children("span").addClass("ui-icon-triangle-1-w");
					break;
				case "left":
					$(this).addClass("ui-corner-right");
					_hiddenmenu.height($(this).height());
					_hiddenmenu.addClass("ui-corner-right");
					$(this).css("left",ops.marginTobound);
					_hiddenmenu.css("top",$(this).offset().top);
					_hiddenmenu.css("left",ops.marginTobound);
					adjustIconVer($(this),_hiddenmenu);
					_hiddenmenu.children("div").children("span").addClass("ui-icon-triangle-1-e");
					break;
				case "up":
					$(this).addClass("ui-corner-bottom");
					_hiddenmenu.width($(this).width());
					_hiddenmenu.addClass("ui-corner-bottom");
					$(this).css("top",ops.marginTobound);
					_hiddenmenu.css("left",$(this).offset().left);
					_hiddenmenu.css("top",ops.marginTobound);
					adjustIconHor($(this),_hiddenmenu);
					_hiddenmenu.children("div").children("span").addClass("ui-icon-triangle-1-s");
					break;
				case "down":
					$(this).addClass("ui-corner-top");
					_hiddenmenu.width($(this).width());
					_hiddenmenu.addClass("ui-corner-top");
					$(this).css("bottom",ops.marginTobound);
					_hiddenmenu.css("left",$(this).offset().left);
					_hiddenmenu.css("bottom",ops.marginTobound);
					adjustIconHor($(this),_hiddenmenu);
					_hiddenmenu.children("div").children("span").addClass("ui-icon-triangle-1-n");
					break;
			}
			$(this).addClass("ui-widget");
			
			//append hidden menu to page
			_hiddenmenu.insertAfter(this);
			
			//add pin icon to the expand menu and the hidden menu
			var pin = null;
			if(ops.initState=='hide'){
				pin = $("<div style='position:relative;cursor:pointer;padding:2px 2px 2px 2px;'><span class='ui-icon ui-icon-pin-w'></span></div>");
				$(this).hide();
			}else if(ops.initState=='extend'){
				pin = $("<div style='position:relative;cursor:pointer;padding:2px 2px 2px 2px;'><span class='ui-icon ui-icon-pin-s'></span></div>");
				_hiddenmenu.hide();
			}
			pin.insertBefore($(this).children().eq(0));
			pin.click(function(){
				var now = new Date();
				now.setDate(now.getDate() + 6);
				if(pin.children("span").hasClass("ui-icon-pin-w")){
					pin.children("span").removeClass("ui-icon-pin-w");
					pin.children("span").addClass("ui-icon-pin-s");
					ops.initState="extend";
					addCookie('float_extend','extend', now);					
				}else{
					pin.children("span").removeClass("ui-icon-pin-s");
					pin.children("span").addClass("ui-icon-pin-w");
					ops.initState="hide";
					addCookie('float_extend','hide', now);
				}
			});
			
			//add listeners
			var self = this;
			
			//flag for display control
			this._animationComplete = true;
			
			$(this).mouseleave(function(){
				if(self._animationComplete && ops.initState == "hide"){
					self._animationComplete = false;
					$(this).hide("slide",{direction:ops.position},1000,function(){
						_hiddenmenu.show();
						self._animationComplete = true;
					});
				}
			});
			
			_hiddenmenu.mouseover(function(){
				if(self._animationComplete){
					self._animationComplete = false;
					$(this).hide();
					self.effect("slide",{direction:ops.position},100,function(){self._animationComplete = true;});
				}
			});
			
			
		}	
	};
	$.fn.FloatMenu = function(method) {
		
		if (methods[method]) {
			return methods[method].apply(this, Array.prototype.slice.call(
					arguments, 1));
		} else if (typeof method === "object" || !method) {
			return methods.init.apply(this, arguments);
		} else {
			$.error("Method " + method + " does not exist");
		}
	};
	function adjustIconVer(menu,hiddenmenu){
		hiddenmenu.children("div").css("position","relative");
		//hiddenmenu.children("div").css("top",(menu.height()/2));
		hiddenmenu.children("div").css("top","40%");
		hiddenmenu.children("div").css("padding-left",8);
		hiddenmenu.children("div").css("padding-right",8);
	};
	function adjustIconHor(menu,hiddenmenu){
		hiddenmenu.children("div").css("position","relative");
		hiddenmenu.children("div").css("left",(menu.width()/2));
		hiddenmenu.children("div").css("padding-top",8);
		hiddenmenu.children("div").css("padding-bottom",8);
	};
})(jQuery);
