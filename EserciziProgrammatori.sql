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
select distinct p.codice, programma.anno
from  programmatore p join autore a on p.codice = a.codice join programma 
    on a.id = programma.id
where programma.linguaggio != "Java" and p.categoria = 10
--4
select a1.codice as p1, a2.codice as p2
from autore a1 join programma on a1.id = programma.id 
    join autore a2 on a2.id = programma.id
where programma.linguaggio = "Python" and a1.codice != a2.codice and a2.codice < a1.codice
--5

--6
select p.codice, programma.anno, count(programma.id)
from programmatore p join autore on p.codice = autore.codice
    join programma on autore.id = programma.id
group by p.codice, programma.anno
--7
