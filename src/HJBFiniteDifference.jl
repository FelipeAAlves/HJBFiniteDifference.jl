module HJBFiniteDifference


import DataFrames: DataFrame
import Gadfly: plot, Geom
import NLsolve: nlsolve, DifferentiableGivenSparseMultivariateFunction
import Distances: chebyshev
using ODE
using Sundials
using ForwardDiff

##############################################################################
##
## Load files
##
##############################################################################
include("aiyagari/aiyagari.jl")
include("aiyagari/dynamicaiyagari.jl")

include("bansalyaron/bansalyaronproblem.jl")
include("bansalyaron/jacobianmethods.jl")
include("bansalyaron/nonjacobianmethods.jl")



##############################################################################
##
## Exported methods and types 
##
##############################################################################
export solve,
AiyagariProblem,
DynamicAiyagariProblem,
BansalYaronProblem,
plot_ll

end