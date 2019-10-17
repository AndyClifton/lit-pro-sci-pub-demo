plotSomething <- function(df,
                          made.by = ""){
  
  require(ggplot2)
  
  # create the plot title
  plot.title <- "A plot of something important"
  # create the plot subtitle
  ## get the number of datasets
  n.sources <- NROW(unique(df$source))
  
  plot.subtitle <- paste0(n.sources,
                          " data sources found.")
  ## create the plot caption
  plot.caption <- plotInfoLabel(made.by)
  
  # plot
  p <- ggplot(data = df,
              aes(x = x,
                  y= y,
                  colour = as.factor(source),
                  size = z)) +
    geom_point() + 
    labs(title = plot.title) +
    labs(subtitle = plot.subtitle) +
    labs(caption=plot.caption) 
}