package code.generique 
{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import com.facebook.graph.Facebook;
	import flash.external.ExternalInterface;
	import tools.facebook.*
	
	
	//import it.gotoandplay.smartfoxserver.SmartFoxClient;
	import code.generique.*;
	
	/**
	 * ...
	 * @author mageec
	 */
	public class appSuperController 
	{
		
		protected var _superModel:appSuperModel;
		
		public function appSuperController(_model:appSuperModel) 
		{
			_superModel = _model;
		}
		
		//----
		/**
		 * permet d' afficher un dispaly object n importe ou
		 * @param	_view  
		 * @param	_renderTo
		 * @param	_x
		 * @param	y
		 */
		public function show(_view:DisplayObject, _renderTo:DisplayObjectContainer, _x:Number =0, _y:Number = 0) {
			
			_view.x = _x;
			_view.y = _y;
			_renderTo.addChild(_view);
			
		}
		
		//----------------------------------------------------------------------
		public function remove(_container:DisplayObjectContainer, _view:DisplayObject) {
			_container.removeChild(_view);
		}
		
		//-----------------------------------------------------------------
		
		public static function writeToConsole(_mes:String,prefix:String="VANNEBATTLEDEBUG: ") {
			ExternalInterface.call("addToDebug", prefix+_mes);
		
		}
		
		//------------------------------------------------------------
		public function initFaceBook() {
		//	NativeFaceBookSDK.init(appSuperMo
		
		
		}
		//--------------------------------------------------------
		public function checkLoginStatusFacebook() {
			
			
		
		}
		
		public function get superModel():appSuperModel 
		{
			return _superModel;
		}
		
		public function set superModel(value:appSuperModel):void 
		{
			_superModel = value;
		}
		
	}

}