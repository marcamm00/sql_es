--1
select distinct nazione.continente, scalata.scalatore as Scalatore
from scalata join nazione on scalata.nazione = nazione.nome
--2
select s.CF, count(nazione.continente) as nContinenti
from scalatore s join scalata on s.CF = scalata.scalatore
    join nazione on scalata.nazione = nazione.nome
where s.annoNascita < 1980
group by s.CF
order by s.CF, nazione.continente