#'@name courbes.temp
#'

courbes.temp <- function(ville = "", station, start_date, end_date){
  tm <- getWeatherForDate(station, start_date=start_date, end_date=end_date, opt_all_columns = TRUE)
  xt <- xts(tm[, c(3, 4, 5)], order.by = tm[,1])
  plot(xt[,1], ylim = c(0,50), main = paste0(ville, " - Evolution des températures"))
  lines(xt[,3], ylim = c(0,50))
  lines(xt[,2], ylim = c(0,50), lty = 3, col = "green")
  abline(h = 34, lty = 2, col = "red")
  abline(h = 19, lty = 2, col = "red")
}