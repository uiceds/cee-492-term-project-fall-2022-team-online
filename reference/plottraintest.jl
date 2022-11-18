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

function plotval(yval, y_pr_val)

    fsize = 7
    ftsize = 7
    xx = 0:80
    compare_plt_val = plot(yval, y_pr_val, 
    st=:scatter,
    xlims=(0,80),
    ylims=(0,80),
    xlab = "True Value (yval)",
    ylab = "Predicted Value (y_pr)",
    size = (300,300),
    aspect_ratio=:equal, legend=false)
    plot!(xx, xx, st=:line)
    rmse_val = sqrt(mse(y_pr_val, yval))
    r2_val = r2_score(y_pr_val, yval)
    annotate!(15,75, text("rmse = $(round(rmse_val, sigdigits=3))", fsize))
    annotate!(15,70, text("R^2 = $(round(r2_val, sigdigits=3))", fsize))

    plt2 = plot(compare_plt_val, dpi=300, size=(250, 300), left_margin = [1mm 0mm], bottom_margin = [0mm 0mm], guidefontsize = fsize, xtickfont = font(ftsize), ytickfont = font(ftsize))

    return plt2
end

function tablehelper(pt, filename)
    io = open(joinpath(dirname(@__FILE__), filename), "w")
    write(io, pt)
    close(io)
end

function markdowntable(df, filename)
    conf = set_pt_conf(tf = tf_markdown);
    pt = pretty_table_with_conf(conf, String, df, nosubheader=true, formatters = ft_printf("%4.3f"))
    tablehelper(pt, filename) 
end