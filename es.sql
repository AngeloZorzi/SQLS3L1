-- estrarre tutti i "Mario"

select * 
from clienti 
where nome = 'Mario';

-- nome, cognome dei clienti nati nel 1982

select nome, cognome
from clienti 
where anno_di_nascita = 1982;

-- estrarre numero fatture con iva al 20%

select count(*) as numero_fatture
from fatture
where iva = 20;

-- estrarre prodotti con data attivazione = 2017 e in prod. o comm.

select *
from prodotti
where (in_commercio = true or in_produzione = true) and extract (year from data_attivazione)=2017;