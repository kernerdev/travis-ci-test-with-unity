using System;
using DummyBackendDotNetCore;
using NUnit.Framework;

namespace DummyBackendDotNetStandard_Test
{
    [TestFixture]
    class DummyBackend_uTest
    {
        [TestCase(1, 1, 2)]
        [TestCase(10, 10, 20)]
        [TestCase(0, 0, 0)]
        public void AddTest(int a, int b, int result)
        {
            Assert.AreEqual(result, DummyBackend.Add(a, b), "Result is not as expected");
        }

        [TestCase(-1, 1)]
        [TestCase(1, -1)]
        [TestCase(-1, -1)]
        public void AddTest_Exception(int a, int b)
        {
            Assert.Throws<ArgumentException>(() => DummyBackend.Add(a, b), "Exception not thrown");
        }
    }
}