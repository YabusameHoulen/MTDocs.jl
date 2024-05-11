module MyDocs

export hello_world

"""
    hello_world

say hello to different people
"""
hello_world() = println("hello")
hello_world(_) = println("hello anonymous")
hello_world(x::AbstractString) = println("hello ", x)

end
