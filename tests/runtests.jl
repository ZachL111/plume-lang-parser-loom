include("../src/Policy.jl")
using .Policy

signal_case_1 = Signal(69, 99, 19, 7, 8)
@assert score(signal_case_1) == 186
@assert classify(signal_case_1) == "accept"
signal_case_2 = Signal(91, 106, 8, 25, 8)
@assert score(signal_case_2) == 162
@assert classify(signal_case_2) == "review"
signal_case_3 = Signal(77, 80, 10, 10, 7)
@assert score(signal_case_3) == 186
@assert classify(signal_case_3) == "accept"
