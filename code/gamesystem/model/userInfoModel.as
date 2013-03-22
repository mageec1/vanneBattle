package code.gamesystem.model 
{
	import code.generique.appSuperModel;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author mageec
	 */
	
	
	
	public class userInfoModel extends appSuperModel 
	{
		protected var _nom:String;
	    protected var _prenom:String;
	    protected var _pictureProfilUrl:String;
		public static const CHANGE:String = "CHANGE";
		public static const PROFILURL:String = "PROFILURL";
		
		
		public function userInfoModel() 
		{
			super();
			_nom = _prenom = _pictureProfilUrl = "";
		}
		
		public function get nom():String 
		{
			return _nom;
		}
		
		public function set nom(value:String):void 
		{
			_nom = value;
			dispatchEvent(new Event(CHANGE));
		}
		
		public function get prenom():String 
		{
			return _prenom;
		}
		
		public function set prenom(value:String):void 
		{
			_prenom = value;
				dispatchEvent(new Event(CHANGE));
			
		}
		
		public function get pictureProfilUrl():String 
		{
			return _pictureProfilUrl;
		}
		
		public function set pictureProfilUrl(value:String):void 
		{
			_pictureProfilUrl = value;
			dispatchEvent(new Event(PROFILURL));
		}
		
	
		
	}

}