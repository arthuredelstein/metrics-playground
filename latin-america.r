require(ggplot2)

b <- read.csv("clients-2017-10.csv", stringsAsFactors = FALSE)
summary(b)
b <- b[b$country %in% c("ar", "bo", "br", "cl", "cr", "do", "ec", "sv", "gt", "hn", "mx", "pa", "py", "pe", "sr", "uy", "ve", "gy", "gf", "ni", "cu"),]
summary(b)
ggplot(b, aes(x = as.Date(date, "%Y-%m-%d"), y = clients, colour = country)) +
 geom_point()
