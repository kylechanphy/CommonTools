"""
Translate a vector from Cartesian to Spherical coordinate

input: vec = [x, y, z]

return a Static Array SA[r, theta, phi]
  - r: length of the vector
  - theta: polar angle [0, pi] from the z-axis to the vector 
  - phi: azimuthal angle [0, 2pi] from the x-axis to the projection of the vector in x-y plane.
"""
function cart2sph(vec)
    r = hypot(vec[1], vec[2], vec[3])
    theta = acos(vec[3] / r)
    phi = sign(vec[2])acos(vec[1] / hypot(vec[1] + vec[2]))

    if vec[1] == 0 && vec[2] == 0 
        vec[3] != 0 || error("Undefind azimuthal angle ϕ for x=y=z=0")
        phi = 0
    end

    return SA[r, theta, phi]
end

"""
Translate a vector from Spherical to Cartesian coordinate

input: vec = [r, theta, phi]

return a Static Array SA[x, y, z]
"""
function sph2cart(vec)
    r, theta, phi = vec

    x = r*sin(theta)*cos(phi)
    y = r*sin(theta)*sin(phi)
    z = r*cos(theta)

    return SA[x, y, z]
end
