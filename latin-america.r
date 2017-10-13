require(ggplot2)

# Load data
b <- read.csv("clients-2017-10.csv", stringsAsFactors = FALSE)
summary(b)

# Filter by latin american countries
b <- b[b$country %in% c("ar", "bo", "br", "cl", "cr", "do", "ec", "sv", "gt", "hn", "mx", "pa", "py", "pe", "sr", "uy", "ve", "gy", "gf", "ni", "cu"),]
summary(b)

# Plot per country
ggplot(b, aes(x = as.Date(date, "%Y-%m-%d"), y = clients, colour = country)) +
 geom_point() +
 geom_line() +
# scale_y_log10() +
 facet_grid(node~.,scales = "free_y")


# Aggregated data from all countries
d <- aggregate(list(clients = b$clients), by = list(date = b$date, node = b$node), FUN = sum)
summary(d)

# Plot aggregated data from all countries
ggplot(d, aes(x = as.Date(date, "%Y-%m-%d"), y = clients, colour = node)) +
 geom_line() +
# facet_grid(node~.,scales = "free_y") +
 expand_limits(y = 0)

