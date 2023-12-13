"""
Translate a vector from Cartesian to Spherical coordinate

return a vector [theta, phi]
  - theta: polar angle [0, pi]
  - phi: azimuthal angle in x-y plane [0, 2pi]
"""
function cart2sph(vec)
  theta = acos(vec[3])
  phi = sign(vec[2])acos(vec[1] / sqrt(vec[1]^2 + vec[2]^2))
  
  return [theta, phi] 
end
