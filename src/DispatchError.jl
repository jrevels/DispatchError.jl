__precompile__()

module DispatchError

immutable Foo{A,B}
    a::A
    b::B
    c::Int
    # disable default outer constructor
    Foo(a, b, c) = new(a, b, c)
end

Foo(args...) = error("boo!")

Foo{A<:AbstractArray,B<:AbstractArray}(a::A, b::B, c::Int) = info("yay!")

end # module
