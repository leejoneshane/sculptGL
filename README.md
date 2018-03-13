This is a docker images for Stephane Ginier 3D modeling tool named sculptGL.

## about SculptGL

[SculptGL](https://github.com/stephomi/sculptgl) is a digital sculpting web app, with sources available on github.
Also available on the chrome web store.
If you want to download a standalone version, you can download it here (identical as the web version).
Sketchfab made a fork of the old SculptGL version with a new design : Sculptfab. 

## Main features :

- Sculpting tools
+ Standard tools : Brush, Inflate, Smooth, Twist, Drag, etc
+ PBR Vertex Painting (color, roughness, metalness)
+ Alpha texture support for each tools
- Multiresolution sculpting
+ Quad-tri Subdivison (catmull-clark/loop)
+ Reversion (compute opposite of subdvision if possible)-- 
+ Navigating from low/high poly level subdiv will retain sculpting changes
+ keep UVs (both reversion and subdivison)
- Voxel remeshing
+ Uses SurfaceNets meshing algorithm (produces quad-only mesh)
+ Uniform remeshing (quads will have the same size)
+ Can also create non-manifold vertex :(
+ In case of a non closed mesh, a naive holefilling algorithm is performed first
+ Deletes UV
- Dynamic topology
+ Triangles only
+ Operates in real time
+ Local subdivision (create new triangles)
+ Local decimation (deletes triangles)
+ Deletes UV
- Supports OBJ, PLY, STL import/export
+ Reads vertex color
+ Optimizes post and pre transform cache (tipsy algorithm)
- Undo/Redo support
