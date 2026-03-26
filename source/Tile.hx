import flixel.util.FlxColor;
import flixel.FlxSprite;

class Tile extends FlxSprite
{
	override public function new(tile:Tiles)
	{
		super();

		makeGraphic(16, 16, tile);
	}
}
