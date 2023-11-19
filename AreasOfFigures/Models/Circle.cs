using AreasOfFigures.Interfaces;

namespace AreasOfFigures.Models
{
    public class Circle : IFirgure
    {
        public double Radius { get; }

        public Circle(double radius)
        {
            Radius = radius;
        }

        public double CalculateArea()
        {
            return Math.PI * Math.Pow(Radius, 2);
        }
    }
}