# Cast to RGtk object
# 
# @keyword internal 
as.RGtkObject <- function(x) {
 if(require(RGtk2)) class(x) <- c(class(x), "RGtkObject")
 x
}
get_RGtk2_display <- function(g, i) {
	disp <- as.RGtkObject(displays(g)[[i]]$ref)
}


# # Contains functions for accessing pieces of the GGobi user interface. 
# These are useful for embedding in other applications or for listening
# to their signals via ie RGtk.

getMainWindow.ggobi <-
function(.gobi = ggobi_get())
{
  .GGobiCall("getMainWindow", .gobi = .gobi)
}
getMenuBar.ggobi <-
function(.gobi = ggobi_get())
{
  .GGobiCall("getMenubar", .gobi = .gobi)
}

