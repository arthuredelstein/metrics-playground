# Creating LATAM specific plots from Tor metrics with R

Number of Tor clients per country, connected to relays and bridges in LATAM,
Caribbean and Central America (may be missing some country codes).

## Get the statistics file in CSV file format

* [Estimated number of clients in the Tor
  network](https://metrics.torproject.org/stats.html#clients),
  [clients.csv](https://metrics.torproject.org/stats/clients.csv)

The following data file contains estimates on the number of clients in the
network. These numbers are derived from directory requests counted on directory
authorities, directory mirrors, and bridges. Statistics are available for
clients connecting directly relays and clients connecting via bridges. There are
statistics available by country (for both directly-connecting clients and
clients connecting via bridges), by transport protocol (only for clients
connecting via bridges), and by IP version (only for clients connecting via
bridges). Statistics also include predicted client numbers from past
observations, which can be used to detect censorship events.

## Run the R script

```
R --slave -f latin-america.r
```
