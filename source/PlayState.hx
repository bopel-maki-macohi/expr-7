package;

import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	public var dimensions:Int = 16;

	public var tiles:FlxTypedSpriteGroup<Tile> = new FlxTypedSpriteGroup<Tile>();

	override public function create()
	{
		super.create();

		add(tiles);

		makeMap();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	public function makeMap()
	{
		var x = 0;
		var y = 0;

		var offset = 20;

		while (y < dimensions)
		{
			while (x < dimensions)
			{
				var t = new Tile();
				tiles.add(t);

				t.screenCenter();
				t.x -= (Math.round(dimensions / 2)) * (t.width + offset);
				t.y -= (Math.round(dimensions / 2)) * (t.width + offset);

				t.x += (x) * (t.width + offset);
				t.y += (y) * (t.height + offset);

				x++;
			}

			x = 0;
			y++;
		}
	}
}
