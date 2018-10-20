using UnityEngine;
using NUnit.Framework;

public class NewEditModeTest {

    [Test]
    public void Pass()
    {
        // var fileSystem = new FileSystem();
        Assert.AreEqual(1, 1);
    }
    [Test]
    public void Fail()
    {
        // var fileSystem = new FileSystem();
        Assert.AreEqual(1, 0);
    }
}
