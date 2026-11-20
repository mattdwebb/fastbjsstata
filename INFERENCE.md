# Native inference

BJS default imputation-weight cluster scores with cohort-time centering, weighting each observation by its cluster count in that cell. Untreated scores propagate imputation uncertainty. No finite-sample multiplier; normal reference. Nonuniform native weights unsupported.

## November 2026 support revision

The Stata delete-cluster calculation now recomputes the estimator on surviving support. Disappearance of an adoption cohort by itself does not invalidate a deletion. Every required deletion must yield an estimate for a jackknife standard error.
