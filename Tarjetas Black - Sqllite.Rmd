---
title: "Tarjetas Black"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# SQLite Example

First, you have to install SQLite dependency

```{r}
if (!require("RSQLite")) install.packages("RSQLite")
```

Then, create the Database connection ...

```{r}
library(DBI)
con <- dbConnect(RSQLite::SQLite(), dbname="tajetasblack.db")

```

And finally, you can query the database ...

```{sql connection=con}

SELECT *
FROM consejero
LIMIT 5
```