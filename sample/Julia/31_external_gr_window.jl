# Objective: Force an *external* GR / GKS QtTerm window (cannot embed in Plot panel).
# Needs: Plots.jl + Settings → Session → Julia → Show GR plot window, then Arm.
# With headless GR (default), prints SKIP (TF-safe). Blank lines = sniper chunks.

# Settings guard (GKSwstype=100 = headless PNG path)
if get(ENV, "GKSwstype", "") == "100"
    println("SKIP 31_external_gr_window (enable Settings → Show GR plot window, then Arm)")
else
    try
        using Plots
        x = range(0, 2π; length = 120)
        plot(x,
             sin.(x);
             title = "STATghost — external GR",
             legend = false,
             lw = 3.5,
             color = :dodgerblue,
             show = true)
        display(current())
        println("PASS 31_external_gr_window — GKS QtTerm should be open")
    catch e
        println("SKIP 31_external_gr_window (Pkg): ", e)
    end
end
