select romanzo.*
from romanzo
where romanzo.AnnoPubblicazione = 2009
--2
select romanzo.*
from romanzo
where romanzo.AnnoPubblicazione >= 1990
--3
select romanzo.*
from romanzo
where romanzo.AnnoPubblicazione > 1900 and romanzo.AnnoPubblicazione < 2000
--4
select autore.Nome, autore.Cognome, autore.Cognome, romanzo.Titolo
from autore, romanzo
where romanzo.Autore = autore.ID
--5
select a.Cognome, a.Nome, romanzo.Titolo
from autore as a, romanzo
where romanzo.Autore = a.ID 
order by a.Cognome, a.Nome 
--6
select a.Cognome, a.Nome, romanzo.Titolo
from autore as a, romanzo
where romanzo.Autore = a.ID and a.Nazionalità like 'Russa' 
order by a.Cognome, a.Nome 
--7
select romanzo.Titolo
from autore as a, romanzo
where romanzo.Autore = a.ID and (a.DataNascita > 1900 and a.DataNascita < 2000)
order by a.Cognome, a.Nome, romanzo.AnnoPubblicazione
--8
select romanzo.Titolo, romanzo.AnnoPubblicazione
from autore, romanzo
where romanzo.Autore = autore.ID and autore.DataMorte is null
--9
select romanzo.Titolo
from autore, romanzo
where romanzo.Autore = autore.ID and (autore.DataMorte is null or (autore.DataMorte is not null and autore.LuogoMorte != "Torino"))
--10
select romanzo.Titolo, romanzo.AnnoPubblicazione
from autore, romanzo
where romanzo.Autore = autore.ID and autore.LuogoNascita = "Roma"
--11
select romanzo.*
from romanzo
where romanzo.Titolo like 'Tokyo%'
--12
select romanzo.*
from romanzo
where romanzo.Titolo like '%Sposi%'
--13
select romanzo.*
from romanzo
where romanzo.Titolo like '%i_'
--14
select romanzo.*
from romanzo
where romanzo.Titolo like '%blues'
--15
select r.*
from romanzo as r
where r.Titolo like '%Zeno%' and (r.AnnoPubblicazione > 1900 and r.AnnoPubblicazione < 2000)
--16
select r.*
from romanzo as r
where (r.Titolo like '%sposi%' or r.Titolo like '%Sposi%') and r.AnnoPubblicazione < 1900 
--17
select romanzo.*
from romanzo, autore
where romanzo.Autore = autore.ID and (autore.Nome = 'Don' and autore.Cognome = 'Manzoni')
--18
select distinct romanzo.Titolo
from romanzo, autore
where romanzo.Autore = autore.ID and (autore.Nome = 'Don' and autore.Cognome = 'DeLillo')
--19
select romanzo.*
from romanzo, personaggio, personaggioromanzo
where romanzo.ID = personaggioromanzo.romanzo and personaggio.ID = personaggioromanzo.personaggio
and (personaggio.nome = 'Benjiamin' and personaggio.cognome = 'Malaussène')
--20
select romanzo.*
from romanzo, autore
where romanzo.Autore is null