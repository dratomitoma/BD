Drop Trigger if exists trigger1;
delete from EstatisticasJogador where idJogador=87;
update Jogador set nGolos=nGolos-10,tempoJogado=tempoJogado-15 where idJogador=87;
select idJogador,nomeJogador,nGolos,tempoJogado from Jogador where idJogador=87;