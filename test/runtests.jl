using DispatchError
using Base.Test

# this fails with error "boo!"
DispatchError.Foo(rand(3), rand(3), 1)
