using ClassLibrary2;
using Newtonsoft.Json;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            var test = new Class2{Test = "sadsdada"};
            var test1 = new Class2 { Test = "sadsdada" };
            JsonConvert.SerializeObject(test);
            Class1.Print();
        }
    }
}
