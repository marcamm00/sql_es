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
--4
select sc.nazione, count(sc.anno)
from scalata sc join scalatore on sc.scalatore = scalatore.CF
where sc.nazione = scalatore.nazioneNascita
group by sc.nazione
--5

--6
select distinct s.CF, s.nazioneNascita, nazione.continente
from scalatore s join nazione on s.nazioneNascita = nazione.nome
    join scalata on s.CF = scalata.scalatore
where nazione.continente != "America" 
--7
select scalata.nazione, scalata.anno, count(*) as scalate
from scalata join nazione on scalata.nazione = nazione.nome
group by scalata.nazione, scalata.anno
having count(*)>1
order by nazione.continente, scalata.anno
