package code.gamesystem.view 
{
	import code.gamesystem.controllers.userInfoController;
	import code.gamesystem.model.userInfoModel;
	import code.generique.*;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author mageec
	 */
	public class userInfoView extends appSuperView 
	{
		protected var userInfoControllerRef:userInfoController;
		protected var userInfoModelRef:userInfoModel;
		private var loadingBox:MessageBox;
		public function userInfoView(v_controller:appSuperController=null, v_model:appSuperModel=null) 
		{
			super(v_controller, v_model);
			//userInfoControllerRef = _cmpcontroller as userInfoController;
		//	userInfoModelRef = _cmpmodel as userInfoModel;
			trace(userInfoModelRef);
		//	addEventListener(Event.ADDED_TO_STAGE, initComp);
			
			
		}
		
		public function initialize() {
		loadInfos();
		}
		
		private function loadInfos()
		{
			//removeEventListener(Event.ADDED_TO_STAGE, initComp);
			userInfoControllerRef = viewController as userInfoController;
			userInfoModelRef = viewModel as userInfoModel;
			loadingBox = new MessageBox();
			loadingBox.modeDisplay = MessageBox.CENTERTEXT;
			loadingBox.message = "chargement...";
			trace(userInfoModelRef);
			
			userInfoModelRef.addEventListener(userInfoModel.CHANGE, handleChange);
			userInfoModelRef.addEventListener(userInfoModel.PROFILURL, handleProfilLoad);
		userInfoControllerRef.show(loadingBox, stage, stage.stageWidth / 2, stage.stageHeight / 2);
			userInfoControllerRef.loadInfo();
			
			
		}
		
		private function handleProfilLoad(e:Event):void 
		{
			
		}
		
		private function handleChange(e:Event):void 
		{
			this["userName"].text = userInfoModelRef.nom + " " + userInfoModelRef.prenom;
		//	userInfoControllerRef.remove(stage, loadingBox);
			//TODO supprimer l objet chargement de la memoire
		}
		
	
		
		
		
	}

}