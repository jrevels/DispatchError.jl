isdefined(Base, :__precompile__) && __precompile__()

module DispatchError

immutable Foo{A,B}
    a::A
    b::B
    c::Int
    # disable default outer constructor
    Foo(a, b, c) = new(a, b, c)
end

Foo(args...) = error("boo!")

Foo{A<:AbstractArray,B<:AbstractArray}(a::A, b::B, c::Int = 1) = info("yay!")

end # module
