using dotnetcore.backend.interfaces;

namespace dotnetcore.backend
{
    public class DummyBackend : IDummyBackend
    {
        IDummyComponent myComponent = null;

        public DummyBackend(IDummyComponent component)
        {
            myComponent = component;
        }

        public string Text { get; set; }
        public int Add(int a, int b)
        {
            myComponent.DoStuff();

            return a + b;
        }

        public string GetStuff()
        {
            return myComponent.GetStuff();
        }
    }
}
