package states
{
	import com.citrusengine.core.StarlingState;
	import com.citrusengine.objects.platformer.nape.Hero;
	import com.citrusengine.objects.platformer.nape.Platform;
	import com.citrusengine.physics.Nape;
	
	public class GameState extends StarlingState
	{
		public function GameState()
		{
			super();
		}
		
		override public function initialize():void{
			super.initialize();
			
			// Initialise the physics engine
			var nape:Nape = new Nape('nape');
			nape.visible = true;
			add(nape);
			
			var hero:Hero = new Hero('hero');
			add(hero);
			
			var platform:Platform = new Platform('ground', {width:stage.stageWidth, height:20, y:stage.stageHeight - 20});
			//platform.y = stage.stageHeight - platform.height;	// Put the platform at the bottom
			add(platform);
		}
	}
}