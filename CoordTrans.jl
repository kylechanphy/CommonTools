"""
Translate a vector from Cartesian to Spherical coordinate

return a vector [r, theta, phi]
  - r: length of the vector
  - theta: polar angle [0, pi] from the z-axis to the vector 
  - phi: azimuthal angle [0, 2pi] from the x-axis to the projection of the vector in x-y plane.
"""
function cart2sph(vec)
  r = hypot(vec[1], vec[2], vec[3])
  theta = acos(vec[3] / r)
  phi = sign(vec[2])acos(vec[1] / hypot(vec[1] + vec[2]))
  
  return SA[r, theta, phi] 
end
