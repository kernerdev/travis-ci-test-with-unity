namespace dotnetcore.backend.interfaces
{
    public interface IDummyBackend
    {
        /// <summary>
        /// Text property
        /// </summary>
        string Text { get; set; }

        /// <summary>
        /// Sum 2 int values
        /// </summary>
        /// <param name="a"></param>
        /// <param name="b"></param>
        /// <returns></returns>
        int Add(int a, int b);

        /// <summary>
        /// Get stuff string
        /// </summary>
        /// <returns></returns>
        string GetStuff();

        /// <summary>
        /// Do stuff with the string
        /// </summary>
        /// <returns></returns>
        void DoStuff(string stuffstr);
    }
}
