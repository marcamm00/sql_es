--1
select distinct nazione.continente, scalata.scalatore as Scalatore
from scalata join nazione on scalata.nazione = nazione.nome