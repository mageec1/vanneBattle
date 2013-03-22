package code.generique 
{
	import flash.display.MovieClip;
	import flash.geom.Rectangle;
	import flash.text.Font;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import tools.EmbedFont;
	import code.gamesystem.fonts.graffiti;
	
	/**
	 * ...
	 * @author mageec
	 */
	public class MessageBox extends MovieClip {
	
	protected var _message:String;
	protected var _widthLimit:uint;
	protected var _contentMessage:TextField;
	protected var _mescontainer:MovieClip;
	protected var _mascotteContainer:MovieClip;
	
	
	protected var fontManager:EmbedFont;
	protected var mesFont:Font;
	protected var _modeDisplay:String;
	public static const CENTERTEXT:String = "CENTERTEXT";
	public static const FITTEXT:String = "FITTEXT";
	

		
		public function MessageBox() 
		{
			fontManager = new EmbedFont();
			fontManager.createformat("graffiti", new graffiti(), 15);
			_contentMessage = new TextField();
			_contentMessage.textColor = 0xFFFFFF;
			_contentMessage.autoSize = TextFieldAutoSize.CENTER;
			_contentMessage.multiline = true;
			fontManager.setStyle(_contentMessage, "graffiti");
			_mescontainer = this["background"];
			_mascotteContainer = this["mascotte"];
			_modeDisplay = CENTERTEXT;
			_widthLimit = 0;
			
			
		}
		//------------------
		public function refreshLayout():void {
			var compratio:Number = _mescontainer.width / _mescontainer.height;
			var overlap:Rectangle = overlapMascot(_mascotteContainer.getBounds(this) , _mescontainer.getBounds(this));
			var finalMessageWidth:uint;
			
			
			if (_widthLimit > 0) {
				finalMessageWidth = _widthLimit;
			}else {
				
				finalMessageWidth = _contentMessage.width;
			}
			
			  if(_modeDisplay==CENTERTEXT){
			 if (_message.length>15) {//taille par defaut
				 _mescontainer.width =finalMessageWidth+overlap.width+35;
				 _contentMessage.x = _mescontainer.x +overlap.width+10;
				 trace("jjjjj");

			 }else {
				 _contentMessage.x = _mescontainer.x + ( _mescontainer.width - finalMessageWidth) / 2;
				  trace("pplo");
			 }
			 
				
				_mescontainer.height = _mescontainer.width / compratio;
			 
				
				_contentMessage.y = _mescontainer.y+(_mescontainer.height - _contentMessage.textHeight) / 2;
			
			  }
			  
			  //---------------------------------------------------------
			    if (_modeDisplay == FITTEXT) {
					
					//_mescontainer.height = _contentMessage.height + overlap.width;
				//	_mescontainer.width = _mescontainer.height / compratio;
			 
				 _contentMessage.x = _mescontainer.x +overlap.width+10;
				 trace("jjjjj");

			 
				
				_contentMessage.y = _mescontainer.y + 15;
			
			  }
			  
			  
			  //------------------------------------------------------
			addChild(_contentMessage);
		}
		//--------------------
		public function setSize(_size:uint) {
			
			
		}
		//---------------
			public function get message():String 
	{
		return _message;
	}
	//-------------------------------
	public function set message(value:String):void 
	{
		_message = value;
		_contentMessage.text = value;
		refreshLayout();
	}
	
	public function get modeDisplay():String 
	{
		return _modeDisplay;
	}
	
	public function set modeDisplay(value:String):void 
	{
		_modeDisplay = value;
	}
	
	public function get widthLimit():uint 
	{
		return _widthLimit;
	}
	
	public function set widthLimit(value:uint):void 
	{
		_widthLimit = value;
	}
	
	//----------------------------------------------
	private function overlapMascot(rect1:Rectangle, rect2:Rectangle):Rectangle {
		return rect1.intersection(rect2);
	}
	//---------------------------------------------
	
	
	
	//------------------------------------------
	}
}