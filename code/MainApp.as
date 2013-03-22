package code 
{
	import code.gamesystem.controllers.*;
	import code.gamesystem.model.userInfoModel;
	import code.gamesystem.view.*;
	import code.generique.*;
	import tools.GameUtils;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	
	
	/**
	 * ...
	 * @author mageec
	 */
	
	 // TODO créer le fluid canvas
	 // TODO charger le 1er module pour charger l imag et e profil facebook+la bd
	public class MainApp extends MovieClip
	{
		
		private var generiqueController:appSuperController;
		private var generiqueModel:appSuperModel;
		private var _userInfoModel:userInfoModel
		private var userInfosView:userInfoView;
		private var userInfosController:userInfoController;
		
		
		public function MainApp() 
		{
			this.stop();
			appSuperModel.SCENE = this;
			appSuperModel.accessToken = GameUtils.getUrlParam(this, "token");//on initalise le token dans la variable statique
			//this["debug"].text = appSuperModel.accessToken;
			appSuperController.writeToConsole(appSuperModel.accessToken);
			initPlayer();
			
		}
		
		private function initPlayer():void 
		{
			userInfosView = this["mc_current_user"] as userInfoView;
		
			generiqueModel = new appSuperModel();
			_userInfoModel = new userInfoModel();
		   userInfosController = new userInfoController(_userInfoModel);
		  // userInfosView = new userInfoView(userInfosController, _userInfoModel);
		  userInfosView.viewController = userInfosController;
		  userInfosView.viewModel = _userInfoModel;
		  userInfosView.initialize();
		 
		}
		
		//
		
	}

}