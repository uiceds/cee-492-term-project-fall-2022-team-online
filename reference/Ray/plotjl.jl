using CSV
using DataFrames
using Plots
using StatsPlots
using PlotThemes
using PrettyTables
using StatsBase
using Markdown
#using Measures
using Plots.PlotMeasures
theme(:thermal)
# include(joinpath(abspath(joinpath(pwd(), "..")), "tablehelper.jl"))

function tablehelper(pt, filename)
    io = open(joinpath(dirname(@__FILE__), filename), "w")
    write(io, pt)
    close(io)
end

df = CSV.read(joinpath(dirname(@__FILE__), "Concrete_Data_RA.csv"), DataFrame)

namedf = names(df)
stat = describe(df, :mean, :std, :min, :q25, :median, :q75, :max)
tdf = copy(df)

sdf = stack(rename!(tdf, string.((1:9))), 1:7; variable_name = :Component)
@df sdf violin(string.(:Component), :value, linewidth=0, ylabel="kg/m3", legend=false)
@df sdf boxplot!(string.(:Component), :value, fillalpha=0.75, linewidth=2, legend=false)
p1 = @df sdf dotplot!(string.(:Component), :value, markersize=1, markercolor=:black, xrotation=45, guidefontsize = 8, xtickfont = font(8), ytickfont = font(8), xticks = (0.5:6.5, namedf))

@df df violin([namedf[8]], cols(8), linewidth=0, ylabel="days", legend=false)
@df df boxplot!([namedf[8]], cols(8), fillalpha=0.75, linewidth=2, legend=false)
p2 = @df df dotplot!([namedf[8]], cols(8), markersize=1, markercolor=:black, guidefontsize = 8, xtickfont = font(8), ytickfont = font(8), xrotation=45, xlims = (-0.4, 1.4))

@df df violin([namedf[9]], cols(9), linewidth=0, ylabel="MPa", legend=false)
@df df boxplot!([namedf[9]], cols(9), fillalpha=0.75, linewidth=2, legend=false)
p3 = @df df dotplot!([namedf[9]], cols(9), markersize=1, markercolor=:black, guidefontsize = 8, xtickfont = font(8), ytickfont = font(8), xrotation=45, xlims = (-0.4, 1.4))

l = @layout [a{0.8w} [grid(2, 1)]]
display(plot(p1, p2, p3, layout = l, size=(1200, 800), left_margin = [5mm 0mm 0mm], bottom_margin = [5mm 0mm 10mm]))

conf = set_pt_conf(tf = tf_markdown);
pt = pretty_table_with_conf(conf, String, stat, nosubheader=true, formatters = ft_printf("%5.3f"))
tablehelper(pt, "StatTable.md")

df_array = ((df[!,5] .== 0.0) .& (df[!, 6] .== 0.0) .& (df[!, 7] .== 0.0))

df[!, "With Blast Furnace Slag"] = (df[!, 5] .!= 0.0)
df[!, "With Fly Ash"] = (df[!, 6] .!= 0.0)
df[!, "With Superplasticizer"] = (df[!, 7] .!= 0.0)

cont = combine(groupby(df, (10:12)), nrow => :Observations)
pt = pretty_table_with_conf(conf, String, cont, nosubheader=true, show_row_number = false)
tablehelper(pt, "NTable.md")

groupby(df, (10))

plot(df[!, 2]./df[!, 1], df[!, 9], seriestype=:scatter, yaxis=:log, yticks = (0:15:90, string.(0:15:90)))

# savefig(joinpath(dirname(@__FILE__), "BoxViolinDot.png"))