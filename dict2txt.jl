"""
Write a julio Dict to txt file with key name and value
"""
function dict2txt(dict, dir)
    open(dir, "w") do io
        T = typeof(dict)
        for name in fieldnames(T)
            write(io, "$name = $(getfield(dict, name))\n")
        end
    end
end
