// Koch Fractal 1 Generation
// This script is used inside Ansys Grid-Mesh to create the structure
// Doutorado-IF - UFBA
// Aureliano Sancho

function planeXYSketchesOnly (p)

{ 

p.Plane = agb.GetActivePlane();
p.Origin = p.Plane.GetOrigin();
p.XAxis = p.Plane.GetXAxis();
p.YAxis = p.Plane.GetYAxis();

p.Sk1 = p.Plane.newSketch();
p.Sk1.Name = "fractal2G";

with (p.Sk1)
{	
p.Cr1 = ArcCtrEdge(0,0,3,0,2.8191,1.0261);                
p.Ln2 = Line(2.8191,1.0261,3.8031,1.3842);                
p.Cr3 = ArcCtrEdge(0,0,3.8031,1.3842,3.1003,2.6015);      
p.Ln4 = Line(3.1003,2.6015,2.2981,1.9284);                
p.Cr5 = ArcCtrEdge(0,0,2.2981,1.9284,1.5,2.5981);         
p.Cr6 = ArcCtrEdge(0,0,1.5,2.5981,0.52094,2.9544);        
p.Ln7 = Line(0.52094,2.9544,0.70279,3.9857);              
p.Cr8 = ArcCtrEdge(0,0,0.70279,3.9857,-0.70279,3.9857);   
p.Ln9 = Line(-0.70279,3.9857,-0.52094,2.9544);            
p.Cr10 = ArcCtrEdge(0,0,-0.52094,2.9544,-1.5,2.5981);     
p.Cr11 = ArcCtrEdge(0,0,-1.5,2.5981,-2.2981,1.9284);      
p.Ln12 = Line(-2.2981,1.9284,-3.1003,2.6015);             
p.Cr13 = ArcCtrEdge(0,0,-3.1003,2.6015,-3.8031,1.3842);   
p.Ln14 = Line(-3.8031,1.3842,-2.8191,1.0261);             
p.Cr15 = ArcCtrEdge(0,0,-2.8191,1.0261,-3,3.6739e-16);    
p.Cr16 = ArcCtrEdge(0,0,-3,3.6739e-16,-2.8191,-1.0261);   
p.Ln17 = Line(-2.8191,-1.0261,-3.8031,-1.3842);           
p.Cr18 = ArcCtrEdge(0,0,-3.8031,-1.3842,-3.1003,-2.6015); 
p.Ln19 = Line(-3.1003,-2.6015,-2.2981,-1.9284);           
p.Cr20 = ArcCtrEdge(0,0,-2.2981,-1.9284,-1.5,-2.5981);    
p.Cr21 = ArcCtrEdge(0,0,-1.5,-2.5981,-0.52094,-2.9544);   
p.Ln22 = Line(-0.52094,-2.9544,-0.70279,-3.9857);         
p.Cr23 = ArcCtrEdge(0,0,-0.70279,-3.9857,0.70279,-3.9857);
p.Ln24 = Line(0.70279,-3.9857,0.52094,-2.9544);           
p.Cr25 = ArcCtrEdge(0,0,0.52094,-2.9544,1.5,-2.5981);     
p.Cr26 = ArcCtrEdge(0,0,1.5,-2.5981,2.2981,-1.9284);      
p.Ln27 = Line(2.2981,-1.9284,3.1003,-2.6015);             
p.Cr28 = ArcCtrEdge(0,0,3.1003,-2.6015,3.8031,-1.3842);   
p.Ln29 = Line(3.8031,-1.3842,2.8191,-1.0261);             
p.Cr30 = ArcCtrEdge(0,0,2.8191,-1.0261,3,-3.3993e-15);    
}

p.Sk2 = p.Plane.newSketch();
p.Sk2.Name = "Cut";

with (p.Sk2)
{
   p.Cr31 = Circle(0.000000, 0.000000, 2.50000);
}

p.Plane.EvalDimCons(); 
return p;
}

var XYPlane = agb.GetXYPlane();
agb.SetActivePlane (XYPlane );
var ps4 = planeXYSketchesOnly (new Object());

