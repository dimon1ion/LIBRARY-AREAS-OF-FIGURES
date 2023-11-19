using AreasOfFigures.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AreasOfFigures.Models
{
    public class Triangle : IFirgure
    {
        public double Side1 { get; }
        public double Side2 { get; }
        public double Side3 { get; }

        public Triangle(double side1, double side2, double side3)
        {
            Side1 = side1;
            Side2 = side2;
            Side3 = side3;
        }
        
        public double CalculateArea()
        {
            // Формула Герона
            double s = (Side1 + Side2 + Side3) / 2;
            return Math.Sqrt(s * (s - Side1) * (s - Side2) * (s - Side3));
        }

        public bool IsRightTriangle()
        {
            double[] sides = { Side1, Side2, Side3 };
            Array.Sort(sides);
            return Math.Pow(sides[0], 2) + Math.Pow(sides[1], 2) == Math.Pow(sides[2], 2);
        }
    }
}
