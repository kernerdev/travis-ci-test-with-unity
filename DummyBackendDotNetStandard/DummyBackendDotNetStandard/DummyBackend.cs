using System;

namespace DummyBackendDotNetStandard
{
    public static class DummyBackend
    {
        /// <summary>
        /// Add two positive integers 
        /// </summary>
        /// <param name="a"></param>
        /// <param name="b"></param>
        /// <returns>Sum of <paramref name="a"/> and <paramref name="b"/></returns>
        /// <exception cref="ArgumentException">Any of the parameters is less then 0</exception>
        public static int Add(int a, int b)
        {
            if (a < 0)
            {
                throw new ArgumentException("Parameter is less then 0", nameof(a));
            }

            if (b < 0)
            {
                throw new ArgumentException("Parameter is less then 0", nameof(a));
            }

            return a + b;
        }
    }
}
