.mode columns
.headers ON
PRAGMA foreign_keys=ON;

DROP TABLE IF EXISTS Jogo;
DROP TABLE IF EXISTS EstatisticasJogador;
DROP TABLE IF EXISTS EstatisticasEquipa;
DROP TABLE IF EXISTS EstatisticasDeJogo;
DROP TABLE IF EXISTS Estado;
DROP TABLE IF EXISTS Grupo;
DROP TABLE IF EXISTS Equipa;
DROP TABLE IF EXISTS Jogador;

CREATE TABLE Jogador(
    nomeJogador VARCHAR(255) NOT NULL PRIMARY KEY,
    nGolos TINYINT NOT NULL,
    nacionalidade VARCHAR(255) NOT NULL,
    numero TINYINT NOT NULL,
    jogosJogados TINYINT NOT NULL,
    tempoJogado TINYINT NOT NULL,
    posicao VARCHAR(255) NOT NULL
);


CREATE TABLE Equipa(
    nomeEquipa VARCHAR(255)  NOT NULL PRIMARY KEY,
    jogosJogados TINYINT NOT NULL,
    golosTotais TINYINT NOT NULL
);

CREATE TABLE Grupo(
    idGrupo TINYINT NOT NULL PRIMARY KEY
);

CREATE TABLE Estado(
    tipoEstado VARCHAR(255) NOT NULL PRIMARY KEY,
    CONSTRAINT check_tipoEstado CHECK (tipoEstado == 'fase-de-grupos' OR tipoEstado == 'oitavos-de-final' OR tipoEstado == 'quartos-de-final' OR tipoEstado == 'semi-final' OR tipoEstado == 'final')
);

CREATE TABLE EstatisticasDeJogo(
    tipoJogo VARCHAR(255) NOT NULL,
    resultado VARCHAR(255) NOT NULL,
    nFaltas VARCHAR(255) NOT NULL,
    posseDeBola VARCHAR(255) NOT NULL,
    cantos VARCHAR(255) NOT NULL,
    remates VARCHAR(255) NOT NULL,
    passesCompletos VARCHAR(255) NOT NULL,
    rematesABaliza VARCHAR(255) NOT NULL
);

CREATE TABLE EstatisticasEquipa(
    nPontos TINYINT NOT NULL,
    classificacao TINYINT NOT NULL,
    golosMarcados TINYINT NOT NULL,
    golosSofridos TINYINT NOT NULL,
    vitorias TINYINT NOT NULL,
    derrotas TINYINT NOT NULL,
    empates TINYINT NOT NULL
);

CREATE TABLE EstatisticasJogador(
    golosMarcados TINYINT NOT NULL,
    assistencias TINYINT NOT NULL,
    passesRealizados INT NOT NULL,
    cortesRealizados INT NOT NULL,
    cartoesAmarelos TINYINT NOT NULL,
    cartoesVermelhos TINYINT NOT NULL,
    faltasCometidas TINYINT NOT NULL,
    golosDefendidos INT NOT NULL
);

CREATE TABLE Jogo(
    idJogo VARCHAR(255) NOT NULL PRIMARY KEY,
    eliminatoria VARCHAR(255) NOT NULL REFERENCES Estado(tipoEstado),
    nGolosVisitante TINYINT NOT NULL,
    nGolosVisitada TINYINT NOT NULL,
    dataJogo VARCHAR(255) NOT NULL
);

.read povoar.sql

SELECT * FROM Jogador;
SELECT * FROM Equipa;
SELECT * FROM Grupo;
SELECT * FROM Estado;
SELECT * FROM EstatisticasDeJogo;
SELECT * FROM EstatisticasEquipa;
SELECT * FROM EstatisticasJogador;
SELECT * FROM Jogo;