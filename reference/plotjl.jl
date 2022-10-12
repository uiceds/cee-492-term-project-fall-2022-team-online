using CSV
using DataFrames
using Plots
using StatsPlots

df = CSV.read(joinpath(dirname(@__FILE__), "Concrete_Data.csv"), DataFrame)

namedf = names(df)
rename!(df, [:Cement, :BlastFurnaceSlag, :FlyAsh, :Water, :Superplasticizer, :CoarseAggregate, :FineAggregate, :Age, :Strength])

sdf = stack(df, Not([:Strength, :Age]); variable_name = :Component)

@df sdf violin(string.(:Component), :value, linewidth=0, size=(800, 800), ylabel="Mass (kg)", legend=false)
@df sdf boxplot!(string.(:Component), :value, fillalpha=0.75, linewidth=2, legend=false)