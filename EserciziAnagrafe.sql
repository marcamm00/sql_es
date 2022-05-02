select persona.Nome, città.Regione
from persona join città on persona.CittàNascita = città.Nome
where persona.Età >= 18

select g.Nome as genitore, f.Nome as figlio
from persona g join genia on g.Nome = genia.Genitore join persona f on f.Nome = genia.Figlio
where g.CittàNascita = f.CittàNascita