.mode columns
.headers ON
PRAGMA foreign_keys=ON;

DROP TABLE IF EXISTS JOGO;
DROP TABLE IF EXISTS ESTADO;
DROP TABLE IF EXISTS GRUPO;
DROP TABLE IF EXISTS EQUIPA;
DROP TABLE IF EXISTS JOGADOR;

CREATE TABLE Jogador(
    nomeJogador VARCHAR(255) NOT NULL PRIMARY KEY,
    nGolos INT NOT NULL,
    nacionalidade VARCHAR(255),
    numero INT,
    jogosJogados INT,
    tempoJogado INT
);

CREATE TABLE Equipa(
    nomeEquipa VARCHAR(255) PRIMARY KEY,
    jogosJogados INT,
    golosTotais INT,
    nPontos INT,
    classificacao INT,
    golosMarcados INT,
    golosSofridos INT,
    vitorias INT,
    derrotas INT,
    empates INT 
);

CREATE TABLE Grupo(
    idGrupo INT PRIMARY KEY
);

CREATE TABLE Estado(
    tipoEstado VARCHAR(255) PRIMARY KEY
    CONSTRAINT check_tipoEstado CHECK (tipoEstado == 'grupos' OR tipoEstado == 'oitavos' OR tipoEstado == 'quartos' OR tipoEstado == 'semis' OR tipoEstado == 'final')
);

CREATE TABLE Jogo(
    idJogo VARCHAR(255) PRIMARY KEY,
    resultado VARCHAR(255),
    nFaltas INT,
    posseDeBola INT,
    cartoesAmarelos INT,
    cartoesVermelhos INT,
    cantos INT,
    remates INT,
    rematesABaliza INT,
    passesCompletos INT,
    marcadores VARCHAR(255) REFERENCES JOGADOR,
    eliminatoria VARCHAR(255) REFERENCES ESTADO
);

.read povoar.sql

SELECT * FROM Jogador;
SELECT * FROM Equipa;
SELECT * FROM Grupo;
SELECT * FROM Estado;
SELECT * FROM Jogo;