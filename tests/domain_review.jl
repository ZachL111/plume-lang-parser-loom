include("../src/DomainReview.jl")
using .DomainReview

item = ReviewItem(57, 20, 10, 60)
@assert score(item) == 164
@assert lane(item) == "ship"
