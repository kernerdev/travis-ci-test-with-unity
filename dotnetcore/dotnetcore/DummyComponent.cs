using dotnetcore.backend.interfaces;

namespace dotnetcore.backend
{
    internal class DummyComponent : IDummyComponent
    {
        public void DoStuff()
        {
            
        }

        public string GetStuff()
        {
            return "stuff";
        }
    }
}
