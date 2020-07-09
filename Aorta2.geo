// Gmsh project created on Tue Jul  7 15:28:34 2020
SetFactory("OpenCASCADE");
//+
Circle(1) = {0, 0.0125, 0, 0.0125, 0, Pi/4};
//+
Point(3) = {0.05, 0.0125, 0, 1.0};
//+
Point(4) = {0.05, -0.0125, 0, 1.0};
//+
Recursive Delete {
  Curve{1}; 
}
//+
Point(5) = {0.0375, 0.0125, 0, 1.0};
//+
Point(6) = {0.0375, -0.0125, 0, 1.0};
//+
Point(7) = {0, -0.0125, 0, 1.0};
//+
Point(8) = {0, 0.0125, 0, 1.0};
//+
Point(9) = {0, 0.025, 0, 1.0};
//+
Point(10) = {0, -0.025, 0, 1.0};
//+
Point(11) = {0.0125, 0.0125, 0, 1.0};
//+
Point(12) = {0.0125, -0.0125, 0, 1.0};
//+
Recursive Delete {
  Point{5}; 
}
//+
Recursive Delete {
  Point{6}; 
}
//+
Circle(1) = {9, 8, 11};
//+
Circle(2) = {10, 7, 12};
//+
Line(3) = {11, 3};
//+
Line(4) = {3, 4};
//+
Line(5) = {4, 12};
//+
Line(6) = {10, 9};
//+
Curve Loop(1) = {3, 4, 5, -2, 6, 1};
//+
Plane Surface(1) = {1};
//+
Extrude {0, 0, 0.001} {
  Surface{1}; Point{3}; Point{4}; Point{7}; Point{8}; Point{9}; Point{10}; Point{11}; Point{12}; Curve{1}; Curve{2}; Curve{3}; Curve{4}; Curve{5}; Curve{6}; Layers{1}; Recombine;
}
//+
Surface Loop(2) = {6, 5, 8, 2, 7, 1, 3, 4};
//+
Volume(2) = {2};
//+
Physical Surface("inlet") = {3};
//+
Physical Surface("outlet") = {6};
//+
Physical Surface("simmetry") = {2, 4, 7, 5};
//+
Physical Surface("frontandback") = {8, 1};
//+
Physical Volume("fluid") = {1};
//+
Physical Surface("simetry") = {7, 2, 5, 4};
//+
Physical Surface("simmetry") -= {2, 7, 5, 4};
