package code.generique 
{
	import flash.display.MovieClip;
	import flash.events.EventDispatcher;
	import tools.facebook.*;
	import com.adobe.serialization.json.JMSON;//classe d' utilisation du formar JSON renommé en JMSON 
	//une erreur etrange se produisait lorsque qu' on conservait le nom JSON
	
	/**
	 * ...
	 * @author mageec
	 */
	public class appSuperModel extends EventDispatcher 
	{
		
		protected static var _FaceBook:NativeFaceBookSDK;
		public static const FACEBOOK_APP_ID:String = "489835251039584";
		public static var accessToken:String;
		public static var SCENE:MovieClip;
		public function appSuperModel() 
		{
			
		}
		//singleton pour etre sur que c tjrs la meme instance qui est retournée
		public function get FaceBook():NativeFaceBookSDK
		{
			return _FaceBook;
		}
		//------------------------------------------
		public function get FACEBOOKID():String 
		{
			return FACEBOOK_APP_ID;
		}
		
	}

}