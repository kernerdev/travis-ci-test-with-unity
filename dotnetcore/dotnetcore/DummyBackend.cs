using System;
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
            return a + b;
        }

        public void DoStuff(string stuffstr)
        {
            if(string.IsNullOrEmpty(stuffstr))
            {
                throw new ArgumentException("Parameter shall not be null or empty", nameof(stuffstr));
            }

            myComponent.DoStuff(stuffstr);
        }

        public string GetStuff()
        {
            return myComponent.GetStuff();
        }
    }
}
