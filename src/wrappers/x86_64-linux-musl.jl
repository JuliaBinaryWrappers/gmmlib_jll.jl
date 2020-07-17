# Autogenerated wrapper script for gmmlib_jll for x86_64-linux-musl
export libigdgmm

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libigdgmm`
const libigdgmm_splitpath = ["lib", "libigdgmm.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libigdgmm_path = ""

# libigdgmm-specific global declaration
# This will be filled out by __init__()
libigdgmm_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libigdgmm = "libigdgmm.so.11"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"gmmlib")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libigdgmm_path = normpath(joinpath(artifact_dir, libigdgmm_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libigdgmm_handle = dlopen(libigdgmm_path)
    push!(LIBPATH_list, dirname(libigdgmm_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

