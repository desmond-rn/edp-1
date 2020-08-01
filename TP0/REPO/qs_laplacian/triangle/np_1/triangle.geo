// Gmsh project created on Fri Mar 18 16:22:09 2016
h = 0.0125;
Point(1) = {-1, -1, 0, h};
Point(2) = {1, -1, 0, h};
Point(3) = {-1, 1, 0, h};
Line(1) = {2, 3};
Line(2) = {3, 1};
Line(3) = {1, 2};
Line Loop(4) = {1, 2, 3};
Plane Surface(5) = {4};
// Physical Line("Dirichlet") = {1};
// Physical Line("Robin") = {2};
Physical Line("Neumann") = {3};
Physical Surface("Triangle") = {5};
