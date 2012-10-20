package
{
	import com.citrusengine.core.CitrusEngine;
	
	import states.GameState;
	
	[SWF(backgroundColor="#FFFFFF", frameRate="60", width="1024", height="768")]
	public class HellaHipsterHomicide extends CitrusEngine
	{
		public function HellaHipsterHomicide()
		{
			super();
			setUpStarling(true);
			
			trace('Starling initialised');
			
			// Set the game state
			state = new GameState();
		}
	}
}