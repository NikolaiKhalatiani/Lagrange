# Lagrange

Given a set of points, polynomial interpolation is the task of finding a polynomial with lowest degree that passes through all the points.
Assume the set <strong><i>( x<sub>0</sub> ,y<sub>0</sub> )...( x<sub>n</sub> ,y<sub>n</sub> )</i></strong> of points. Then a suitable polynomial is given by  
$$L(x):=\sum_{j=0}^n y_i l_j(x)$$
where the Lagrange polynomials <strong><i>l<sub>j</sub>(x)</i></strong> are defined as follows:
$$l_j(x):=\prod_{0 \le k \le n \bigwedge k \neq j} \frac{x-x_k}{x_j-x_k}$$  
<br>
<ol><li><code> lagrange : (float * float) list -> float -> float</code><br>
  Implement the function <code>lagrange l f</code> that returns the interpolated polynomial <strong><i>L</i></strong>.
  </li></ol>  
  
  ### Examples:
```ocaml
# lagrange [100.,231.; 200.,12.; 300.,382.5] 0.3;;
- : float = 1036.19290275 

# lagrange [73.8,25.; 205.7,12.; 30.,25.5] 0.7;;
- : float = 24.7721663406290027
```
