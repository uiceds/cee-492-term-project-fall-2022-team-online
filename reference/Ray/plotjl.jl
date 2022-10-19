using CSV
using DataFrames
using Plots
using StatsPlots
using PlotThemes
using PrettyTables
using StatsBase
using Markdown
theme(:default)

df = CSV.read(joinpath(dirname(@__FILE__), "Concrete_Data.csv"), DataFrame)

namedf = names(df)
rename!(df, [:Cement, :BlastFurnaceSlag, :FlyAsh, :Water, :Superplasticizer, :CoarseAggregate, :FineAggregate, :Age, :Strength])
stat = describe(df)
st = @df df std(:Age)

sdf = stack(df, Not([:Strength, :Age]); variable_name = :Component)
@df sdf violin(string.(:Component), :value, linewidth=0, size=(800, 800), ylabel="Mass (kg)", legend=false)
@df sdf boxplot!(string.(:Component), :value, fillalpha=0.75, linewidth=2, legend=false)
@df sdf display(dotplot!(string.(:Component), :value, markersize=1, markercolor=:black))

@df df violin(["Age"], :Age, linewidth=0, size=(300, 600), ylabel="Days", legend=false)
@df df display(boxplot!(["Age"], :Age, fillalpha=0.75, linewidth=2, legend=false))

@df df violin(["Strength"], :Strength, linewidth=0, size=(300, 600), ylabel="psi", legend=false)
@df df display(boxplot!(["Strength"], :Strength, fillalpha=0.75, linewidth=2, legend=false))

conf = set_pt_conf(tf = tf_markdown);
pt = pretty_table_with_conf(conf, String, stat, nosubheader=true)
io = open(joinpath(dirname(@__FILE__), "StatTable.md"), "w")
write(io, pt)
close(io)

# savefig(joinpath(dirname(@__FILE__), "BoxViolinDot.png"))