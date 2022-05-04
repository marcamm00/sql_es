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
--3
select distinct nazione.nome, nazione.continente
from nazione join scalata on nazione.nome = scalata.nazione
    join scalatore on scalata.scalatore = scalatore.CF
where (scalata.anno-scalatore.annoNascita)<18