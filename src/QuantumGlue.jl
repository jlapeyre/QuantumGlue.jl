"""
    QuantumGlue

Interface between quantum science and technology packages.

Yao: quantum information/computing
QuantumOptics: ...

Spin up in `QuantumOptics.SpinBasis(1//2)` corresponds to `0` in the default basis of `Yao`.

`QuantumOptics` is aliased to `QO`.
"""
module QuantumGlue
import Yao
import QuantumOptics
const QO = QuantumOptics

export Ket, register

"""
    qubitbasis(n::Integer)

Create an `n`-qubit basis of type QO.CompositeBasis. The basis is the tensor
product of built-in `Spin(1//2)` bases.
"""
function qubitbasis(n::Integer)
    return QO.CompositeBasis((QO.SpinBasis(1//2) for i in 1:n)...)
end

"""
    Ket(reg::Yao.DefaultRegister)

Convert `reg` to a instance of type `QuantumOptics.Ket`. The data is not copied, but is
shared between the input and output. The input is not checked.
This method is an inverse of `register` acting on objects of type `QuantumOptics.Ket`.
"""
function QuantumOptics.Ket(reg::Yao.DefaultRegister)
    return QuantumOptics.Ket(reg |> Yao.nqubits |> qubitbasis, reg.state[:,1])
end

"""
    register(s::QO.Ket)

Convert `s` to an instance of `Yao.DefaultRegister`. The data is not copied, but
is shared between the input and output. The input is not checked. `s` must be a
`QuantumOptics.CompositeBasis` of `SpinBasis(1//2)`.  This method is an inverse
of `spins`.
"""
function Yao.register(s::QO.Ket)
    return Yao.register(s.data)
end

end # module QuantumGlue
