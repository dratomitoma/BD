.mode columns
.headers on
.nullvalue NULL

--Seleciona os primeiros classificados de cada grupo
select Equipa.idGrupo, Equipa.nomeEquipa
from Equipa
where Equipa.classificacao = '1'
order by 1 asc