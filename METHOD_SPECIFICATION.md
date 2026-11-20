# Method

Untreated additive FE/common-slope model predicts Y(0). Target averages treated residuals. Its point equals static did2s with matching designs, but native variance differs. Weighted point/JK/RI is an uncertified extension.

Stata currently uses cluster FE only. TWFE uses native weighted alternating
projections; other models use bounded (12-million estimated-entry) SVD reference
designs. No reghdfe/ftools or cross-language runtime calls. At fixed design the
scalar is linear in Y; deletion/reassignment rebuilds assignment-dependent design.
