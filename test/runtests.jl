import QuantumGlue

import QuantumOptics
const QO = QuantumOptics

import Yao
using Test

@testset "Convert multi-qubit states" begin
    for f in (Yao.zero_state, Yao.rand_state)
        s = f(3)
        @test s |> QO.Ket |> Yao.register == s
    end
end
