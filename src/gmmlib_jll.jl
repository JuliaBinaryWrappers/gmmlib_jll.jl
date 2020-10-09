# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule gmmlib_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("gmmlib")
JLLWrappers.@generate_main_file("gmmlib", UUID("09858cae-167c-5acb-9302-fddc6874d481"))
end  # module gmmlib_jll
