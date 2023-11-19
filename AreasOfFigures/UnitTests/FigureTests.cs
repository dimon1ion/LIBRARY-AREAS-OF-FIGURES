using AreasOfFigures.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace AreasOfFigures.UnitTests
{
    public class FigureTests
    {
        [Fact]
        public void CircleAreaCalculation()
        {
            Circle circle = new Circle(5);
            double area = circle.CalculateArea();
            // Проверка
            Assert.Equal(Math.PI * 25, area, 2);
        }

        [Fact]
        public void TriangleAreaCalculation()
        {
            Triangle circle = new Triangle(3, 4, 5);
            double area = circle.CalculateArea();
            // Проверка
            Assert.Equal(6, area, 2);
        }

        [Fact]
        public void SquareAreaCalculation()
        {
            Square circle = new Square(5);
            double area = circle.CalculateArea();
            // Проверка
            Assert.Equal(25, area, 2);
        }
    }
}
