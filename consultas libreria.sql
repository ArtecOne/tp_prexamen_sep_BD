use biblioteca;
set global FOREIGN_KEY_CHECKS = 0;

select concat(autor.nombre , ' ' ,  autor.apellido ) as 'autor' , editorial.nombre as 'editorial' ,  librofis.titulo , librofis.genero , librofis.veces_tomado
from autor
inner join editorial
on autor.id = editorial.id_au
inner join au_fis
on autor.id = au_fis.id_au
inner JOIN librofis
on librofis.id = au_fis.id_fis
ORDER BY librofis.veces_tomado desc
limit 3;

 ###desactivar el safe update###

UPDATE sala
SET seccion = 'Academico y ensayos'
WHERE seccion = 'Academico'
;

select *
from sala;

delete lf.*
from librodig lf
inner join au_dig
on lf.id = au_dig.id_dig
inner join autor aut
on aut.id = au_dig.id_au
where aut.nombre = 'homero';

SELECT *
from librodig;
;