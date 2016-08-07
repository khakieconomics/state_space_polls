#' Lendable aesthetic theme for ggplot2
#' 
#' A complete theme, loosely based on \code{theme_fivethirtyeight} from the \code{ggthemes} package, for use in both internal and external Lendable data visualizations
#' @param base_size The size of text from which all other sizes derive proportionally
#' @param base_family The font of the text 
#' @return A list of options compatible with \code{ggplot()}
#' @export

theme_lendable <- 
  function(base_size = 14, base_family = "Liberation Sans") {
    require(RColorBrewer)
    require(ggplot2)
    require(extrafont)
    
    # Generate the colors for the chart procedurally with RColorBrewer
    # palette <- brewer.pal("Greys", n=9)
    palette <- colorRampPalette(c('seashell', 'white', 'black'))(9)
    color_background = palette[2]
    color_grid_major = palette[6]
    color_axis_text = palette[8]
    color_axis_title = palette[8]
    color = palette[8]
    color_title = palette[9]
    
    # Begin construction of chart
    base_size1 = base_size
    theme_bw(base_size=base_size1) +
      
      # Set the entire chart region to seasheel
      theme(panel.background=element_rect(fill=color_background, 
                                          color=color_background)) +
      theme(plot.background=element_rect(fill=color_background, 
                                         color=color_background)) +
      theme(panel.border=element_rect(color=color_background)) +
      
      # Format the grid
      theme(panel.grid.major=element_line(color=color_grid_major,
                                          size=.25)) +
      theme(panel.grid.minor=element_blank()) +
      theme(axis.ticks=element_blank()) +
      
      # Format the legend, but hide by default
      # theme(legend.position="none") +
      theme(legend.background = element_rect(fill=color_background)) +
      theme(legend.text = element_text(family = base_family,
                                       size=base_size * 0.5,
                                       color=color_axis_title)) +
      
      # Set title and axis labels, and format these and tick marks
      theme(plot.title=element_text(family = base_family,
                                    color=color_title, 
                                    size=base_size*1.2, 
                                    vjust=1.25)) +
      theme(axis.text.x=element_text(family = base_family,
                                     size=base_size * 0.8,
                                     color=color_axis_text)) +
      theme(axis.text.y=element_text(family = base_family,
                                     size=base_size * 0.8,
                                     color=color_axis_text)) +
      theme(axis.title.x=element_text(family = base_family,
                                      size=base_size * 0.8,
                                      color=color_axis_title, 
                                      vjust=0)) +
      theme(axis.title.y=element_text(family = base_family,
                                      size=base_size * 0.8,
                                      color=color_axis_title, 
                                      vjust=1.25)) +
      
      # Plot margins
      theme(plot.margin = unit(c(0.35, 0.2, 0.3, 0.35), "cm")) +
      theme(complete = TRUE) +
      
      # No stupd border on legend fills
      theme(legend.key = element_blank())
  }