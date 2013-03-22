package code.gamesystem.controllers {

   import code.gamesystem.model.userInfoModel;
   import tools.facebook.*;
   import code.generique.*;
   import com.adobe.serialization.json.JMSON;
   import tools.GameUtils;
   
 
   

	/**
	 * ...
	 * @author mageec
	 * 
	 * 
	 */
	
	 
	public class userInfoController extends appSuperController 
	{
		private var userInfosModel:userInfoModel;

		public function userInfoController(_model:appSuperModel) 
		{
			super(_model);
			userInfosModel = _model as userInfoModel;
	
		}
		
		//--------------------------------
		
		
		//---------------------------------
		
		
		//----------------------------------
		public function loadInfo() {
		  userInfosModel.nom = GameUtils.getUrlParam(appSuperModel.SCENE,"nom");
		  userInfosModel.prenom = GameUtils.getUrlParam(appSuperModel.SCENE,"prenom");
	   //  NativeFaceBookSDK.init(userInfosModel.FACEBOOKID,appSuperModel.accessToken);
		// NativeFaceBookSDK.api("me", onGetInfos);
		// NativeFaceBookSDK.api("me?fields=picture,name,last_name&redirect=false", onGetInfos);
		// appSuperController.writeToConsole("loadInfos");
		//  Facebook.init(_superModel.FACEBOOKID, faceInit);
		  //GameUtils.sleep(100, onLaunchLogin);
		}
		//-------------------------------------------
		private function onLaunchLogin():void 
		{
		
		/*  var opts:Object = {scope:"email,publish_stream,user_photos"};
           trace("polo");
			Facebook.login(handleLogin, opts);*/
		}
		//----------------------------------------------
		private function handleLogin(result:Object,fail:Object):void 
		{
		/*	if (result) {
				Facebook.api("/me?fields=picture,first_name,last_name", onGetInfos);
			}*/
		}
		//--------------------------------------
		private function onGetInfos(result:Object, fail:Object):void 
		{
			
			appSuperController.writeToConsole("RESOK"+JMSON.encode(result));
			if (result) {
				var userInfosObjectstring:String = JMSON.encode(result);
				var userInfosObject:Object = {};
				userInfosObject = JMSON.decode(userInfosObjectstring);
			    userInfosModel.nom = userInfosObject["last_name"];
				userInfosModel.prenom = userInfosObject["first_name"];
				appSuperController.writeToConsole(JMSON.encode(result));
				
			}else {
				appSuperController.writeToConsole(JMSON.encode(fail));
			}
		}
		//-----------------------------------
		
		
		//------------------------
		private function faceInit(result:Object,fail:Object):void 
		{
			
		}
		//-------------------------------
		
	}

}