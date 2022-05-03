--1
select persona.Nome, città.Regione
from persona join città on persona.CittàNascita = città.Nome
where persona.Età >= 18
--2
select g.Nome as genitore, f.Nome as figlio
from persona g join genia on g.Nome = genia.Genitore join persona f on f.Nome = genia.Figlio
where g.CittàNascita = f.CittàNascita
--3
select distinct p.CittàNascita
from persona p join genia on p.Nome = genia.Genitore
where p.Età >= 50
--4
/*
select distinct n.Nome
from persona n join genia a on n.Nome = a.Genitore join genia b on a.Figlio = b.Genitore
*/
select distinct a.Genitore
from genia a join genia b on a.Figlio = b.Genitore
--5
select count(*)
from persona join città on persona.CittàNascita = città.Nome
where persona.Sesso = 'M' and città.Regione = 'Lazio'