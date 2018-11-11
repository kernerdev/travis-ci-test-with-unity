using Xunit;
using Moq;
using dotnetcore.backend;
using dotnetcore.backend.interfaces;

namespace dotnetcore_test
{
    public class DummyBackend_Test
    {
        [Fact]
        public void DummyBackend_Text_Test()
        {
            const string TEST_INPUT = "TEST_STRING";

            Mock<IDummyComponent> mockComponent = new Mock<IDummyComponent>(MockBehavior.Loose);
            IDummyBackend backend = new DummyBackend(mockComponent.Object)
            {
                Text = TEST_INPUT
            };

            Assert.Equal(TEST_INPUT, backend.Text);
        }

        [Fact]
        public void DummyBackend_GetStuff_Test()
        {
            const string TEST_INPUT = "TEST_STRING";

            Mock<IDummyComponent> mockComponent = new Mock<IDummyComponent>(MockBehavior.Strict);
            mockComponent.Setup(x => x.GetStuff()).Returns(TEST_INPUT);

            IDummyBackend backend = new DummyBackend(mockComponent.Object);

            string retValue = backend.GetStuff();

            Assert.Equal(TEST_INPUT, retValue);
        }

        [Fact]
        public void DummyBackend_DoStuff_Test()
        {
            const string TEST_INPUT = "TEST_STRING";

            Mock<IDummyComponent> mockComponent = new Mock<IDummyComponent>(MockBehavior.Strict);
            mockComponent.Setup(x => x.DoStuff(It.IsAny<string>()));

            IDummyBackend backend = new DummyBackend(mockComponent.Object);

            backend.DoStuff(TEST_INPUT);

            mockComponent.Verify(x => x.DoStuff(TEST_INPUT), Times.Once());
        }
    }
}
