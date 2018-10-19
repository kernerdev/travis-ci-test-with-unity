﻿using UnityEngine;
using NUnit.Framework;

public class PlayerControlTest {

	[Test]
	public void ScoreUpdatesWithToken() {
		var player = new GameObject();
		player.AddComponentAndInit<PlayerControl> ();
		player.tag = "Player";

		var tracker = new GameObject ();
		tracker.AddComponentAndInit<ScoreTracker>();
		tracker.GetComponent<ScoreTracker> ().scoreMultiplier = 100;

		player.GetComponent<PlayerControl> ().incToken ();

		Assert.AreEqual (1 * 100, tracker.GetComponent<ScoreTracker> ().score);
	}

    [Test]
    public void Pass()
    {
        // var fileSystem = new FileSystem();
        Assert.AreEqual(1, 1);
    }
}
