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

# train regression tree
model = build_tree(labels, features)
# apply learned model
apply_tree(model, [-0.9,3.0,5.1,1.9,0.0,0.3,0.4,-0.2])
# run 3-fold cross validation, returns array of coefficients of determination (R^2)
n_folds = 3
r2 = nfoldCV_tree(labels, features, n_folds)

# set of regression parameters and respective default values
# pruning_purity: purity threshold used for post-pruning (default: 1.0, no pruning)
# max_depth: maximum depth of the decision tree (default: -1, no maximum)
# min_samples_leaf: the minimum number of samples each leaf needs to have (default: 5)
# min_samples_split: the minimum number of samples in needed for a split (default: 2)
# min_purity_increase: minimum purity needed for a split (default: 0.0)
# n_subfeatures: number of features to select at random (default: 0, keep all)
# keyword rng: the random number generator or seed to use (default Random.GLOBAL_RNG)
n_subfeatures = 0; max_depth = -1; min_samples_leaf = 5
min_samples_split = 2; min_purity_increase = 0.0; pruning_purity = 1.0 ; seed=3

model = build_tree(labels, features,
                   n_subfeatures,
                   max_depth,
                   min_samples_leaf,
                   min_samples_split,
                   min_purity_increase;
                   rng = seed)

r2 =  nfoldCV_tree(labels, features,
                   n_folds,
                   pruning_purity,
                   max_depth,
                   min_samples_leaf,
                   min_samples_split,
                   min_purity_increase;
                   verbose = true,
                   rng = seed)