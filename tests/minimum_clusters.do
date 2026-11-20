version 16
clear all
set more off
run "fastbjs.mata"
mata: mata drop fastbjs_v1_fit()
mata:
real rowvector fastbjs_v1_fit(real matrix input, real colvector a, real scalar omit, real scalar native, string scalar family)
{
    assert(rows(a)==2)
    assert(omit==1 | omit==2)
    return((omit==1 ? 1 : 3,.))
}
result=fastbjs_v1_jack(J(1,1,0),(3\0),"fastbjs")
assert(cols(result)==3)
assert(abs(result[1]-1)<1e-14)
assert(result[2]==1 & result[3]==3)
end
capture mata: fastbjs_v1_jack(J(1,1,0),3,"fastbjs")
assert _rc!=0
di "TWO_DELETION_ACCUMULATOR_PASS fastbjs; actual ATT feasibility tested separately"
