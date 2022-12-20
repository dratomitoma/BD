.mode columns
.headers on
.nullvalue NULL

--Seleciona todas as equipas que jogaram numa pré-eliminatória
select unique Equipa.idEquipa, Equipa.nomeEquipa, Equipa.tipoEstado
from Equipa
where Equipa.tipoEstado =  'Pre-eliminatorias'