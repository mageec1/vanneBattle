package code.generique 
{
	import flash.display.MovieClip;
	import code.generique.*;
	
	/**
	 * ...
	 * @author mageec
	 */
	public class appSuperView extends MovieClip 
	{
		
		protected var _cmpmodel:appSuperModel;
		protected var _cmpcontroller:appSuperController;
		
		
		public function appSuperView(v_controller:appSuperController=null,v_model:appSuperModel=null) 
		{
			if ((v_model != null) && (v_controller !=null)) {
				
				_cmpmodel = v_model;
			_cmpcontroller = v_controller;
			}
			
		}
		
		public function get viewModel():appSuperModel 
		{
			return _cmpmodel;
		}
		
		public function set viewModel(value:appSuperModel):void 
		{
			_cmpmodel = value;
		}
		
		public function get viewController():appSuperController 
		{
			return _cmpcontroller;
		}
		
		public function set viewController(value:appSuperController):void 
		{
			_cmpcontroller = value;
		}
		
	}

}