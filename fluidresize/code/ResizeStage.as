package code 
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.display.StageScaleMode;
	import flash.display.StageAlign;
	import com.greensock.*;
	import com.greensock.easing.*;
	import code.*;
	
	
	/**
	 * ...
	 * @author mageec
	 */
	public class ResizeStage extends MovieClip 
	{
		private var _ball:ball;
		public function ResizeStage() 
		{
			addEventListener(Event.ADDED_TO_STAGE, alignStage);
		}
		
		private function alignStage(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, alignStage);
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			stage.addEventListener(Event.RESIZE, resizeHandler);
			trace("uuuuu");
			_ball = new ball();
			_ball.x = stage.stageWidth / 2;
			_ball.y = stage.stageHeight / 2;
			addChild(_ball);
			
		}
		
		private function resizeHandler(e:Event):void 
		{
			trace("xwidth:", stage.stageWidth, "xheight:", stage.stageHeight);
				//_ball.x = stage.stageWidth / 2;
			//_ball.y = stage.stageHeight / 2;
			TweenLite.to(_ball, 0.5, { x:stage.stageWidth / 2, y:stage.stageHeight / 2 } );
		}
		
	}

}