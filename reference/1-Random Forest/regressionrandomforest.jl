using DataFrames
using CSV
using DecisionTree

df = CSV.read(joinpath(pwd(), "reference" , "Concrete_Data.csv"), DataFrame)

# n, m = 10^3, 5
# features = randn(n, m)
# weights = rand(-2:2, m)
# labels = features * weights

features = Matrix(df[!, 1:8])
weights = collect(1:8)
labels = df[!, 9]

display(features)
display(weights)
display(labels)

# train regression forest, using 2 random features, 10 trees,
# averaging of 5 samples per leaf, and 0.7 portion of samples per tree
model = build_forest(labels, features, 2, 10, 0.7, 5)
# apply learned model
apply_forest(model, [1.0,1,1,1,1,1,1,1])
# run 3-fold cross validation on regression forest, using 2 random features per split
n_subfeatures=2; n_folds=3
r2 = nfoldCV_forest(labels, features, n_folds, n_subfeatures)

# set of regression build_forest() parameters and respective default values
# n_subfeatures: number of features to consider at random per split (default: -1, sqrt(# features))
# n_trees: number of trees to train (default: 10)
# partial_sampling: fraction of samples to train each tree on (default: 0.7)
# max_depth: maximum depth of the decision trees (default: no maximum)
# min_samples_leaf: the minimum number of samples each leaf needs to have (default: 5)
# min_samples_split: the minimum number of samples in needed for a split (default: 2)
# min_purity_increase: minimum purity needed for a split (default: 0.0)
# keyword rng: the random number generator or seed to use (default Random.GLOBAL_RNG)
#              multi-threaded forests must be seeded with an `Int`
n_subfeatures=-1; n_trees=10; partial_sampling=0.7; max_depth=-1
min_samples_leaf=5; min_samples_split=2; min_purity_increase=0.0; seed=3

model = build_forest(labels, features,
                     n_subfeatures,
                     n_trees,
                     partial_sampling,
                     max_depth,
                     min_samples_leaf,
                     min_samples_split,
                     min_purity_increase;
                     rng = seed)

r2 =  nfoldCV_forest(labels, features,
                     n_folds,
                     n_subfeatures,
                     n_trees,
                     partial_sampling,
                     max_depth,
                     min_samples_leaf,
                     min_samples_split,
                     min_purity_increase;
                     verbose = true,
                     rng = seed)