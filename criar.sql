.mode columns
.headers ON
PRAGMA foreign_keys=ON;

DROP TABLE IF EXISTS JOGO;
DROP TABLE IF EXISTS ESTADO;
DROP TABLE IF EXISTS GRUPO;
DROP TABLE IF EXISTS EQUIPA;
DROP TABLE IF EXISTS JOGADOR;

CREATE TABLE JOGADOR(
    nomeJogador VARCHAR(255) NOT NULL PRIMARY KEY,
    nGolos TINYINT NOT NULL,
    nacionalidade VARCHAR(255) NOT NULL,
    numero TINYINT NOT NULL,
    jogosJogados TINYINT NOT NULL,
    tempoJogado TINYINT NOT NULL
);

CREATE TABLE EQUIPA(
    nomeEquipa VARCHAR(255) PRIMARY KEY NOT NULL,
    jogosJogados TINYINT NOT NULL,
    golosTotais TINYINT NOT NULL,
    nPontos TINYINT NOT NULL,
    classificacao TINYINT NOT NULL,
    golosMarcados TINYINT NOT NULL,
    golosSofridos TINYINT NOT NULL,
    vitorias TINYINT NOT NULL,
    derrotas TINYINT NOT NULL,
    empates TINYINT NOT NULL
);

CREATE TABLE GRUPO(
    idGrupo TINYINT NOT NULL PRIMARY KEY
);

CREATE TABLE ESTADO(
    tipoEstado VARCHAR(255) NOT NULL PRIMARY KEY,
    CONSTRAINT check_tipoEstado CHECK (tipoEstado == 'grupos' OR tipoEstado == 'oitavos' OR tipoEstado == 'quartos' OR tipoEstado == 'semis' OR tipoEstado == 'final')
);

CREATE TABLE JOGO(
    idJogo VARCHAR(255) NOT NULL PRIMARY KEY,
    resultado VARCHAR(255) NOT NULL,
    nFaltas TINYINT NOT NULL,
    posseDeBola TINYINT NOT NULL,
    cartoesAmarelos TINYINT NOT NULL,
    cartoesVermelhos TINYINT NOT NULL,
    cantos TINYINT NOT NULL,
    remates TINYINT NOT NULL,
    rematesABaliza TINYINT NOT NULL,
    passesCompletos TINYINT NOT NULL,
    marcadores VARCHAR(255) NOT NULL REFERENCES JOGADOR(nomeJogador),
    eliminatoria VARCHAR(255) NOT NULL REFERENCES ESTADO(tipoEstado)
);


SELECT * FROM JOGADOR;
SELECT * FROM EQUIPA;
SELECT * FROM GRUPO;
SELECT * FROM ESTADO;
SELECT * FROM JOGO;