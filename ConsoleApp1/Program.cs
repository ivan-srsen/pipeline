using ClassLibrary2;
using Newtonsoft.Json;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            var test = new Class2{Test = "sadsdad"};
            JsonConvert.SerializeObject(test);
            Class1.Print();
        }
    }
}
