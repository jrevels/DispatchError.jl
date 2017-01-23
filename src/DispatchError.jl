isdefined(Base, :__precompile__) && __precompile__()

module DispatchError

immutable Foo{A,B}
    a::A
    b::B
    c::Int
    # disable default outer constructor
    Foo(a, b, c) = new(a, b, c)
end

# "private" convienence constructor
_Foo{A,B}(a::A, b::B, c::Int) = Foo{A,B}(a, b, c)

Foo(args...) = error("boo!")

Foo(a::AbstractArray, b::AbstractArray, c::Int = 1) = _Foo(a, b, c)

end # module
