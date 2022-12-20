Drop Trigger if exists trigger1;
delete from EstatisticasJogador where idJogador=87;
update Jogador set nGolos=nGolos-10 where idJogador=87;
select idJogador,nomeJogador,nGolos from Jogador where idJogador=87;