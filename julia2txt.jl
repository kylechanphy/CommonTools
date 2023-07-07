"""
Write a julia object to txt file with field name and value
"""
function obj2txt(object, dir)
    open(dir, "w") do io
        T = typeof(object)
        for name in fieldnames(T)
            write(io, "$name = $(getfield(dict, name))\n")
        end
    end
end

"""
Write a julia dictionary  to txt file with field name and value
"""
function dict2txt(dict, dir)
    open(dir, "w") do io
        for key in keys(dict)
            write(io, "$key = $(dict[key])\n")
        end
    end
end
