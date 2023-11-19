using AreasOfFigures.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AreasOfFigures.Models
{
    // Дополнение, для показа легкости добавления других фигур
    public class Square : IFirgure
    {
        public double Side { get; }
        public Square(double side)
        {
            Side = side;
        }

        public double CalculateArea()
        {
            return Math.Pow(Side, 2);
        }
    }
}
