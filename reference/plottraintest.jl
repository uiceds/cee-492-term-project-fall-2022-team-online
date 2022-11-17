using Plots.PlotMeasures

function plottraintest(ytrain, y_pr_train, ytest, y_pr_test)

    
    fsize = 7
    ftsize = 7
    xx = 0:80
    compare_plt_train = plot(ytrain, y_pr_train, 
    st=:scatter,
    xlims=(0,80),
    ylims=(0,80),
    xlab = "True Value (ytrain)",
    ylab = "Predicted Value (y_pr)",
    size = (500,500),
    aspect_ratio=:equal, legend=false)
    plot!(xx, xx, st=:line)
    rmse_train = sqrt(mse(y_pr_train, ytrain))
    r2_train = r2_score(y_pr_train, ytrain)
    annotate!(15,75, text("rmse = $(round(rmse_train, sigdigits=3))", fsize))
    annotate!(15,70, text("R^2 = $(round(r2_train, sigdigits=3))", fsize))

    compare_plt_test = plot(ytest, y_pr_test, 
    st=:scatter,
    xlims=(0,80),
    ylims=(0,80),
    xlab = "True Value (ytest)",
    ylab = "Predicted Value (y_pr)",
    size = (500,500),
    aspect_ratio=:equal, legend=false)
    plot!(xx, xx, st=:line)
    rmse_test = sqrt(mse(y_pr_test, ytest))
    annotate!(15,75, text("rmse = $(round(rmse_test, sigdigits=3))", fsize))
    r2_test = r2_score(y_pr_test, ytest)
    annotate!(15,70, text("R^2 = $(round(r2_test, sigdigits=3))", fsize))
    title1 = ["($i)" for j in 1:1, i in 1:2]
    plt2 = plot(compare_plt_train, compare_plt_test, dpi=300, size=(500, 300), left_margin = [1mm 0mm], bottom_margin = [0mm 0mm], guidefontsize = fsize, xtickfont = font(ftsize), ytickfont = font(ftsize), title=title1, titleloc = :right, titlefont = font(fsize))

    return plt2
end

function mse(ŷ::Vector{T}, y::Vector{T})::T where T<:AbstractFloat
	mean((ŷ .- y).^2)
end