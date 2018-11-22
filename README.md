# QuantumGlue

<!-- [![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://jlapeyre.github.io/QuantumGlue.jl/stable) -->
<!-- [![Latest](https://img.shields.io/badge/docs-latest-blue.svg)](https://jlapeyre.github.io/QuantumGlue.jl/latest) -->

[![Build Status](https://travis-ci.com/jlapeyre/QuantumGlue.jl.svg?branch=master)](https://travis-ci.com/jlapeyre/QuantumGlue.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/jlapeyre/QuantumGlue.jl?svg=true)](https://ci.appveyor.com/project/jlapeyre/QuantumGlue-jl)
[![Codecov](https://codecov.io/gh/jlapeyre/QuantumGlue.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/jlapeyre/QuantumGlue.jl)
[![Coveralls](https://coveralls.io/repos/github/jlapeyre/QuantumGlue.jl/badge.svg?branch=master)](https://coveralls.io/github/jlapeyre/QuantumGlue.jl?branch=master)


`QuantumGlue` provides an interface between some features of distinct quantum science and engineering packages.

This package is exploratory. It will not provide a library or application.

The package consists of methods that convert between [`QuantumOptics.Ket`](https://github.com/qojulia/QuantumOptics.jl)
and [`Yao.DefaultRegister`](https://github.com/QuantumBFS/Yao.jl) in the case that each represents a pure multi-qubit state via an array of coefficients of the computational basis vectors.
