using MyDocs
using Test

@testset "MyDocs.jl" begin
    @test 1 == 1
    @test hello_world() === nothing
end
