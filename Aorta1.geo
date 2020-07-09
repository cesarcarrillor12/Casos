// Gmsh project created on Wed Jul  8 16:02:54 2020
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {0.05, 0, 0, 1.0};
//+
Point(3) = {0.05, 0.025, 0, 1.0};
//+
Point(4) = {0, 0.025, 0, 1.0};
//+
Line(1) = {4, 3};
//+
Line(2) = {2, 2};
//+
Line(2) = {3, 2};
//+
Line(3) = {2, 1};
//+
Line(4) = {1, 4};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Extrude {0, 0, 0.001} {
  Point{1}; Point{2}; Point{3}; Point{4}; Curve{1}; Curve{2}; Curve{3}; Curve{4}; Surface{1}; Layers{1}; Recombine;
}
//+
Surface Loop(2) = {2, 5, 4, 3, 6, 1};
//+
Volume(2) = {2};
//+
Physical Surface("inlet") = {3};
//+
Physical Surface("outlet") = {5};
//+
Physical Surface("simetry") = {2, 4};
//+
Physical Surface("frontandback") = {6, 1};
//+
Physical Volume("fluid") = {1};
