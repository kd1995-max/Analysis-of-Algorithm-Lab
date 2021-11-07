   set autoscale                        # scale axes automatically
      unset log                              # remove any log-scaling
      unset label                            # remove any previous labels
      set xtic auto                          # set xtics automatically
      set ytic auto                          # set ytics automatically
	  set tics font "Helvetica,10"
      set title "Accuracy in Different Size of Neural Network"
      set xlabel "Number of Hidden Layers"
      set ylabel "Accucarcy (%)"
      #set key 0.01,100
      #set label "Yield Point" at 0.003,260
      #set arrow from 0.0028,250 to 0.003,280
      set xr [5:25]
      set yr [40:100]
      plot  "data.txt" using 1:2 title 'Training' with linespoints, \
            "data.txt" using 1:3 title 'Validation'  with linespoints,\
            "data.txt" using 1:4 title 'Testing'  with linespoints