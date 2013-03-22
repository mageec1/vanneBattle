package code.gamesystem.view 
{
	import code.generique.appSuperController;
	import code.generique.appSuperModel;
	import code.generique.appSuperView;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author mageec
	 */
	public class testview extends appSuperView 
	{
		
		public function testview(v_controller:appSuperController, v_model:appSuperModel) 
		{
			super(v_controller, v_model);
			addEventListener(Event.ADDED_TO_STAGE, essaiShow);
			
		}
		
		private function essaiShow(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, essaiShow);
	        _cmpcontroller.show(new objecttest(), stage, 145, 500);
			
		}
		
		
		
		
	}

}