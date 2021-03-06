import std.stdio;

import re;
import re.math;
import std.stdio;

import level;

import constants;
import foodmanager;

class Game : Core {
	this() {
		super(SCREEN.WIDTH, SCREEN.HEIGHT, "Order");
	}

	override void initialize() {
		default_resolution = Vector2(SCREEN.WIDTH, SCREEN.HEIGHT);
		content.paths ~= "../content/";

		load_scenes([new LevelScene("Level 1", "test", new FoodManager_1())]);
	}
}

void main() {
	auto game = new Game(); // init game
	game.run();
	game.destroy(); // clean up
}
