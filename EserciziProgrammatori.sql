--1
select p.codice
from  programmatore p join autore a on p.codice = a.codice 
    join programma on a.id = programma.id
where programma.anno > 2000 and programma.linguaggio = "Java"
--2
select p.nome, p.categoria
from  programmatore p join autore a on p.codice = a.codice 
    join programma on a.id = programma.id
where programma.linguaggio != "Python"
order by p.nome
--3
select p.codice, min(programma.anno)
from  programmatore p join autore a on p.codice = a.codice join programma 
    on a.id = programma.id
where programma.linguaggio != "Java" and p.categoria = 10
group by p.codice
--4
select a1.codice as p1, a2.codice as p2
from autore a1 join programma on a1.id = programma.id 
    join autore a2 on a2.id = programma.id
where programma.linguaggio = "Python" and a1.codice != a2.codice and a2.codice < a1.codice
--5
select p.codice, p.nome
from programmatore p join autore on p.codice = autore.codice
where autore.codice not in (
    select autore.codice
    from autore
    where autore.id in(
        select programma.id
        from programma
        where programma.linguaggio != "Java"
    )
)
--6
select p.codice, programma.anno, count(programma.id)
from programmatore p join autore on p.codice = autore.codice
    join programma on autore.id = programma.id
group by p.codice, programma.anno
--7
select programma.linguaggio, count(autore.codice)/count(distinct programma.id)
from programma join autore on programma.id = autore.id
group by programma.linguaggio
