Drop Trigger if exists updateGroupPoints;
delete from Jogo where idJogo = 41;
update Equipa set nPontos = nPontos - 3 where idEquipa = 5