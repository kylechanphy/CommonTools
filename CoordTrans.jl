"""
Translate a vector from Cartesian to Spherical coordinate
"""
function cart2sph(vec)
  theta = acos(vec[3])
  phi = sign(vec[2])acos(vec[1] / sqrt(vec[1]^2 + vec[2]^2))
  
  return [theta, phi] 
end
