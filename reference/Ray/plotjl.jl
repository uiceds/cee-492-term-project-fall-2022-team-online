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
using Printf
using GLM
using LaTeXStrings
theme(:default)
# include(joinpath(abspath(joinpath(pwd(), "..")), "tablehelper.jl"))

function tablehelper(pt, filename)
    io = open(joinpath(dirname(@__FILE__), filename), "w")
    write(io, pt)
    close(io)
end

df = CSV.read(joinpath(dirname(@__FILE__), "Concrete_Data_RA.csv"), DataFrame)

namedf = names(df)
namedfs = hcat(rsplit.(namedf, ' ', limit=2)...)
nameonly = uppercasefirst.(lowercase.(namedfs[1, :]))
unitonly = namedfs[2, :]
stat = describe(df, :mean, :std, :min, :q25, :median, :q75, :max)
tdf = copy(df)

fsize = 20
ftsize = 14

sdf = stack(rename!(tdf, string.((1:9))), 1:7; variable_name = :Component)
@df sdf violin(string.(:Component), :value, linewidth=0, ylabel="kg/m³", legend=false)
@df sdf boxplot!(string.(:Component), :value, fillalpha=0.75, linewidth=2, legend=false)
p1 = @df sdf dotplot!(string.(:Component), :value, markersize=1, markercolor=:black, xrotation=45, xticks = (0.5:6.5, nameonly[1:7]))

@df df violin([namedf[8]], cols(8), linewidth=0, ylabel="days", legend=false)
@df df boxplot!([namedf[8]], cols(8), fillalpha=0.75, linewidth=2, legend=false)
p2 = @df df dotplot!([namedf[8]], cols(8), markersize=1, markercolor=:black, xrotation=45, xlims = (-0.4, 1.4), xticks=((0.5), nameonly[8:8]))

@df df violin([namedf[9]], cols(9), linewidth=0, ylabel="MPa", legend=false)
@df df boxplot!([namedf[9]], cols(9), fillalpha=0.75, linewidth=2, legend=false)
p3 = @df df dotplot!([namedf[9]], cols(9), markersize=1, markercolor=:black, xrotation=45, xlims = (-0.4, 1.4), xticks=((0.5), nameonly[9:9]))

l = @layout [a{0.8w} [grid(2, 1)]]
title1 = ["($i)" for j in 1:1, i in 1:3]
display(plot(p1, p2, p3, layout = l, size=(1400, 1400), left_margin = [5mm 0mm 0mm], bottom_margin = [0mm 0mm 0mm], guidefontsize = fsize, xtickfont = font(ftsize), ytickfont = font(ftsize), title=title1, titleloc = :right, titlefont = font(fsize)))
savefig(joinpath(dirname(@__FILE__), "BoxViolinDot.png"))

conf = set_pt_conf(tf = tf_markdown);
pt = pretty_table_with_conf(conf, String, stat, nosubheader=true, formatters = ft_printf("%5.3f"))
tablehelper(pt, "StatTable.md")

df_array = ((df[!,5] .== 0.0) .& (df[!, 6] .== 0.0) .& (df[!, 7] .== 0.0))

df[!, "With Blast Furnace Slag"] = (df[!, 5] .!= 0.0)
df[!, "With Fly Ash"] = (df[!, 6] .!= 0.0)
df[!, "With Superplasticizer"] = (df[!, 7] .!= 0.0)

contdf = groupby(df, (10:12))
cont = combine(contdf, nrow => :Observations)
pt = pretty_table_with_conf(conf, String, cont, nosubheader=true, show_row_number = false)
tablehelper(pt, "NTable.md")

# p4gdf = contdf[1]
# p4x = p4gdf[!, 2]./p4gdf[!, 1]
# p4y = p4gdf[!, 9]

# p42gdf = df[(df[!, 10].==true) .| (df[!, 11].==true) .| (df[!, 12].==true), :
# p42x = p42gdf[!, 2]./p42gdf[!, 1]
# p42y = p42gdf[!, 9]

p4 = plot(seriestype=:scatter, yaxis=:log, yticks=(0:7:84), yformatter=x->@sprintf("%.0f", x), legend=false, size=(1400, 1000), xlabel="W/C ratio", ylabel=namedf[9], guidefontsize = fsize, xtickfont = font(ftsize), ytickfont = font(ftsize), left_margin=7mm, bottom_margin=7mm)
for p4g in (contdf[1:1])
    p4gg = p4g[(p4g[!, 8].==28), :]
    p4x = p4gg[!, 2]./p4gg[!, 1]
    p4y = p4gg[!, 9]
    x11 = hcat(repeat([1], length(p4x)), p4x)
    y11 = log.(p4y)
    pp = x11\y11
    xb = 0.25:0.01:1
    yb = exp.(pp[1].+pp[2].*xb)
    plot!(xb, yb, linewidth = 4)
    plot!(p4x, p4y, seriestype=:scatter, yaxis=:log, markerstrokewidth = 0, markersize = 4, color=1)
end
display(p4)
savefig(joinpath(dirname(@__FILE__), "WCPlot.png"))

compvagemean = combine(groupby(df, 8), propertynames(df)[9] => mean)
#plot(contdf[1][!, 8], contdf[1][!, 9], seriestype=:scatter, legend=false, size=(1400, 1000), xlabel=ylabel=namedf[8], ylabel=namedf[9])
# display(plot!(compvagemean[!, 1], compvagemean[!, 2]))
# savefig(joinpath(dirname(@__FILE__), "CAPlot.png"))

fsize = 10
ftsize = 7
p5 = plot(dpi=300, legend=false, xlabel=namedf[8], ylabel=namedf[9], size=(500, 350), guidefontsize = fsize, xtickfont = font(ftsize), ytickfont = font(ftsize), left_margin=0px, bottom_margin=0mm, xticks=([0, 3, 7, 14, 28, 90, 180, 360]), yticks=(0:7:84), xlim=(0, 365), ylim=(0, 84))
gb2 = groupby(df, (1:7))
for gb in gb2
    if size(gb)[1] > 5
        gbt = combine(groupby(gb, (8)), (9) => mean)
        gbs = sort!(gbt, (1))
        plot!(gbs[!, 1], gbs[!, 2], linewidth = 2)
    end
end
display(p5)
savefig(joinpath(dirname(@__FILE__), "CAPlot300.png"))