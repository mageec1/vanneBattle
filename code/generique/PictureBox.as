package code.generique 
{
	import flash.display.Loader;
	import flash.display.Sprite;
	import com.greensock.loading.display.*;
	
	import flash.events.*;
	
	/**
	 * ...
	 * @author mageec
	 */
	public class PictureBox extends Sprite 
	{
		
		protected var _imgWidth:uint;
		protected var _imgHeight:uint;
		protected var _imgUrl:uint;
		protected var _loader:Loader;
		protected var _progressCircle:ProgressCircleLite;
		public function PictureBox(url:String,imgWidth:uint,imgHeight:uint) 
		{
			_imgWidth = imgWidth;
			_imgHeight = imgHeight;
			_imgUrl = url;
			_loader = new Loader();
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, handleComplete);
			_loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, handleProgress);
			_progressCircle = new ProgressCircleLite( { radius:15, thickness:5, trackColor:0x00FFFF,textColor:0x00000, color:0x0098FF,trackAlpha:0.25, autoTransition:false,hideText:true } );

			_progressCircle.x = _imgWidth / 2;
			_progressCircle.y = _imgHeight / 2;
			addChild(_progressCircle);
		}
		
		private function handleProgress(e:ProgressEvent):void 
		{
			_progressCircle.progress = Math.floor((e.bytesLoaded / e.bytesTotal) * 100);
		}
		
		private function handleComplete(e:Event):void 
		{
			
			removeChild(_progressCircle);
			addChild(_loader);
		}
		
		public function load() {
			
			_loader.load();
			
		}
		public function get imgUrl():uint 
		{
			return _imgUrl;
		}
		
		public function set imgUrl(value:uint):void 
		{
			_imgUrl = value;
		}
		
		public function get imgWidth():uint 
		{
			return _imgWidth;
		}
		
		public function set imgWidth(value:uint):void 
		{
			_imgWidth = value;
		}
		
		public function get imgHeight():uint 
		{
			return _imgHeight;
		}
		
		public function set imgHeight(value:uint):void 
		{
			_imgHeight = value;
		}
		
		
		
	}

}