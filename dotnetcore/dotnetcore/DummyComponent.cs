using dotnetcore.backend.interfaces;

namespace dotnetcore.backend
{
    internal class DummyComponent : IDummyComponent
    {
        public void DoStuff(string stuffstr)
        {
            
        }

        public string GetStuff()
        {
            return "stuff";
        }
    }
}
