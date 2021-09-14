
#' Return function to interpolate an Imperial color palette
#'
#' @param palette Character name of palette in imperial_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#' @import ggplot2
#' @import dichromat

imperial_pal <- function(palette = "core", reverse = FALSE, ...) {
  pal <- imperial_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}


#' Color scale constructor for imperial colors
#'
#' @param palette Character name of palette in imperial_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to ggplot2::discrete_scale() or
#'            ggplot2::scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#'
scale_color_imperial <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- imperial_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("colour", paste0("imperial_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}

#' Fill scale constructor for imperial colors
#'
#' @param palette Character name of palette in imperial_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to ggplot2::discrete_scale() or
#'            ggplot2::scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#'
scale_fill_imperial <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- imperial_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("imperial_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}




