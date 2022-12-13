USE master;
GO
IF DB_ID(N'Sonic')IS NOT NULL
DROP DATABASE Sonic;
GO
CREATE DATABASE Sonic
ON
(NAME = Sonic_dat,
FILENAME= 'C:\SonicTheHedgehog\Sonic.mdf',
SIZE = 10,
MAXSIZE = 50,
FILEGROWTH = 5)
LOG ON 
(NAME =Sonic_log,
FILENAME = 'C:\SonicTheHedgehog\Sonic.ldf',
SIZE = 5MB,
MAXSIZE = 25MB,
FILEGROWTH = 5MB);
GO
USE Sonic;
GO
CREATE TABLE Acto
(
idActo INT IDENTITY (1,1),
nombre VARCHAR(40)NOT NULL,
nivel INT NOT NULL,
descripcion VARCHAR(30) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idZona int not null,
);
GO
CREATE TABLE Aliado
(
idAliado INT IDENTITY (1,1),
nombre VARCHAR(40)NOT NULL,
especie VARCHAR(20)NOT NULL,
descripcion VARCHAR(30)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idPersonaje int not null,
);
GO
CREATE TABLE Amigo
(
idAmigo INT IDENTITY (1,1),
nombre VARCHAR(20)NOT NULL,
descripcion VARCHAR(10) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idJugador int not null
);
GO
CREATE TABLE Animal
(idAnimal INT IDENTITY (1,1),
nombre VARCHAR(40)NOT NULL,
especie VARCHAR(20)NOT NULL,
descripcion VARCHAR(30) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idZona int not null,
);
GO
CREATE TABLE Avatar
(
idAvatar INT identity (1,1),
idJugador int not null,
nombre VARCHAR(40)NOT NULL,
especie VARCHAR(20)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
GO
CREATE TABLE BandaSonora
(
idBandaSonora INT IDENTITY (1,1),
nombre VARCHAR(40)NOT NULL,
tipo VARCHAR(10)NOT NULL,
descripcion VARCHAR(10) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
GO
CREATE TABLE BandaSonoraZona
(
idBandaSonoraZona INT IDENTITY (1,1),
idBandaSonora INT NOT NULL,
idZona INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
GO
CREATE TABLE Bucle
(
idBucle INT IDENTITY (1,1),
nombre VARCHAR(20)NOT NULL,
tamaño VARCHAR(30)NOT NULL,
tipo VARCHAR(20)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idZona int not null,
);
GO
CREATE TABLE CajaDeObjeto
(
idCajaDeObjeto INT IDENTITY (1,1),
nombre VARCHAR(20)NOT NULL,
tipo VARCHAR(20)NOT NULL,
descripcion VARCHAR(30)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idZona int not null,
);
GO
CREATE TABLE Colaboracion
(
idColaboracion INT IDENTITY (1,1),
nombre VARCHAR(50)NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idPersonaje int not null,
);
GO
CREATE TABLE Comic
(
idComic INT IDENTITY (1,1),
nombre VARCHAR(30)NOT NULL,
editorial VARCHAR(40)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idSaga int not null,
);
GO
CREATE TABLE Competencia
(
idCompetencia INT IDENTITY (1,1),
nombre VARCHAR(50)NOT NULL,
actividad VARCHAR(20)NOT NULL,
reto VARCHAR(10)NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idJugador int not null,
);
GO
CREATE TABLE Configuracion
(
idConfiguracion INT IDENTITY (1,1),
controles VARCHAR(10)NOT NULL,
partes VARCHAR(10)NOT NULL,
propiedades VARCHAR(10)NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
GO
CREATE TABLE ConfiguracionJugador
(
idConfiguracionJugador INT IDENTITY (1,1),
idConfiguracion INT NOT NULL,
idJugador INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
GO
CREATE TABLE Contrareloj
(
idContrareloj INT IDENTITY (1,1),
limite VARCHAR(20) NOT NULL,
nombre VARCHAR(30)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
GO
CREATE TABLE Defensa
(
idDefensa INT IDENTITY (1,1),
nombre VARCHAR(30)NOT NULL,
fuerza VARCHAR(20)NOT NULL,
descripcion VARCHAR(40)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idPersonaje int not null,
);
GO
CREATE TABLE Dimension
(
idDimension INT IDENTITY (1,1),
nombre VARCHAR(50)NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idMundo int not null,
);
GO
CREATE TABLE DispositivoDeEntrada
(
idDispositivoDeEntrada INT IDENTITY (1,1),
nombre VARCHAR(20)NOT NULL,
modelo VARCHAR(10)NOT NULL,
descripcion VARCHAR(40)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idJugador int not null,
);
CREATE TABLE Enemigo
(
idEnemigo INT IDENTITY (1,1),
nombre VARCHAR(30)NOT NULL,
tipo VARCHAR(30)NOT NULL,
descripcion VARCHAR(30)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idZona int not null,
);
GO
CREATE TABLE Era
(
idEra INT IDENTITY (1,1),
nombre VARCHAR(10)NOT NULL,
tipo VARCHAR(10)NOT NULL,
descripcion VARCHAR(10) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,

);
GO
CREATE TABLE Escena
(
idEscena INT IDENTITY (1,1),
nombre VARCHAR(50)NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
GO
CREATE TABLE Escenario
(
idEscenario INT IDENTITY (1,1),
nombre VARCHAR(50)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idMundo int not null,
);
GO
CREATE TABLE EscenaZona
(
idEscenaZona INT IDENTITY (1,1),
idEscena INT NOT NULL,
idZona INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Escudo
(
idEscudo INT IDENTITY (1,1),
nombre VARCHAR(20)NOT NULL,
tipo VARCHAR(20)NOT NULL,
resistencia VARCHAR(20)NOT NULL,
descripcion VARCHAR(20) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idPersonaje int not null,
);
GO
CREATE TABLE Esmeralda
(
idEsmeralda INT IDENTITY (1,1),
nombre VARCHAR(30)NOT NULL,
color VARCHAR(20)NOT NULL,
tipo VARCHAR(20)NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
GO
CREATE TABLE EsmeraldaZona
(
idEsmeraldaZona INT IDENTITY (1,1),
idEsmeralda INT NOT NULL,
idZona INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
GO
CREATE TABLE EstiloVisual
(
idEstiloVisual INT IDENTITY (1,1),
nombre VARCHAR(10)NOT NULL,
detalles VARCHAR(30)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idMundo int not null,
);
GO
CREATE TABLE Extra
(
idExtra INT IDENTITY (1,1),
nombre VARCHAR(50)NOT NULL,
codigo VARCHAR(50)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idJugador int not null,
);
GO
CREATE TABLE Final
(
idFinal INT IDENTITY (1,1),
nombre VARCHAR(20)NOT NULL,
descripcion VARCHAR(30) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
GO
CREATE TABLE FinalZona
(
idFinalZona INT IDENTITY (1,1),
idFinal INT NOT NULL,
idZona INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);	
GO
CREATE TABLE GameCenter
(
idGameCenter INT IDENTITY (1,1),
nombre VARCHAR(50)NOT NULL,
logro VARCHAR(50)NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idJugador int not null,
);
GO
CREATE TABLE Gema
(
idGema INT IDENTITY (1,1),
nombre VARCHAR(30)NOT NULL,
color VARCHAR(20)NOT NULL,
tipo VARCHAR(20)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idZona int not null,
);
GO
CREATE TABLE GemaZona
(
idGemaZona INT IDENTITY (1,1),
idGema INT NOT NULL,
idZona INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Habilidad
(
idHabilidad INT IDENTITY (1,1),
nombre VARCHAR(50)NOT NULL,
tipo VARCHAR(50)NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idPersonaje int not null,
);
GO
CREATE TABLE Historia
(
idHistoria INT IDENTITY (1,1),
nombre VARCHAR(50)NOT NULL,
suceso VARCHAR(50)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
GO
CREATE TABLE Jefe
(
idJefe INT IDENTITY (1,1),
nombre VARCHAR(40)NOT NULL,
descripcion VARCHAR(30) NOT NULL,
especie VARCHAR(20)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idZona int not null,
);
GO
CREATE TABLE JefeZona
(
idJefeZona INT IDENTITY (1,1),
idJefe INT NOT NULL,
idZona INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);	
GO
CREATE TABLE Jugador
(
idJugador INT IDENTITY (1,1),
nombre VARCHAR(20)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
GO
CREATE TABLE Marcador
(
idMarcador INT IDENTITY (1,1),
nombre VARCHAR(50)NOT NULL,
clasificacion VARCHAR(50)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idJugador int not null
);
GO
CREATE TABLE Menu
(
idMenu INT IDENTITY (1,1),
nombre VARCHAR(30)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
ayudayopciones VARCHAR(50)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idJugador int not null,
);
GO
CREATE TABLE Mercancia
(
idMercancia INT IDENTITY (1,1),
nombre VARCHAR(40)NOT NULL,
tipo VARCHAR(50) NOT NULL,
descripcion VARCHAR(20)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
GO
CREATE TABLE MercanciaPersonaje
(
idMercanciaPersonaje INT IDENTITY (1,1),
idMercancia INT NOT NULL,
idPersonaje INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Minijuego
(
idMinijuego INT IDENTITY (1,1),
nombre VARCHAR(20)NOT NULL,
arcade VARCHAR(40) NOT NULL,
descripcion VARCHAR(30)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idJugador int not null,
idContrareloj int not null,
);
GO
CREATE TABLE ModoDeJuego
(
idModoDeJuego INT IDENTITY (1,1),
nombre VARCHAR(10)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
individual VARCHAR(10)NOT NULL,
multijugador VARCHAR(10)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idJugador int not null,
);
GO
CREATE TABLE ModoDeJuegoJugador
(
idModoDeJuegoJugador INT IDENTITY (1,1),
idModoDeJuego INT NOT NULL,
idJugador INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);	
GO
CREATE TABLE Mundo
(
idMundo INT IDENTITY (1,1),
nombre VARCHAR(20)NOT NULL,
epoca VARCHAR(20)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idJugador int not null,
idMenu int not null,
);
GO
CREATE TABLE Musica
(
idMusica INT IDENTITY (1,1),
nombre VARCHAR(30)NOT NULL,
genero VARCHAR(10) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idJugador int not null,
);
GO
CREATE TABLE Personaje
(
idPersonaje INT IDENTITY (1,1),
nombre VARCHAR(40)NOT NULL,
especie VARCHAR(30) NOT NULL,
arco VARCHAR(20)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idJugador int not null,
idHistoria int not null,
);
GO
CREATE TABLE Plataforma
(
idPlataforma INT IDENTITY (1,1),
nombre VARCHAR(40)NOT NULL,
tipo VARCHAR(30)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idMundo int not null,
);
GO
CREATE TABLE Poder
(
idPoder INT IDENTITY (1,1),
nombre VARCHAR(20)NOT NULL,
tipo VARCHAR(30)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idPersonaje int not null,
);
GO
CREATE TABLE Portal
(
idPortal INT IDENTITY (1,1),
nombre VARCHAR(30)NOT NULL,
tipo VARCHAR(20) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idMundo int not null,
);
GO
CREATE TABLE PortalMundo
(
idPortalMundo INT IDENTITY (1,1),
idPortal INT NOT NULL,
idMundo INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE PuntoDeControl
(
idPuntoDeControl INT IDENTITY (1,1),
nombre VARCHAR(50)NOT NULL,
guardado VARCHAR(50) NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idZona int not null,
);
GO
CREATE TABLE PuntoDeControlZona
(
idPuntoDeControlZona INT IDENTITY (1,1),
idPuntoDeControl INT NOT NULL,
idZona INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);	
GO
CREATE TABLE Ring
(
idRing INT IDENTITY (1,1),
nombre VARCHAR(20)NOT NULL,
color VARCHAR(20)NOT NULL,
tipo VARCHAR(20)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
GO
CREATE TABLE RingZona
(
idRingZona INT IDENTITY (1,1),
idRing INT NOT NULL,
idZona INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Ruta
(
idRuta INT IDENTITY (1,1),
tipo VARCHAR(50)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idZona int not null,
);
GO
CREATE TABLE RutaZona
(
idRutaZona INT IDENTITY (1,1),
idRuta INT NOT NULL,
idZona INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);		
GO
CREATE TABLE Saga
(
idSaga INT IDENTITY (1,1),
nombre VARCHAR(50)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idJugador int not null,
);
GO
CREATE TABLE SagaJugador
(
idSagaJugador INT IDENTITY (1,1),
idSaga INT NOT NULL,
idJugador INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Serie
(
idSerie INT IDENTITY (1,1),
nombre VARCHAR(30)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idSaga int not null,
);
GO
CREATE TABLE SerieSaga
(
idSerieSaga INT IDENTITY (1,1),
idSerie INT NOT NULL,
idSaga INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);		
GO
CREATE TABLE Team
(
idTeam INT IDENTITY (1,1),
nombre VARCHAR(30)NOT NULL,
descripcion VARCHAR(40)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idPersonaje int not null,
);
GO
CREATE TABLE TeamPersonaje
(
idTeamPersonaje INT IDENTITY (1,1),
idTeam INT NOT NULL,
idPersonaje INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Tiempo
(
idTiempo INT IDENTITY (1,1),
cantidad INT NOT NULL,
descripcion VARCHAR(20)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idZona int not null,
);
GO
CREATE TABLE Trampa
(
idTrampa INT IDENTITY (1,1),
nombre VARCHAR(30)NOT NULL,
tipo VARCHAR(30)NOT NULL,
descripcion VARCHAR(30) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idZona int not null,
);
GO
CREATE TABLE Vida
(
idVida INT IDENTITY (1,1),
nombre VARCHAR(20)NOT NULL,
cantidad INT NOT NULL,
descripcion VARCHAR(20)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
GO
CREATE TABLE VidaPersonaje
(
idVidaPersonaje INT IDENTITY (1,1),
idVida INT NOT NULL,
idPersonaje INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);		
GO
CREATE TABLE Zona
(
idZona INT IDENTITY (1,1),
nombre VARCHAR(50)NOT NULL,
tipo VARCHAR(20)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
nivel INT NOT NULL,
descripcion VARCHAR(50)NOT NULL,
idMundo int not null,
idFinal int not null,
idRing int not null,
idEra int not null,
idEscena int not null,
idBandaSonora int not null,
idEsmeralda int not null,
);
GO
CREATE TABLE ZonaEspecial
(
idZonaEspecial INT IDENTITY (1,1),
nombre VARCHAR(30)NOT NULL,
tipo VARCHAR(20)NOT NULL,
nivel INT NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
idMundo int not null,
);
GO
CREATE TABLE ZonaEspecialMundo
(
idZonaEspecialMundo INT IDENTITY (1,1),
idZonaEspecial INT NOT NULL,
idMundo INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);	
CREATE TABLE ZonaMundo
(
idZonaMundo INT IDENTITY (1,1),
idZona INT NOT NULL,
idMundo INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO

------------------PRIMARY KEY---------------
ALTER TABLE Avatar ADD CONSTRAINT PK_Avatar PRIMARY KEY (idAvatar)
ALTER TABLE Animal ADD CONSTRAINT PK_Animal PRIMARY KEY (idAnimal)
ALTER TABLE Amigo ADD CONSTRAINT PK_Amigo PRIMARY KEY (idAmigo)
ALTER TABLE Aliado ADD CONSTRAINT PK_Aliado PRIMARY KEY (idAliado)
ALTER TABLE Acto ADD CONSTRAINT PK_Acto PRIMARY KEY (idActo)
ALTER TABLE Bucle ADD CONSTRAINT PK_Bucle PRIMARY KEY (idBucle)
ALTER TABLE BandaSonora ADD CONSTRAINT PK_BandaSonora PRIMARY KEY (idBandaSonora)
ALTER TABLE Contrareloj ADD CONSTRAINT PK_Contrareloj PRIMARY KEY (idContrareloj)
ALTER TABLE Configuracion ADD CONSTRAINT PK_Configuracion PRIMARY KEY (idConfiguracion)
ALTER TABLE Comic ADD CONSTRAINT PK_Comic PRIMARY KEY (idComic)
ALTER TABLE Competencia ADD CONSTRAINT PK_Competencia PRIMARY KEY (idCompetencia)
ALTER TABLE CajaDeObjeto ADD CONSTRAINT PK_CajaDeObjeto PRIMARY KEY (idCajaDeObjeto)
ALTER TABLE Colaboracion ADD CONSTRAINT PK_Colaboracion PRIMARY KEY (idColaboracion)
ALTER TABLE Defensa ADD CONSTRAINT PK_Defensa PRIMARY KEY (idDefensa)
ALTER TABLE Dimension ADD CONSTRAINT PK_Dimension PRIMARY KEY (idDimension)
ALTER TABLE DispositivoDeEntrada ADD CONSTRAINT PK_DispositivoDeEntrada PRIMARY KEY (idDispositivoDeEntrada)
ALTER TABLE Esmeralda ADD CONSTRAINT PK_Esmeralda PRIMARY KEY (idEsmeralda)
ALTER TABLE Enemigo ADD CONSTRAINT PK_Enemigo PRIMARY KEY (idEnemigo)
ALTER TABLE Escudo ADD CONSTRAINT PK_Escudo PRIMARY KEY (idEscudo)
ALTER TABLE EstiloVisual ADD CONSTRAINT PK_EstiloVisual PRIMARY KEY (idEstiloVisual)
ALTER TABLE Escena ADD CONSTRAINT PK_Escena PRIMARY KEY (idEscena)
ALTER TABLE Escenario ADD CONSTRAINT PK_Escenario PRIMARY KEY (idEscenario)
ALTER TABLE Era ADD CONSTRAINT PK_Era PRIMARY KEY (idEra)
ALTER TABLE Extra ADD CONSTRAINT PK_Extra PRIMARY KEY (idExtra)
ALTER TABLE Final ADD CONSTRAINT PK_Final PRIMARY KEY (idFinal)
ALTER TABLE Gema ADD CONSTRAINT PK_Gema PRIMARY KEY (idGema)
ALTER TABLE GameCenter ADD CONSTRAINT PK_GameCenter PRIMARY KEY (idGameCenter)
ALTER TABLE Historia ADD CONSTRAINT PK_Historia PRIMARY KEY (idHistoria)
ALTER TABLE Habilidad ADD CONSTRAINT PK_Habilidad PRIMARY KEY (idHabilidad)
ALTER TABLE Jugador ADD CONSTRAINT PK_Jugador PRIMARY KEY (idJugador)
ALTER TABLE Jefe ADD CONSTRAINT PK_Jefe PRIMARY KEY (idJefe)
ALTER TABLE Mundo ADD CONSTRAINT PK_Mundo PRIMARY KEY (idMundo)
ALTER TABLE Musica ADD CONSTRAINT PK_Musica PRIMARY KEY (idMusica)
ALTER TABLE Menu ADD CONSTRAINT PK_Menu PRIMARY KEY (idMenu)
ALTER TABLE MiniJuego ADD CONSTRAINT PK_MiniJuego PRIMARY KEY (idMiniJuego)
ALTER TABLE Marcador ADD CONSTRAINT PK_Marcador PRIMARY KEY (idMarcador)
ALTER TABLE Mercancia ADD CONSTRAINT PK_Mercancia PRIMARY KEY (idMercancia)
ALTER TABLE ModoDeJuego ADD CONSTRAINT PK_ModoDeJuego PRIMARY KEY (idModoDeJuego)
ALTER TABLE Personaje ADD CONSTRAINT PK_Personaje PRIMARY KEY (idPersonaje)
ALTER TABLE Poder ADD CONSTRAINT PK_Poder PRIMARY KEY (idPoder)
ALTER TABLE Portal ADD CONSTRAINT PK_Portal PRIMARY KEY (idPortal)
ALTER TABLE Plataforma ADD CONSTRAINT PK_Plataforma PRIMARY KEY (idPlataforma)
ALTER TABLE PuntoDeControl ADD CONSTRAINT PK_PuntoDeControl PRIMARY KEY (idPuntoDeControl)
ALTER TABLE Ring ADD CONSTRAINT PK_Ring PRIMARY KEY (idRing)
ALTER TABLE Ruta ADD CONSTRAINT PK_Ruta PRIMARY KEY (idRuta)
ALTER TABLE Saga ADD CONSTRAINT PK_Saga PRIMARY KEY (idSaga)
ALTER TABLE Serie ADD CONSTRAINT PK_Serie PRIMARY KEY (idSerie)
ALTER TABLE Team ADD CONSTRAINT PK_Team PRIMARY KEY (idTeam)
ALTER TABLE Trampa ADD CONSTRAINT PK_Trampa PRIMARY KEY (idTrampa)
ALTER TABLE Tiempo ADD CONSTRAINT PK_Tiempo PRIMARY KEY (idTiempo)
ALTER TABLE Vida ADD CONSTRAINT PK_Vida PRIMARY KEY (idVida)
ALTER TABLE Zona ADD CONSTRAINT PK_Zona PRIMARY KEY (idZona)
ALTER TABLE ZonaEspecial ADD CONSTRAINT PK_ZonaEspecial PRIMARY KEY (idZonaEspecial)
ALTER TABLE BandaSonoraZona ADD CONSTRAINT PK_BandaSonoraZona PRIMARY KEY (idBandaSonoraZona)
ALTER TABLE ConfiguracionJugador ADD CONSTRAINT PK_ConfiguracionJugador PRIMARY KEY (idConfiguracionJugador)
ALTER TABLE EsmeraldaZona ADD CONSTRAINT PK_EsmeraldaZona PRIMARY KEY (idEsmeraldaZona)
ALTER TABLE EscenaZona ADD CONSTRAINT PK_EscenaZona PRIMARY KEY (idEscenaZona)
ALTER TABLE FinalZona ADD CONSTRAINT PK_FinalZona PRIMARY KEY (idFinalZona)
ALTER TABLE GemaZona ADD CONSTRAINT PK_GemaZona PRIMARY KEY (idGemaZona)
ALTER TABLE JefeZona ADD CONSTRAINT PK_JefeZona PRIMARY KEY (idJefeZona)
ALTER TABLE MercanciaPersonaje ADD CONSTRAINT PK_MercanciaPersonaje PRIMARY KEY (idMercanciaPersonaje)
ALTER TABLE ModoDeJuegoJugador ADD CONSTRAINT PK_ModoDeJuegoJugador PRIMARY KEY (idModoDeJuegoJugador)
ALTER TABLE PortalMundo ADD CONSTRAINT PK_PortalMundo PRIMARY KEY (idPortalMundo)
ALTER TABLE PuntoDeControlZona ADD CONSTRAINT PK_PuntoDeControlZona PRIMARY KEY (idPuntoDeControlZona)
ALTER TABLE RingZona ADD CONSTRAINT PK_RingZona PRIMARY KEY (idRingZona)
ALTER TABLE RutaZona ADD CONSTRAINT PK_RutaZona PRIMARY KEY (idRutaZona)
ALTER TABLE SagaJugador ADD CONSTRAINT PK_SagaJugador PRIMARY KEY (idSagaJugador)
ALTER TABLE SerieSaga ADD CONSTRAINT PK_SerieSaga PRIMARY KEY (idSerieSaga)
ALTER TABLE TeamPersonaje ADD CONSTRAINT PK_TeamPersonaje PRIMARY KEY (idTeamPersonaje)
ALTER TABLE VidaPersonaje ADD CONSTRAINT PK_VidaPersonaje PRIMARY KEY (idVidaPersonaje)
ALTER TABLE ZonaMundo ADD CONSTRAINT PK_ZonaMundo PRIMARY KEY (idZonaMundo)
ALTER TABLE ZonaEspecialMundo ADD CONSTRAINT PK_ZonaEspecialMundo PRIMARY KEY (idZonaEspecialMundo)

-----------------------------------------FOREIGN KEY----------------------------------------
ALTER TABLE Avatar ADD CONSTRAINT fk_AvatarJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)
ALTER TABLE Animal ADD CONSTRAINT fk_AnimalZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE Amigo ADD CONSTRAINT fk_AmigoJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)
ALTER TABLE Aliado ADD CONSTRAINT fk_AliadoPersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje)
ALTER TABLE Acto ADD CONSTRAINT fk_ActoZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE Bucle ADD CONSTRAINT fk_BucleZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE Comic ADD CONSTRAINT fk_ComicSaga FOREIGN KEY (idSaga) REFERENCES Saga (idSaga)
ALTER TABLE Competencia ADD CONSTRAINT fk_CompetenciaJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)
ALTER TABLE CajaDeObjeto ADD CONSTRAINT fk_CajaDeObjetoZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE Colaboracion ADD CONSTRAINT fk_ColaboracionPersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje)
ALTER TABLE Defensa ADD CONSTRAINT fk_DefensaPersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje)
ALTER TABLE Dimension ADD CONSTRAINT fk_DimensionMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo)
ALTER TABLE DispositivoDeEntrada ADD CONSTRAINT fk_DispositivoDeEntradaJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)
ALTER TABLE Enemigo ADD CONSTRAINT fk_EnemigoZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE Escudo ADD CONSTRAINT fk_EscudoPersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje)
ALTER TABLE EstiloVisual ADD CONSTRAINT fk_EstiloVisualMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo)
ALTER TABLE Escenario ADD CONSTRAINT fk_EscenarioMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo)
ALTER TABLE Extra  ADD CONSTRAINT fk_ExtraJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)
ALTER TABLE GameCenter ADD CONSTRAINT fk_GameCenterJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)
ALTER TABLE Gema ADD CONSTRAINT fk_GemaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE Habilidad ADD CONSTRAINT fk_HabilidadPersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje)
ALTER TABLE Jefe ADD CONSTRAINT fk_JefeZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE ModoDeJuego ADD CONSTRAINT fk_ModoDeJuegoJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)
ALTER TABLE Mundo ADD CONSTRAINT fk_MundoJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)
ALTER TABLE Musica ADD CONSTRAINT fk_MusicaJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)
ALTER TABLE Menu ADD CONSTRAINT fk_MenuJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)
ALTER TABLE MiniJuego ADD CONSTRAINT fk_MiniJuegoJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)
ALTER TABLE MiniJuego ADD CONSTRAINT fk_MiniJuegoContrareloj FOREIGN KEY (idContrareloj) REFERENCES Contrareloj (idContrareloj)
ALTER TABLE Marcador ADD CONSTRAINT Fk_MarcadorJugador FOREIGN KEY (idjugador) REFERENCES Jugador(idJugador)
ALTER TABLE Personaje ADD CONSTRAINT fk_PersonajeJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)
ALTER TABLE Personaje ADD CONSTRAINT fk_PersonajeHistoria FOREIGN KEY (idHistoria) REFERENCES Historia (idHistoria)
ALTER TABLE Poder ADD CONSTRAINT fk_PoderPersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje)
ALTER TABLE Portal ADD CONSTRAINT fk_PortalMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo)
ALTER TABLE PuntoDeControl ADD CONSTRAINT fk_PuntoDeControlZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE Plataforma ADD CONSTRAINT fk_PlataformaMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo)
ALTER TABLE Ruta ADD CONSTRAINT fk_RutaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE Saga ADD CONSTRAINT fk_SagaJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)
ALTER TABLE Serie ADD CONSTRAINT fk_SerieSaga FOREIGN KEY (idSaga) REFERENCES Saga (idSaga)
ALTER TABLE Tiempo ADD CONSTRAINT fk_TiempoZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE Team ADD CONSTRAINT fk_TeamPersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje)
ALTER TABLE Trampa ADD CONSTRAINT fk_TrampaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE Zona ADD CONSTRAINT fk_ZonaMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo)
ALTER TABLE Zona ADD CONSTRAINT fk_ZonaRing FOREIGN KEY (idRing) REFERENCES Ring (idRing)
ALTER TABLE Zona ADD CONSTRAINT fk_ZonaEra FOREIGN KEY (idEra) REFERENCES Era (idEra)
ALTER TABLE Zona ADD CONSTRAINT fk_ZonaEscena FOREIGN KEY (idEscena) REFERENCES Escena (idEscena)
ALTER TABLE zona  ADD CONSTRAINT fk_zonaBandaSonora FOREIGN KEY (idBandaSonora) REFERENCES BandaSonora (idBandaSonora)
ALTER TABLE Zona ADD CONSTRAINT fk_zonaEsmeralda FOREIGN KEY (idEsmeralda) REFERENCES Esmeralda (idEsmeralda)
ALTER TABLE Zona ADD CONSTRAINT fk_zonaFinal FOREIGN KEY (idFinal) REFERENCES Final (idFinal)
ALTER TABLE ZonaEspecial ADD CONSTRAINT fk_ZonaEspecialMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo)
ALTER TABLE BandaSonoraZona ADD CONSTRAINT fk_BandaSonoraZonaBandaSonora FOREIGN KEY (idBandaSonora) REFERENCES BandaSonora (idBandaSonora)
ALTER TABLE BandaSonoraZona ADD CONSTRAINT fk_BandaSonoraZonaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE ConfiguracionJugador ADD CONSTRAINT fk_ConfiguracionJugadorConfiguracion FOREIGN KEY (idConfiguracion) REFERENCES Configuracion (idConfiguracion)
ALTER TABLE ConfiguracionJugador ADD CONSTRAINT fk_ConfiguracionJugadorJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)
ALTER TABLE EsmeraldaZona ADD CONSTRAINT fk_EsmeraldaZonaEsmeralda FOREIGN KEY (idEsmeralda) REFERENCES Esmeralda (idEsmeralda)
ALTER TABLE EsmeraldaZona ADD CONSTRAINT fk_EsmeraldaZonaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE EscenaZona ADD CONSTRAINT fk_EscenaZonaEscena FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE FinalZona ADD CONSTRAINT fk_FinalZonaFinal FOREIGN KEY (idFinal) REFERENCES Final (idFinal)
ALTER TABLE FinalZona ADD CONSTRAINT fk_FinalZonaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE GemaZona ADD CONSTRAINT fk_GemaZonaGema FOREIGN KEY (idGema) REFERENCES Gema (idGema)
ALTER TABLE GemaZona ADD CONSTRAINT fk_GemaZonaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE JefeZona ADD CONSTRAINT fk_JefeZonaJefe FOREIGN KEY (idJefe) REFERENCES Jefe (idJefe)
ALTER TABLE JefeZona ADD CONSTRAINT fk_JefeZonaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE MercanciaPersonaje ADD CONSTRAINT fk_MercanciaPersonajeMercancia FOREIGN KEY (idMercancia) REFERENCES Mercancia (idMercancia)
ALTER TABLE MercanciaPersonaje ADD CONSTRAINT fk_MercanciaPersonajePersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje)
ALTER TABLE ModoDeJuegoJugador ADD CONSTRAINT fk_ModoDeJuegoJugadorModoDeJuego FOREIGN KEY (idModoDeJuego) REFERENCES ModoDeJuego (idModoDeJuego)
ALTER TABLE ModoDeJuegoJugador ADD CONSTRAINT fk_ModoDeJuegoJugadorMJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)
ALTER TABLE PortalMundo ADD CONSTRAINT fk_PortalMundoPortal FOREIGN KEY (idPortal) REFERENCES Portal (idPortal)
ALTER TABLE PortalMundo ADD CONSTRAINT fk_PortalMundoMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo)
ALTER TABLE PuntoDeControlZona ADD CONSTRAINT fk_PuntoDeControlZonaPuntoDeControl FOREIGN KEY (idPuntoDeControl) REFERENCES PuntoDeControl (idPuntoDeControl)
ALTER TABLE PuntoDeControlZona ADD CONSTRAINT fk_PuntoDeControlZonaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE RingZona ADD CONSTRAINT fk_RingZonaRing FOREIGN KEY (idRing) REFERENCES Ring (idRing)
ALTER TABLE RingZona ADD CONSTRAINT fk_RingZonaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE RutaZona ADD CONSTRAINT fk_RutaZonaRuta FOREIGN KEY (idRuta) REFERENCES Ruta (idRuta)
ALTER TABLE RutaZona ADD CONSTRAINT fk_RutaZonaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE SagaJugador ADD CONSTRAINT fk_SagaJugadorSaga FOREIGN KEY (idSaga) REFERENCES Saga (idSaga)
ALTER TABLE SagaJugador ADD CONSTRAINT fk_SagaJugadorJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador)
ALTER TABLE SerieSaga ADD CONSTRAINT fk_SerieSagaSerie FOREIGN KEY (idSerie) REFERENCES Serie (idSerie)
ALTER TABLE SerieSaga ADD CONSTRAINT fk_SerieSagaSaga FOREIGN KEY (idSaga) REFERENCES Saga (idSaga)
ALTER TABLE TeamPersonaje ADD CONSTRAINT fk_TeamPersonajeTeam FOREIGN KEY (idTeam) REFERENCES Team (idTeam)
ALTER TABLE TeamPersonaje ADD CONSTRAINT fk_TeamPersonajePersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje)
ALTER TABLE VidaPersonaje ADD CONSTRAINT fk_VidaPersonajeVida FOREIGN KEY (idVida) REFERENCES Vida (idVida)
ALTER TABLE VidaPersonaje ADD CONSTRAINT fk_VidaPersonajePersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje)
ALTER TABLE ZonaMundo ADD CONSTRAINT fk_ZonaMundoZona FOREIGN KEY (idZona) REFERENCES Zona (idZona)
ALTER TABLE ZonaMundo ADD CONSTRAINT fk_ZonaMundoMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo)
ALTER TABLE ZonaEspecialMundo ADD CONSTRAINT fk_ZonaEspecialMundoMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo)
ALTER TABLE ZonaEspecialMundo ADD CONSTRAINT fk_ZonaEspecialMundoZonaEspecial FOREIGN KEY (idZonaEspecial) REFERENCES ZonaEspecial (idZonaEspecial)

---------------------------------------INDEX--------------------------
CREATE INDEX IX_Avatar ON Avatar(idAvatar);
GO
CREATE INDEX IX_Animal ON Animal(idAnimal);
GO
CREATE INDEX IX_Amigo ON Amigo(idAmigo);
GO
CREATE INDEX IX_Aliado ON Aliado(idAliado);
GO
CREATE INDEX IX_Acto ON Acto(idActo);
GO
CREATE INDEX IX_Bucle ON Bucle(idBucle);
GO
CREATE INDEX IX_BandaSonora ON BandaSonora(idBandaSonora);
GO
CREATE INDEX IX_Contrareloj ON Contrareloj(idContrareloj);
GO
CREATE INDEX IX_Configuracion ON Configuracion(idConfiguracion);
GO
CREATE INDEX IX_Comic ON Comic(idComic);
GO
CREATE INDEX IX_Competencia ON Competencia(idCompetencia);
GO
CREATE INDEX IX_CajaDeObjeto ON CajaDeObjeto(idCajaDeObjeto);
GO
CREATE INDEX IX_Colaboracion ON Colaboracion(idColaboracion);
GO
CREATE INDEX IX_Defensa ON Defensa(idDefensa);
GO
CREATE INDEX IX_Dimension ON Dimension(idDimension);
GO
CREATE INDEX IX_DispositivoDeEntrada ON DispositivoDeEntrada(idDispositivoDeEntrada);
GO
CREATE INDEX IX_Esmeralda ON Esmeralda(idEsmeralda);
GO
CREATE INDEX IX_Enemigo ON Enemigo(idEnemigo);
GO
CREATE INDEX IX_Escudo ON Escudo(idEscudo);
GO
CREATE INDEX IX_EstiloVisual ON EstiloVisual(idEstiloVisual);
GO
CREATE INDEX IX_Escena ON Escena(idEscena);
GO
CREATE INDEX IX_Escenario ON Escenario(idEscenario);
GO
CREATE INDEX IX_Era ON Era(idEra);
GO
CREATE INDEX IX_Extra ON Extra(idExtra);
GO
CREATE INDEX IX_Final ON Final(idFinal);
GO
CREATE INDEX IX_Gema ON Gema(idGema);
GO
CREATE INDEX IX_GameCenter ON GameCenter(idGameCenter);
GO
CREATE INDEX IX_Historia ON Historia(idHistoria);
GO
CREATE INDEX IX_Habilidad ON Habilidad(idHabilidad);
GO
CREATE INDEX IX_Jugador ON Jugador(idJugador);
GO
CREATE INDEX IX_Jefe ON Jefe(idJefe);
GO
CREATE INDEX IX_Mundo ON Mundo(idMundo);
GO
CREATE INDEX IX_Musica ON Musica(idMusica);
GO
CREATE INDEX IX_Menu ON Menu(idMenu);
GO
CREATE INDEX IX_MiniJuego ON MiniJuego(idMiniJuego);
GO
CREATE INDEX IX_Marcador ON Marcador(idMarcador);
GO
CREATE INDEX IX_Mercancia ON Mercancia(idMercancia);
GO
CREATE INDEX IX_ModoDeJuego ON ModoDeJuego(idModoDeJuego);
GO
CREATE INDEX IX_Personaje ON Personaje(idPersonaje);
GO
CREATE INDEX IX_Poder ON Poder(idPoder);
GO
CREATE INDEX IX_Portal ON Portal(idPortal);
GO
CREATE INDEX IX_Plataforma ON Plataforma(idPlataforma);
GO
CREATE INDEX IX_PuntoDeControl ON PuntoDeControl(idPuntoDeControl);
GO
CREATE INDEX IX_Ring ON Ring(idRing);
GO
CREATE INDEX IX_Ruta ON Ruta(idRuta);
GO
CREATE INDEX IX_Saga ON Saga(idSaga);
GO
CREATE INDEX IX_Serie ON Serie(idSerie);
GO
CREATE INDEX IX_Team ON Team(idTeam);
GO
CREATE INDEX IX_Trampa ON Trampa(idTrampa);
GO
CREATE INDEX IX_Tiempo ON Tiempo(idTiempo);
GO
CREATE INDEX IX_Vida ON Vida(idVida);
GO
CREATE INDEX IX_Zona ON Zona(idZona);
GO
CREATE INDEX IX_ZonaEspecial ON ZonaEspecial(idZonaEspecial);
GO
CREATE INDEX IX_BandaSonoraZona ON BandaSonoraZona(idBandaSonoraZona);
GO
CREATE INDEX IX_ConfiguracionJugador ON ConfiguracionJugador(idConfiguracionJugador);
GO
CREATE INDEX IX_EsmeraldaZona ON EsmeraldaZona(idEsmeraldaZona);
GO
CREATE INDEX IX_EscenaZona ON EscenaZona(idEscenaZona);
GO
CREATE INDEX IX_FinalZona ON FinalZona(idFinalZona);
GO
CREATE INDEX IX_GemaZona ON GemaZona(idGemaZona);
GO
CREATE INDEX IX_JefeZona ON JefeZona(idJefeZona);
GO
CREATE INDEX IX_MercanciaPersonaje ON MercanciaPersonaje(idMercanciaPersonaje);
GO
CREATE INDEX IX_ModoDeJuegoJugador ON ModoDeJuegoJugador(idModoDeJuegoJugador);
GO
CREATE INDEX IX_PortalMundo ON PortalMundo(idPortalMundo);
GO
CREATE INDEX IX_PuntoDeControlZona ON PuntoDeControlZona(idPuntoDeControlZona);
GO
CREATE INDEX IX_RingZona ON RingZona(idRingZona);
GO
CREATE INDEX IX_RutaZona ON RutaZona(idRutaZona);
GO
CREATE INDEX IX_SagaJugador ON SagaJugador(idSagaJugador);
GO
CREATE INDEX IX_SerieSaga ON SerieSaga(idSerieSaga);
GO
CREATE INDEX IX_TeamPersonaje ON TeamPersonaje(idTeamPersonaje);
GO
CREATE INDEX IX_VidaPersonaje ON VidaPersonaje(idVidaPersonaje);
GO
CREATE INDEX IX_ZonaMundo ON ZonaMundo(idZonaMundo);
GO
CREATE INDEX IX_ZonaEspecialMundo ON ZonaEspecialMundo(idZonaEspecialMundo);


INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Palmtree Panic G Mix', 'Clasica', 'partida1');
GO
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Collision Chaos', 'Clasica', 'partida2');
GO
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Tidal Tempest G Mix', 'Clasica', 'partida3');
GO
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Quartz Quadrant', 'Clasica', 'partida4');
GO
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Wacky Workbench G Mix', 'Clasica', 'partida5');
GO
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Stardust Speedway', 'Clasica', 'partida6');
GO
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Metallic Madness G Mix', 'Clasica', 'partida7');
GO
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Boss!!', 'Clasica', 'partida8');
GO
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Special Stage', 'Clasica', 'partida9');
GO
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Final Fever', 'Clasica', 'partida10');
GO
UPDATE BandaSonora SET nombre = 'Palmtree Panic G Mix' WHERE idBandaSonora = '2'
DELETE FROM BandaSonora WHERE idBandaSonora = 1
GO
SELECT * FROM BandaSonora

INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('botonA', 'Fisica', 'Alambrico', 'Mando');
GO
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES (' botonB', 'Fisica', 'Alambrico', 'Mando');
GO
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('botonY', 'Fisica', 'Alambrico', 'Mando');
GO
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('botonX', 'Fisica', 'Alambrico', 'Mando');
GO
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('Desplazar', 'Fisica', 'Alambrico','Teclado' );
GO
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('Back', 'Fisica', 'Alambrico', 'Teclado');
GO
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('Detener', 'Fisica', 'Alambrico', 'Teclado');
GO
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('Pause', 'Fisica', 'Alambrico', 'Teclado');
GO
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('Omitir', 'Fisica', 'Alambrico', 'Teclado');
GO
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('Repetir', 'Fisica', 'Alambrico', 'Teclado');
GO
UPDATE Configuracion SET controles = 'botonA' WHERE idConfiguracion = '2'
DELETE FROM Configuracion WHERE idConfiguracion = 1
GO
SELECT * FROM Configuracion

INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('minutos', 'Temporizador', 'Restableciendo Tiempo');
GO
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('segundos', 'Temporizador', 'Inicio De Tiempo');
GO
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('segundos', 'Temporizador', 'Inicio De Los 10 segundos');
GO
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('segundos', 'Temporizador', 'Medio Tiempo');
GO
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('minutos', 'Temporizador', 'Conteo del primer minuto');
GO
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('minuto', 'Temporizador', 'Conteo del segundo minuto');
GO
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('minuto y segundos', 'Temporizador', 'Alerta de parpadeo de tiempo');
GO
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('minutos', 'Temporizador', 'Pierde Una Vida causando que se reinicie el acto');
GO
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('minutosegundo', 'Temporizador', 'Indica ser mas veloz');
GO
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('minutos', 'Temporizador', 'Fin del contrareloj y posible game over');
GO
UPDATE Contrareloj SET limite = 'minutos' WHERE idContrareloj = '2'
DELETE FROM Contrareloj WHERE idContrareloj = 1
GO
SELECT * FROM Contrareloj

INSERT INTO Era (nombre, tipo, descripcion) VALUES ('Classic', 'old', 'sonicG');
GO
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('classic', 'old', 'sonic2');
GO
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('dreamcast', 'dream', 'sonicG');
GO
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('dreamcast', 'dream', 'sonicAd2');
GO
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('DarkAge', 'dark', 'Sonic06');
GO
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('DarkAge', 'dark', 'ShadowTH');
GO
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('Modern', 'new', 'SonicG');
GO
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('Modern', 'new', 'LostWorld');
GO
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('Modern', 'actual', 'SonicForce');
GO
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('Modern', 'actual', 'Infinite');
GO
UPDATE Era SET nombre = 'Modern' WHERE idEra = '2'
DELETE FROM Era WHERE idEra = 1
GO
SELECT * FROM Era

INSERT INTO Escena (nombre, descripcion) VALUES ('Tittle', 'cinematica del titulo');
GO
INSERT INTO Escena (nombre, descripcion) VALUES ('intro', 'corta animacion');
GO
INSERT INTO Escena (nombre, descripcion) VALUES ('opening', 'escena con musica');
GO
INSERT INTO Escena (nombre, descripcion) VALUES ('Trama', 'momento dramatico');
GO
INSERT INTO Escena (nombre, descripcion) VALUES ('Characters', 'presentacion de los personajes');
GO
INSERT INTO Escena (nombre, descripcion) VALUES ('Fight', 'pelea entre protagonista y villano');
GO
INSERT INTO Escena (nombre, descripcion) VALUES ('Winner', 'ganador de la batalla');
GO
INSERT INTO Escena (nombre, descripcion) VALUES ('End', 'contexto con happy ending');
GO
INSERT INTO Escena (nombre, descripcion) VALUES ('Credits', 'animacion corta en los creditos');
GO
INSERT INTO Escena (nombre, descripcion) VALUES ('PostCredits', 'pequeña cinematica al terminar los creditos');
GO
UPDATE Escena SET nombre = 'Tittle' WHERE idEscena = '2'
DELETE FROM Escena WHERE idEscena = 1
GO
SELECT * FROM Escena

INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Rojo', 'Chaos', 'Super Transformacion');
GO
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Morado', 'Chaos', 'Energia');
GO
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Celeste', 'Chaos', 'Ritual');
GO
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Plateada', 'Chaos', 'Revivir');
GO
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Verde', 'Chaos', 'Flotar');
GO
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Amarillo', 'Chaos', 'Vision');
GO
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Azul', 'Chaos', 'Invulnerabilidad');
GO
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Rojo', 'Sol', 'Transferir');
GO
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Azul', 'Sol', 'Indestructible');
GO
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Verde', 'Master', 'Energia');
GO
UPDATE Esmeralda SET nombre = 'Esmerald' WHERE idEsmeralda = '2'
DELETE FROM Esmeralda WHERE idEsmeralda = 1
GO
SELECT * FROM Esmeralda

INSERT INTO Final (nombre, descripcion) VALUES ('Pure Dark', 'Hero');
GO
INSERT INTO Final (nombre, descripcion) VALUES ('Pure Dark', 'Dark');
GO
INSERT INTO Final (nombre, descripcion) VALUES ('Neutral Dark', 'Dark');
GO
INSERT INTO Final (nombre, descripcion) VALUES ('Neutral Dark', 'Hero');
GO
INSERT INTO Final (nombre, descripcion) VALUES ('Neutral', 'Dark');
GO
INSERT INTO Final (nombre, descripcion) VALUES ('Neutral', 'Hero');
GO
INSERT INTO Final (nombre, descripcion) VALUES ('Neutral Hero', 'Dark');
GO
INSERT INTO Final (nombre, descripcion) VALUES ('Neutral Hero', 'Hero');
GO
INSERT INTO Final (nombre, descripcion) VALUES ('Pure Hero', 'Dark');
GO
INSERT INTO Final (nombre, descripcion) VALUES ('Pure Hero', 'Hero');
GO
UPDATE Final SET nombre = 'Pure Dark' WHERE idFinal = '2'
DELETE FROM Final WHERE idFinal = 1
GO
SELECT * FROM Final

INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeSonic', 'Pasado', 'PasadoDelProtagonista');
GO
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeShadow', 'Tragico', 'TragicoDestino');
GO
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeEggman', 'Violento', 'ViolentoPasado');
GO
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeAmy', 'Feliz', 'FelizPasado');
GO
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeBlaze', 'Desastre', 'PasadoDesastrozo');
GO
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeSilver', 'Apocalipsis', 'PasadoApocaliptico');
GO
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeKnuckles', 'Neutral', 'PasadoNeutral');
GO
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeTikal', 'Triste', 'PasadoTriste');
GO
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeRouge', 'Intriga', 'PasadoConIntriga');
GO
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeTails', 'Empatico', 'PasadoEmpatico');
GO
UPDATE Historia SET nombre = 'HistoriaDeSonic' WHERE idHistoria  = '2'
DELETE FROM Historia WHERE idHistoria = 1
GO
SELECT * FROM Historia 

INSERT INTO Jugador (nombre) VALUES ('Sonia');
GO
INSERT INTO Jugador (nombre) VALUES ('Tere');
GO
INSERT INTO Jugador (nombre) VALUES ('Karol');
GO
INSERT INTO Jugador (nombre) VALUES ('Rodrigo');
GO
INSERT INTO Jugador (nombre) VALUES ('Andy');
GO
INSERT INTO Jugador (nombre) VALUES ('Cesar');
GO
INSERT INTO Jugador (nombre) VALUES ('Brianna');
GO
INSERT INTO Jugador (nombre) VALUES ('Diego');
GO
INSERT INTO Jugador (nombre) VALUES ('Jose');
GO
INSERT INTO Jugador (nombre) VALUES ('Emily');
GO
UPDATE Jugador SET nombre = 'Sonia' WHERE idJugador  = '2'
DELETE FROM Jugador WHERE idJugador  = 1
GO
SELECT * FROM Jugador

INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Arete', 'Accesorio', 'personalizado');
GO
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Gorra', 'Accesorio', 'personalizado');
GO
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Carcasa', 'Accesorio', 'Personalizado');
GO
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Poster', 'Decoracion', 'Vista');
GO
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Lampara', 'Decoracion', 'Vista');
GO
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Cuadro', 'Decoracion', 'Vista');
GO
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Sudadera', 'Vestuario', 'Atuendo');
GO
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Playera', 'Vestuario', 'Atuendo');
GO
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Peluche', 'Juguete', 'entretenimiento');
GO
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Figura', 'Juguete', 'entretenimiento');
GO
UPDATE Mercancia SET nombre = 'Arete' WHERE idMercancia   = '2'
DELETE FROM Mercancia WHERE idMercancia  = 1
GO
SELECT * FROM Mercancia

INSERT INTO Ring (nombre, color, tipo) VALUES ('SuperRing', 'Amarillo', 'Super');
GO
INSERT INTO Ring (nombre, color, tipo) VALUES ('GiantRing', 'Amarillo', 'Giant');
GO
INSERT INTO Ring (nombre, color, tipo) VALUES ('DarkRing', 'Marron', 'Dark');
GO
INSERT INTO Ring (nombre, color, tipo) VALUES ('GoalRing', 'Amarillo', 'Goal');
GO
INSERT INTO Ring (nombre, color, tipo) VALUES ('GhostRing', 'Transparente', 'Ghost');
GO
INSERT INTO Ring (nombre, color, tipo) VALUES ('ChaosRing', 'Multicolor', 'Chaos');
GO
INSERT INTO Ring (nombre, color, tipo) VALUES ('WorldRing', 'MultiColor', 'World');
GO
INSERT INTO Ring (nombre, color, tipo) VALUES ('InhibitorRing', 'Dorado', 'Ihnibitor');
GO
INSERT INTO Ring (nombre, color, tipo) VALUES ('RedStarRing', 'Rojo', 'RedStar');
GO
INSERT INTO Ring (nombre, color, tipo) VALUES ('MobiusRing', 'Amarillo', 'Mobius');
GO
UPDATE Ring SET nombre = 'SuperRing' WHERE idRing   = '2'
DELETE FROM Ring WHERE idRing  = 1
GO
SELECT * FROM Ring

INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX1', '1', 'Primer Vida');
GO
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX2', '2', 'Segunda Vida');
GO
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX3', '3', 'Tercer Vida');
GO
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX4', '4', 'Cuarta Vida');
GO
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX5', '5', 'Quinta Vida');
GO
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX6', '6', 'Sexta Vida');
GO
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX7', '7', 'Septima Vida');
GO
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX8', '8', 'Octava Vida');
GO
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX9', '9', 'Novena Vida');
GO
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX10', '10', 'Decima Vida');
GO
UPDATE Vida SET nombre = 'LifeX1' WHERE idVida   = '2'
DELETE FROM Vida WHERE idVida  = 1
GO
SELECT * FROM Vida

INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Alondra','Online', 2);
GO
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Ana', 'Online', 3);
GO
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Sonia', 'Online', 4);
GO
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Ricardo', 'Online', 5);
GO
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Lauro', 'Online', 6);
GO
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Jose', 'Online', 7);
GO
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Alejandro', 'Online', 8);
GO
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Jhony', 'Online', 8);
GO
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Yulma', 'Online', 9);
GO
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Fatima', 'Online', 10);
GO
UPDATE Amigo SET nombre = 'Alondra' WHERE idAmigo  = '2'
DELETE FROM Amigo  WHERE idAmigo  = 1
GO
SELECT * FROM Amigo

INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre1','zorro', 2);
GO
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre2', 'erizo', 3);
GO
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre3', 'cocodrilo', 4);
GO
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre4', 'abeja', 5);
GO
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre5', 'equidna', 6);
GO
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre6', 'murcielago', 7);
GO
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre7', 'camaleon', 8);
GO
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre8', 'gato', 8);
GO
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre9', 'oso', 9);
GO
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre10', 'pajaro', 10);
GO
UPDATE Avatar SET nombre = 'nombre1' WHERE idAvatar  = '2'
DELETE FROM Avatar  WHERE idAvatar  = 1
GO
SELECT * FROM Avatar

INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia1','actividad1', 'reto1', 'juego1', 2);
GO
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia2','actividad2', 'reto2', 'juego2', 3);
GO
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia3','actividad3', 'reto3', 'juego3',  4);
GO
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia4','actividad4', 'reto4', 'juego4', 5);
GO
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia5','actividad5', 'reto5','juego5', 6);
GO
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia6','actividad6', 'reto6','juego6', 7);
GO
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia7','actividad7', 'reto7', 'juego7',8);
GO
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia8','actividad8', 'reto8','juego8', 9);
GO
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia9','actividad9', 'reto9','juego9', 10);
GO
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia10','actividad10', 'reto10','juego10', 3);
GO
UPDATE Competencia SET nombre = 'Competencia1' WHERE idCompetencia = '2'
DELETE FROM Competencia WHERE idCompetencia = 1
GO
SELECT * FROM Competencia

INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando1','Modelo1', 'fisico', 2);
GO
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando2','Modelo2', 'alambrico', 3);
GO
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando3','Modelo3', 'inalambrico', 4);
GO
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando4','Modelo4', 'tactil', 5);
GO
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando5','Modelo5', 'fisico', 6);
GO
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando6','Modelo6', 'alambrico', 7);
GO
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando7','Modelo7', 'inalambrico', 8);
GO
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando8','Modelo8', 'tactil', 9);
GO
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando9','Modelo9', 'fisico', 10);
GO
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando10','Modelo10', 'alambrico', 3);
GO
UPDATE DispositivoDeEntrada SET nombre = 'Mando1' WHERE idDispositivoDeEntrada= '2'
DELETE FROM DispositivoDeEntrada WHERE idDispositivoDeEntrada= 1
GO
SELECT * FROM DispositivoDeEntrada 

INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra1','codigo1', 'SoundTest', 2);
GO
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra2','codigo2', 'Galeria', 3);
GO
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra3','codigo3', 'Trailer', 4);
GO
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra4','codigo4', 'SoundTest', 5);
GO
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra5','codigo5', 'Galeria', 6);
GO
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra6','codigo6', 'Trailer', 7);
GO
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra7','codigo7', 'SoundTest', 8);
GO
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra8','codigo8', 'Galeria', 9);
GO
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra9','codigo9', 'Trailer', 10);
GO
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra10','codigo10', 'SoundTest', 5);
GO
UPDATE Extra SET nombre = 'Extra1' WHERE idExtra= '2'
DELETE FROM Extra WHERE idExtra= 1
GO
SELECT * FROM Extra 

INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter1','logro1', 'logro desbloqueado', 2);
GO
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter2','logro2', 'logro desbloqueado', 3);
GO
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter3','logro3', 'logro desbloqueado', 4);
GO
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter4','logro4', 'logro desbloqueado', 5);
GO
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter5','logro5', 'logro bloqueado', 6);
GO
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter6','logro6', 'logro bloqueado', 7);
GO
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter7','logro7', 'logro bloqueado', 8);
GO
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter8','logro8', 'logro bloqueado', 9);
GO
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter9','logro9', 'logro bloqueado', 10);
GO
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter10','logro10', 'logro bloqueado', 3);
GO
UPDATE GameCenter SET nombre = 'GameCenter1' WHERE idGameCenter= '2'
DELETE FROM GameCenter WHERE idGameCenter= 1
GO
SELECT * FROM GameCenter 

INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador1','clasificacion1', 'clasificacion alta', 2);
GO
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador2','clasificacion2', 'clasificacion alta', 3);
GO
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador3','clasificacion3', 'clasificacion alta', 4);
GO
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador4','clasificacion4', 'clasificacion media', 5);
GO
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador5','clasificacion5', 'clasificacion media', 6);
GO
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador6','clasificacion6', 'clasificacion media', 7);
GO
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador7','clasificacion7', 'clasificacion baja', 8);
GO
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador8','clasificacion8', 'clasificacion baja', 9);
GO
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador9','clasificacion9', 'clasificacion baja', 10);
GO
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador10','clasificacion10', 'clasificacion muy baja', 2);
GO
UPDATE Marcador SET nombre = 'Marcador1' WHERE idMarcador= '2'
DELETE FROM Marcador WHERE idMarcador= 1
GO
SELECT * FROM Marcador 

INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones1', 'como se juega', 2);
GO
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones2', 'controles', 3);
GO
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones3', 'instrucciones del juego', 4);
GO
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones4', 'sonido', 5);
GO
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones5', 'tutorial', 6);
GO
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones6', 'idioma', 7);
GO
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones7', 'modo de visualizacion', 8);
GO
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones8', 'conexion', 9);
GO
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones9', 'informacion', 10);
GO
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones10', 'creditos', 4);
GO
UPDATE Menu SET nombre = 'Menu' WHERE idMenu= '2'
DELETE FROM Menu WHERE idMenu= 1
GO
SELECT * FROM Menu 

INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade1', 'SegaSonicPopcornShop', 2,2);
GO
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade2', 'SegaSonicTheHedgehog', 3,3);
GO
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade3', 'instrucciones del juego', 4,4);
GO
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade4', 'SonicAthletics', 5,5);
GO
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade5', 'SonicLive', 6,6);
GO
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade6', 'SonicCD', 7,7);
GO
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade7', 'SonicTheFighters', 8,8);
GO
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade8', 'SonicPatrolCar', 9,8);
GO
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade9', 'SonicTheHedgehog2', 10,10);
GO
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade10', 'SonicMania', 2,3);
GO
UPDATE Minijuego SET nombre = 'Minijuego' WHERE idMinijuego= '2'
DELETE FROM Minijuego WHERE idMinijuego = 1
GO
SELECT * FROM Minijuego 

INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','No','Si', 'DosJugadores', 2);
GO
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','Si','No', 'UnJugador', 3);
GO
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','Si','No', 'UnJugador', 4);
GO
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','No','Si', 'Jugador', 5);
GO
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','No','Si' ,'DosJugadores', 6);
GO
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','Si','No' ,'UnJugador', 7);
GO
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','Si','No', 'UnJugador', 8);
GO
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','No','Si', 'DosJugadores', 9);
GO
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','Si','No', 'UnJugador', 10);
GO
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','No','Si', 'DosJugadores', 8);
GO
UPDATE ModoDeJuego SET nombre = 'ModoGame' WHERE idModoDeJuego= '2'
DELETE FROM ModoDeJuego WHERE idModoDeJuego= 1
GO
SELECT * FROM ModoDeJuego 

INSERT INTO Musica(nombre, genero, idJugador) VALUES ('Crush40','rock',2);
GO
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('Crush40','glam rock',3);
GO
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('Crush40','metal',4);
GO
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('Crush40','metal', 5);
GO
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('Crush40','pop rock', 6);
GO
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('SonicR','pop', 7);
GO
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('SonicR','pop', 8);
GO
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('SonicR','pop', 9);
GO
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('JulienK','Rock', 10);
GO
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('BentleyJ', 'pop',2);
GO
UPDATE Musica SET nombre = 'Crush40' WHERE idMusica= '2'
DELETE FROM Musica WHERE idMusica = 1
GO
SELECT * FROM Musica 

INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','Primera saga',2);
GO
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','Secuela de la primera saga',3);
GO
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','Segunda saga',4);
GO
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','secuela de la segunda saga', 5);
GO
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','tercera saga', 6);
GO
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','cuarta saga', 7);
GO
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','secuela de la cuarta saga', 8);
GO
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','quinta saga', 9);
GO
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','secuela de la quinta saga', 10);
GO
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga1', 'sexta saga',8);
GO
UPDATE Saga SET nombre = 'Saga' WHERE idSaga= '2'
DELETE FROM Saga WHERE idSaga = 1
GO
SELECT * FROM Saga 

INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Sonic','erizo','primer','erizo azul',2,2);
GO
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Tails','Zorro', 'primer','zorro amarillo',3,3);
GO
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Knuckles','Equidna','segundo','equidna rojo',4,4);
GO
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Amy','erizo','primero','erizo rosa', 5,5);
GO
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Shadow','erizo','segundo','erizo negro', 6,6);
GO
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Rouge','murcielago','segundo','murcielago blanco', 7,7);
GO
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Omega','robot','segundo','metal negro', 8,8);
GO
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Silver','erizo','tercero','erizo blanco', 9,9);
GO
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Blaze','gato','tercero','gato morado', 10,10);
GO
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Big', 'gato','segundo','gato morado',9,4);
GO
UPDATE Personaje SET nombre = 'Sonic' WHERE idPersonaje= '2'
DELETE FROM Personaje WHERE idPersonaje = 1
GO
SELECT * FROM Personaje 

INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Cream','conejo','conejo cafe',2);
GO
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Tails','Zorro','zorro amarillo',3);
GO
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Knuckles','Equidna','equidna rojo',4);
GO
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Amy','erizo','erizo rosa', 5);
GO
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Shadow','erizo','erizo negro', 6);
GO
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Rouge','murcielago','murcielago blanco',7);
GO
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Omega','robot','metal negro', 8);
GO
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Silver','erizo','erizo blanco', 9);
GO
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Blaze','gato','gato morado', 10);
GO
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Big', 'gato','gato morado', 8);
GO
UPDATE Aliado SET nombre = 'Cream' WHERE idAliado= '2'
DELETE FROM Aliado WHERE idAliado = 1
GO
SELECT * FROM Aliado 

INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion1', 'nintendo',2);
GO
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion2', 'Lego',3);
GO
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion3', 'Fall Guys',4);
GO
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion4', 'Pac man',5);
GO
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion5', 'Wreck-It Ralph',6);
GO
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion6', 'OK KO',7);
GO
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion7', 'SambaDeAmigo',8);
GO
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion8', 'Art Alive',9);
GO
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion9', 'OutRunners',7);
GO
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion10', 'Popful Mail',8);
GO
UPDATE Colaboracion SET nombre = 'Colaboracion1' WHERE idColaboracion = '2'
DELETE FROM Colaboracion WHERE idColaboracion = 1
GO
SELECT * FROM Colaboracion

INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic1','Archie','PrimeraEdicion',2);
GO
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic2','IDW','SegundaEdicion',3);
GO
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic3','Fleetway','TerceraEdicion',4);
GO
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic4','Archie','CuartaEdicion',5);
GO
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic5','Archie','QuintaEdicion',6);
GO
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic6','Archie','SextaEdicion',7);
GO
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic7','IDW','SeptimaEdicion',8);
GO
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic8','IDW','OctavaEdicion',9);
GO
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic9','Fleetway','NovenaEdicion',8);
GO
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic10','Fleetway','DecimaEdicion',8);
GO
UPDATE Comic SET nombre = 'Comic1' WHERE idComic= '2'
DELETE FROM Comic WHERE idComic= 1
GO
SELECT * FROM Comic

INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa1','media','defensa 50%',2);
GO
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa2', 'alta', 'defensa superior 100%',3);
GO
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa2', 'alta', 'defensa superior 100%',4);
GO
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa4', 'baja', 'defensa 20%', 5);
GO
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa5', 'baja', 'defensa 10%',6);
GO
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa6', 'baja', 'defensa 5%',7);
GO
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa7', 'media', 'defensa 60%',7);
GO
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa8', 'alta', 'defensa superior 100%',8);
GO
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa8', 'alta', 'defensa superior 100%',9);
GO
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa9', 'media', 'defensa 70%',9);
GO
UPDATE Defensa SET nombre = 'Defensa1' WHERE idDefensa= '2'
DELETE FROM Defensa WHERE idDefensa= 1
GO
SELECT * FROM Defensa

INSERT INTO Escudo (nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Normal','70%', 'proteccion',7);
GO
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Normal','74%', 'proteccion',3);
GO
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Normal','60%', 'proteccion',4);
GO
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Flame','80%', 'proteccion',5);
GO
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Flame','84%', 'proteccion',5);
GO
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Flame','87%', 'proteccion',6);
GO
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Thunder','92%', 'proteccion',7);
GO
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Thunder','94%', 'proteccion',8);
GO
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Aqua','66%', 'proteccion',8);
GO
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Aqua','60%', 'proteccion',8);
GO
UPDATE Escudo SET nombre = 'Shield' WHERE idEscudo = '2'
DELETE FROM Escudo WHERE idEscudo= 1
GO
SELECT * FROM Escudo

INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('spin attack', 'normal', 'ataque directo', 3);
GO
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('jump spin attack', 'normal', 'ataque de salto', 4);
GO
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('spin dash', 'normal', 'ataque giratorio', 5);
GO
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('super peel out', 'normal', 'ataque de impulso', 5);
GO
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('hyper flash attack', 'normal', 'ataque general', 6);
GO
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('blast attack', 'normal', 'ataque desde el aire', 7);
GO
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('homing attack', 'normal', 'ataque desde el aire', 8);
GO
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('light speed dash', 'normal', 'recoleccion de fila de anillos', 7);
GO
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('mystic melody', 'normal', 'interpretar una melodia ', 9);
GO
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('sonic wind', 'normal', 'creacion de remolino', 9);
GO
UPDATE Habilidad SET nombre = 'spin attack' WHERE idHabilidad = '2'
DELETE FROM Habilidad WHERE idHabilidad = 1
GO
SELECT * FROM Habilidad


INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Tierra', '80s', 'planeta tierra ', 2,2);
GO
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Tierra', '90s', 'planeta tierra', 3,3);
GO
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Tierra', '2000', 'planeta tierra', 4,4);
GO
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Tierra', 'actual', 'planeta tierra', 5,5);
GO
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Mobius', 'old', 'planeta mobius', 6,6);
GO
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Mobius', 'retro', 'planeta mobius', 7,7);
GO
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Mobius', 'medieval', 'planeta mobius', 8,8);
GO
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Mobius', 'futurist', 'planeta mobius', 8,9);
GO
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Mobius', 'modern', 'planeta mobius', 9,9);
GO
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Mobius', 'actual', 'planeta mobius', 2,2);
GO
UPDATE Mundo SET nombre = 'Tiera' WHERE idMundo  = '2'
DELETE FROM Mundo WHERE idMundo = 1
GO
SELECT * FROM Mundo

INSERT INTO Plataforma (nombre,tipo,idMundo) VALUES ('MegaDrive', 'Consola', 2);
GO
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('Android', 'Sistema', 3);
GO
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('MasterSystem', 'Consola', 4);
GO
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('NintendoSwitch', 'Consola', 5);
GO
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('Microsoft', 'Sistema', 6);
GO
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('GameboyAdvance', 'Consola', 7);
GO
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('PlayStation', 'Consola', 8);
GO
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('Wii', 'Consola', 9);
GO
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('Nintendo3DS', 'Consola', 9);
GO
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('DreamCast', 'Consola', 5);
GO
UPDATE Plataforma SET nombre = 'MegaDrive' WHERE idPlataforma  = '2'
DELETE FROM Plataforma WHERE idPlataforma = 1
GO
SELECT * FROM Plataforma

INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'super', 'SuperTrasformacion', 2);
GO
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'chaos', 'Teletransportacion', 3);
GO
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'velocidad', 'Velocidad a la luz', 4);
GO
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'fuerza', 'Gran Fuerza', 5);
GO
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'Telequinesis', 'Control de objetos por mente', 5);
GO
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'Fuego', 'Control Del fuego', 6);
GO
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'volar', 'Elevarse por medio de las emociones', 7);
GO
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'Chaos Control', 'Control del tiempo y espacio',8);
GO
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'Desaparecer', 'Camuflaje',9);
GO
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'Cavar', 'Entrar A superficies de piedra',6);
GO
UPDATE Poder SET nombre = 'Power' WHERE idPoder  = '2'
DELETE FROM Poder WHERE idPoder = 1
GO
SELECT * FROM Poder

INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal1','entrada' , 2);
GO
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal2','temporal' , 3);
GO
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal3','dimensional' , 4);
GO
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal4','dimensional' , 5);
GO
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal5','temporal' , 6);
GO
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal6','temporal' , 7);
GO
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal7','temporal' , 8);
GO
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal8','dimensional', 9);
GO
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal9','entrada' , 10);
GO
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal10','entrada',9);
GO
UPDATE Portal SET nombre = 'Portal1' WHERE idPortal = '2'
DELETE FROM Portal WHERE idPortal = 1
GO
SELECT * FROM Portal

INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicUnderground', 'oldserie',2);
GO
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicBoom', 'actualserie', 3);
GO
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicSatam', 'oldserie', 4);
GO
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicX', 'animeserie', 5);
GO
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicTheHedgehogAd', 'oldserie', 6);
GO
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicPrime', 'newserie', 7);
GO
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicOva', 'oldova', 8);
GO
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicManiaAd', 'actualserie', 9);
GO
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicTH', 'oldserie', 6);
GO
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicMovie', 'movie', 8);
GO
UPDATE Serie SET nombre = 'SonicUnderground' WHERE idSerie = '2'
DELETE FROM Serie WHERE idSerie = 1
GO
SELECT * FROM Serie

INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamSonic', 'Sonic', 2);
GO
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamSonic', 'Tails', 3);
GO
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamSonic', 'Knuckles', 3);
GO
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamDark', 'Shadow', 4);
GO
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamDark', 'Rouge', 5);
GO
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamDark' , 'E123 Omega', 6);
GO
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamRose', 'Amy', 7);
GO
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamRose', 'Cream', 8);
GO
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamRose', 'Big', 9);
GO
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamChaotix', 'Vector,Charmy,Espio', 4);
GO
UPDATE Team SET nombre = 'TeamSonic' WHERE idTeam = '2'
DELETE FROM Team WHERE idTeam = 1
GO
SELECT * FROM Team

INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('Green hill', 'normal', '1', 'zona principal', 2,2,2,2,2,2,2);
GO
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('Marble', 'normal', '2', 'zona secundaria' , 3,3,3,3,3,3,3);
GO
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('spring yard', 'normal', '3', 'tercera zona', 4,4,4,4,4,4,4);
GO
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('labyrinth', 'normal', '4', 'cuarta zona', 5,5,5,5,5,5,5);
GO
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('StarLight', 'normal', '5', 'quinta zona', 6,6,6,6,6,6,6);
GO
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('ScrapBrain', 'normal', '6', 'sexta zona', 7,7,7,7,7,7,7);
GO
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('Emerald Hill', 'normal', '7', 'sexta zona', 8,8,8,8,8,8,8);
GO
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('Chemical Plant', 'normal', '8', 'octava zona', 9,9,9,9,9,9,9);
GO
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('Aquatic Ruin', 'normal', '9', 'Novena zona', 10,10,10,10,10,10,10);
GO
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('Death Egg', 'normal', '10', 'Decima zona', 2,2,2,2,2,2,2);
GO
UPDATE Zona SET nombre = 'Green hill' WHERE idZona = '2'
DELETE FROM Zona WHERE idZona = 1
GO
SELECT * FROM Zona

INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '1', 'primer nivel', 2);
GO
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '2', 'segundo nivel', 3);
GO
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '3', 'tercer nivel', 4);
GO
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '4', 'cuarto nivel', 5);
GO
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '5', 'quinto nivel', 6);
GO
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '6', 'sexto nivel', 7);
GO
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '7', 'septimo nivel', 8);
GO
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '8','octavo nivel' ,9);
GO
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '9', 'noveno nivel', 10);
GO
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '10', 'decimo nivel', 3);
GO
UPDATE Acto SET nombre = 'Act' WHERE idActo = '2'
DELETE FROM Acto WHERE idActo = 1
GO
SELECT * FROM Acto

INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Pocky','Conejo', 'animal friend', 2);
GO
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Becky','Oso','animal friend', 3);
GO
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Ricky','Ardilla', 'animal friend', 4);
GO
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Rocky','Foca','animal friend', 5);
GO
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Pincky','Pinguino','animal friend', 6);
GO
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Flicky','Pajaro','animal friend',7);
GO
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Picky','Cerdo','animal friend',8);
GO
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Cucky','Pollo', 'animal friend', 9);
GO
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Muncky', 'Mapache','animal friend',10);
GO
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Backy','Murcielago','animal friend', 3);
GO
UPDATE Animal SET nombre = 'Pocky' WHERE idAnimal = '2'
DELETE FROM Animal WHERE idAnimal = 1
GO
SELECT * FROM Animal

INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Grande', 'Tierra', 2);
GO
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Grande','Tierra', 3);
GO
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Grande', 'Tierra', 4);
GO
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Mediano','Metal', 5);
GO
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Mediano','Metal', 6);
GO
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Mediano','Metal',7);
GO
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Pequeño','Tierra',8);
GO
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Pequeño', 'Metal', 9);
GO
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle', 'Pequeño','Tierra',10);
GO
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Grande','Metal',3);
GO
UPDATE Bucle SET nombre = 'Bucle' WHERE idBucle = '2'
DELETE FROM Bucle WHERE idBucle = 1
GO
SELECT * FROM Bucle

INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto1','Proteccion','CajaDeObjeto de proteccion',2);
GO
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto2','Escudo','CajaDeObjeto de escudo',3);
GO
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto3','Invulnerabilidad','CajaDeObjetoInv',7);
GO
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto4','VidaExtra','CajaDeObjeto de vidaExtra',5);
GO
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto5','Proteccion','CajaDeObjeto de proteccion',6);
GO
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto6','Escudo','CajaDeObjeto de escudo',7);
GO
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto7','Invulnerabilidad','CajaDeProteccionIn',8);
GO
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto8','VidaExtra','CajaDeObjeto de VidaExtra',9);
GO
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto9','Proteccion','CajaDeProteccion',5);
GO
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto10','Proteccion','CajaDeProteccion',8);
GO
UPDATE CajaDeObjeto SET nombre = 'CajaDeObjeto1' WHERE idCajaDeObjeto= '2'
DELETE FROM CajaDeObjeto WHERE idCajaDeObjeto= 1
GO
SELECT * FROM CajaDeObjeto

INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension1','paralela',2);
GO
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension2', 'alterna',3);
GO
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension2', 'temporal',4);
GO
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension4', 'paralela',5);
GO
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension5', 'alterna',6);
GO
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension6', 'temporal',7);
GO
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension7', 'paralela',7);
GO
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension8', 'alterna',8);
GO
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension8', 'temporal',9);
GO
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension9', 'paralela',10);
GO
UPDATE Dimension SET nombre = 'Dimension1' WHERE idDimension= '2'
DELETE FROM Dimension WHERE idDimension= 1
GO
SELECT * FROM Dimension

INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo1','Metal','enemigoMetal',2);
GO
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo2','Metal','enemigoMetal',2);
GO
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo3','Metal', 'enemigoMetal',2);
GO
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo4','Metal','enemigoMetal',3);
GO
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo5','Metal','enemigoMetal',4);
GO
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo6','Metal','enemigoMetal',5);
GO
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo7','Metal', 'enemigoMetal',5);
GO
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo8','Metal','enemigoMetal',6);
GO
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo9','Metal','enemigoMetal',8);
GO
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo10','Metal', 'enemigoMetal',8);
GO
UPDATE Enemigo SET nombre = 'Enemigo' WHERE idEnemigo= '2'
DELETE FROM Enemigo WHERE idEnemigo= 1
GO
SELECT * FROM Enemigo


INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario1','Metallic',2);
GO
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario2', 'Island',3);
GO
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario2', 'Flame',4);
GO
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario4', 'Llamativo',5);
GO
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario5', 'Oscuro',6);
GO
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario6', 'Tecnologic',7);
GO
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario7', 'Retro',7);
GO
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario8', 'metalic',8);
GO
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario8', 'dark',9);
GO
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario9', 'funky',10);
GO
UPDATE Escenario SET nombre = 'Escenario1' WHERE idEscenario= '2'
DELETE FROM Escenario WHERE idEscenario= 1
GO
SELECT * FROM Escenario

INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Sombras',2);
GO
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Iluminacion',2);
GO
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Exposicion',2);
GO
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Fotografica',3);
GO
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Fondo',4);
GO
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Estructura',5);
GO
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Sombras',5);
GO
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Iluminacion',6);
GO
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Exposicion',8);
GO
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Fotografica',8);
GO
UPDATE EstiloVisual SET nombre = 'StyleVi' WHERE idEstiloVisual= '2'
DELETE FROM EstiloVisual WHERE idEstiloVisual= 1
GO
SELECT * FROM EstiloVisual

INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema1','rojo','Chaos',2);
GO
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema2','verde','Chaos',3);
GO
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema3','amarillo','Chaos',4);
GO
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema4','gris','Chaos',5);
GO
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema5','morado','Chaos',6);
GO
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema6','celeste','Chaos',7);
GO
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema7','azul','Chaos',8);
GO
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema8','cafe','Chaos',9);
GO
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema9','naranja','Chaos',5);
GO
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema10','negro','Chaos',8);
GO
UPDATE Gema SET nombre = 'Gema1' WHERE idGema= '2'
DELETE FROM Gema WHERE idGema= 1
GO
SELECT * FROM Gema

INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe1','jefeDeZona','Human',2);
GO
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe2','MiniJefe','Robot',3);
GO
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe3','JefeFinal','Human',4);
GO
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe4','JefeDeZona','Robot',5);
GO
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe5','MiniJefe','Equidna',6);
GO
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe6','JefeFinal','Equidna',7);
GO
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe7','JefeDeZona','Erizo',8);
GO
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe8','MiniJefe','Raton',9);
GO
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe9','JefeFinal','Oso',5);
GO
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe10','JefeDeZona','Robot',8);
GO
UPDATE Jefe SET nombre = 'Jefe1' WHERE idJefe= '2'
DELETE FROM Jefe WHERE idJefe= 1
GO
SELECT * FROM Jefe

INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl1','Guardado','PuntoDeControlDeZona',2);
GO
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl2','Guardado','MiniPuntoDeControl',3);
GO
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl3','Guardado','PuntoDeControlFinal',4);
GO
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl4','Guardado','PuntoDeControlDeZona',5);
GO
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl5','Guardado','MiniPuntoDeControl',6);
GO
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl6','Guardado','PuntoDeControlFinal',7);
GO
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl7','Guardado','PuntoDeControlDeZona',8);
GO
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl8','Guardado','MiniPuntoDeControl',9);
GO
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl9','Guardado','PuntoDeControlFinal',5);
GO
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl10','Guardado','PuntoDeControlDeZona',8);
GO
UPDATE PuntoDeControl SET nombre = 'PuntoDeControl1' WHERE idPuntoDeControl= '2'
DELETE FROM PuntoDeControl WHERE idPuntoDeControl= 1
GO
SELECT * FROM PuntoDeControl

INSERT INTO Ruta(tipo,idZona) VALUES ('Facil',2);
GO
INSERT INTO Ruta(tipo,idZona) VALUES ('Facil',3);
GO
INSERT INTO Ruta(tipo,idZona) VALUES ('Facil',4);
GO
INSERT INTO Ruta(tipo,idZona) VALUES ('Media',5);
GO
INSERT INTO Ruta(tipo,idZona) VALUES ('Media',6);
GO
INSERT INTO Ruta(tipo,idZona) VALUES ('Media',7);
GO
INSERT INTO Ruta(tipo,idZona) VALUES ('Normal',8);
GO
INSERT INTO Ruta(tipo,idZona) VALUES ('Normal',9);
GO
INSERT INTO Ruta(tipo,idZona) VALUES ('Dificil',5);
GO
INSERT INTO Ruta(tipo,idZona) VALUES ('Dificil',8);
GO
UPDATE Ruta SET tipo = 'Facil' WHERE idRuta= '2'
DELETE FROM Ruta WHERE idRuta= 1
GO
SELECT * FROM Ruta

INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (1,'tiempo de zona',2);
GO
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (2,'tiempo de zona',3);
GO
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (3,'tiempo de zona',4);
GO
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (4,'tiempo de zona',5);
GO
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (5,'tiempo de zona',6);
GO
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (6,'tiempo de zona',7);
GO
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (7,'tiempo de zona',8);
GO
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (8,'tiempo de zona',9);
GO
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (9,'tiempo de zona',5);
GO
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (10,'tiempo de zona',8);
GO
UPDATE Tiempo SET cantidad = '1' WHERE idTiempo= '2'
DELETE FROM Tiempo WHERE idTiempo= 1
GO
SELECT * FROM Tiempo

INSERT INTO Trampa(nombre,tipo, descripcion, idZona) VALUES ('Trampa1','Metal','Grande', 2);
GO
INSERT INTO Trampa(nombre,tipo,descripcion, idZona) VALUES ('Trampa2','Metal','Grande',3);
GO
INSERT INTO Trampa(nombre,tipo, descripcion,idZona) VALUES ('Trampa3','Metal','Grande',4);
GO
INSERT INTO Trampa(nombre,tipo,descripcion, idZona) VALUES ('Trampa4','Metal','Mediano',5);
GO
INSERT INTO Trampa(nombre,tipo,descripcion, idZona) VALUES ('Trampa5','Metal','Mediano', 6);
GO
INSERT INTO Trampa(nombre,tipo,descripcion, idZona) VALUES ('Trampa6','Metal','Mediano',7);
GO
INSERT INTO Trampa(nombre,tipo,descripcion, idZona) VALUES ('Trampa7','Metal','Pequeño',8);
GO
INSERT INTO Trampa(nombre,tipo, descripcion,idZona) VALUES ('Trampa8','Metal','Pequeño',9);
GO
INSERT INTO Trampa(nombre,tipo,descripcion, idZona) VALUES ('Trampa9', 'Metal','Pequeño',10);
GO
INSERT INTO Trampa(nombre,tipo, descripcion,idZona) VALUES ('Trampa10','Metal','Grande',3);
GO
UPDATE Trampa SET nombre = 'Trampa1' WHERE idTrampa = '2'
DELETE FROM Trampa WHERE idTrampa = 1
GO
SELECT * FROM Trampa

INSERT INTO ZonaEspecial(nombre,tipo,nivel,descripcion, idMundo) VALUES ('ZonaEspecial1','Secret', 1,'nivelespecialsecreto',2);
GO
INSERT INTO ZonaEspecial(nombre,tipo, nivel,descripcion,idMundo) VALUES ('ZonaEspecial2','Secret',2,'nivelespecialsecreto',3);
GO
INSERT INTO ZonaEspecial(nombre,tipo,nivel,descripcion, idMundo) VALUES ('ZonaEspecial3','Secret',3,'nivelespecialsecreto',4);
GO
INSERT INTO ZonaEspecial(nombre,tipo,nivel,descripcion, idMundo) VALUES ('ZonaEspecial4','Secret',4,'nivelespecialsecreto',5);
GO
INSERT INTO ZonaEspecial(nombre,tipo, nivel,descripcion,idMundo) VALUES ('ZonaEspecial5','Secret',5, 'nivelespecialsecreto',6);
GO
INSERT INTO ZonaEspecial(nombre,tipo, nivel,descripcion,idMundo) VALUES ('ZonaEspecial6','Secret',6,'nivelespecialsecreto',7);
GO
INSERT INTO ZonaEspecial(nombre,tipo,nivel,descripcion, idMundo) VALUES ('ZonaEspecial7','Secret',7,'nivelespecialsecreto',8);
GO
INSERT INTO ZonaEspecial(nombre,tipo, nivel,descripcion,idMundo) VALUES ('ZonaEspecial8','Secret',8,'nivelespecialsecreto',9);
GO
INSERT INTO ZonaEspecial(nombre,tipo, nivel,descripcion,idMundo) VALUES ('ZonaEspecial9', 'Secret',9,'nivelespecialsecreto',10);
GO
INSERT INTO ZonaEspecial(nombre,tipo,nivel,descripcion, idMundo) VALUES ('ZonaEspecial10','Secret',10,'nivelespecialsecreto',3);
GO
UPDATE ZonaEspecial SET nombre = 'ZonaEspecial1' WHERE idZonaEspecial = '2'
DELETE FROM ZonaEspecial WHERE idZonaEspecial = 1
GO
SELECT * FROM ZonaEspecial

INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (2,2);
GO
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (3,3);
GO
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (4,4);
GO
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (5,5);
GO
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (6,6);
GO
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (7,7);
GO
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (8,8);
GO
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (9,9);
GO
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (3,6);
GO
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (10,10);
GO
UPDATE BandaSonoraZona SET idBandaSonora= '2' WHERE idBandaSonoraZona = '2'
DELETE FROM BandaSonoraZona WHERE idBandaSonoraZona= 1
GO
SELECT * FROM BandaSonoraZona

INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (2,2);
GO
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (3,3);
GO
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (4,4);
GO
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (5,5);
GO
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (6,6);
GO
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (7,7);
GO
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (8,8);
GO
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (9,9);
GO
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (10,10);
GO
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (6,7);
GO
UPDATE ZonaEspecialMundo SET idZonaEspecial = '2' WHERE idZonaEspecialMundo = '2'
DELETE FROM ZonaEspecialMundo WHERE idZonaEspecialMundo = 1
GO
SELECT * FROM ZonaEspecialMundo

INSERT INTO ZonaMundo(idZona, idMundo) VALUES (2,2);
GO
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (3,3);
GO
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (4,4);
GO
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (5,5);
GO
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (6,6);
GO
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (7,7);
GO
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (8,8);
GO
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (9,9);
GO
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (10,10);
GO
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (4,7);
GO
UPDATE ZonaMundo SET idZona = '2' WHERE idZonaMundo = '2'
DELETE FROM ZonaMundo WHERE idZonaMundo = 1
GO
SELECT * FROM ZonaMundo

INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (2,2);
GO
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (3,3);
GO
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (4,4);
GO
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (5,5);
GO
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (6,6);
GO
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (7,7);
GO
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (8,8);
GO
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (9,9);
GO
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (10,10);
GO
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (5,6);
GO
UPDATE ConfiguracionJugador SET idConfiguracion = '2' WHERE idConfiguracionJugador = '2'
DELETE FROM ConfiguracionJugador WHERE idConfiguracionJugador = 1
GO
SELECT * FROM ConfiguracionJugador

INSERT INTO EscenaZona(idEscena, idZona) VALUES (2,2);
GO
INSERT INTO EscenaZona(idEscena, idZona) VALUES (3,3);
GO
INSERT INTO EscenaZona(idEscena, idZona) VALUES (4,4);
GO
INSERT INTO EscenaZona(idEscena, idZona) VALUES (5,5);
GO
INSERT INTO EscenaZona(idEscena, idZona) VALUES (6,6);
GO
INSERT INTO EscenaZona(idEscena, idZona) VALUES (7,7);
GO
INSERT INTO EscenaZona(idEscena, idZona) VALUES (8,8);
GO
INSERT INTO EscenaZona(idEscena, idZona) VALUES (9,9);
GO
INSERT INTO EscenaZona(idEscena, idZona) VALUES (10,10);
GO
INSERT INTO EscenaZona(idEscena, idZona) VALUES (5,6);
GO
UPDATE EscenaZona SET idEscena = '2' WHERE idEscenaZona = '2'
DELETE FROM EscenaZona WHERE idEscenaZona = 1
GO
SELECT * FROM EscenaZona

INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (2,2);
GO
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (3,3);
GO
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (4,4);
GO
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (5,5);
GO
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (6,6);
GO
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (7,7);
GO
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (8,8);
GO
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (9,9);
GO
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (10,10);
GO
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (5,6);
GO
UPDATE EsmeraldaZona SET idEsmeralda = '2' WHERE idEsmeraldaZona = '2'
DELETE FROM EsmeraldaZona WHERE idEsmeraldaZona = 1
GO
SELECT * FROM EsmeraldaZona

INSERT INTO FinalZona(idFinal, idZona) VALUES (2,2);
GO
INSERT INTO FinalZona(idFinal, idZona) VALUES (3,3);
GO
INSERT INTO FinalZona(idFinal, idZona) VALUES (4,4);
GO
INSERT INTO FinalZona(idFinal, idZona) VALUES (5,5);
GO
INSERT INTO FinalZona(idFinal, idZona) VALUES (6,6);
GO
INSERT INTO FinalZona(idFinal, idZona) VALUES (7,7);
GO
INSERT INTO FinalZona(idFinal, idZona) VALUES (8,8);
GO
INSERT INTO FinalZona(idFinal, idZona) VALUES (9,9);
GO
INSERT INTO FinalZona(idFinal, idZona) VALUES (10,10);
GO
INSERT INTO FinalZona(idFinal, idZona) VALUES (5,6);
GO
UPDATE FinalZona SET idFinal = '2' WHERE idFinalZona = '2'
DELETE FROM FinalZona WHERE idFinalZona = 1
GO
SELECT * FROM FinalZona

INSERT INTO GemaZona(idGema, idZona) VALUES (2,2);
GO
INSERT INTO GemaZona(idGema, idZona) VALUES (3,3);
GO
INSERT INTO GemaZona(idGema, idZona) VALUES (4,4);
GO
INSERT INTO GemaZona(idGema, idZona) VALUES (5,5);
GO
INSERT INTO GemaZona(idGema, idZona) VALUES (6,6);
GO
INSERT INTO GemaZona(idGema, idZona) VALUES (7,7);
GO
INSERT INTO GemaZona(idGema, idZona) VALUES (8,8);
GO
INSERT INTO GemaZona(idGema, idZona) VALUES (9,9);
GO
INSERT INTO GemaZona(idGema, idZona) VALUES (10,10);
GO
INSERT INTO GemaZona(idGema, idZona) VALUES (5,6);
GO
UPDATE GemaZona SET idGema = '2' WHERE idGemaZona = '2'
DELETE FROM GemaZona WHERE idGemaZona = 1
GO
SELECT * FROM GemaZona

INSERT INTO JefeZona(idJefe, idZona) VALUES (2,2);
GO
INSERT INTO JefeZona(idJefe, idZona) VALUES (3,3);
GO
INSERT INTO JefeZona(idJefe, idZona) VALUES (4,4);
GO
INSERT INTO JefeZona(idJefe, idZona) VALUES (5,5);
GO
INSERT INTO JefeZona(idJefe, idZona) VALUES (6,6);
GO
INSERT INTO JefeZona(idJefe, idZona) VALUES (7,7);
GO
INSERT INTO JefeZona(idJefe, idZona) VALUES (8,8);
GO
INSERT INTO JefeZona(idJefe, idZona) VALUES (9,9);
GO
INSERT INTO JefeZona(idJefe, idZona) VALUES (10,10);
GO
INSERT INTO JefeZona(idJefe, idZona) VALUES (5,6);
GO
UPDATE JefeZona SET idJefe = '2' WHERE idJefeZona = '2'
DELETE FROM JefeZona WHERE idJefeZona = 1
GO
SELECT * FROM JefeZona

INSERT INTO RingZona(idRing, idZona) VALUES (2,2);
GO
INSERT INTO RingZona(idRing, idZona) VALUES (3,3);
GO
INSERT INTO RingZona(idRing, idZona) VALUES (4,4);
GO
INSERT INTO RingZona(idRing, idZona) VALUES (5,5);
GO
INSERT INTO RingZona(idRing, idZona) VALUES (6,6);
GO
INSERT INTO RingZona(idRing, idZona) VALUES (7,7);
GO
INSERT INTO RingZona(idRing, idZona) VALUES (8,8);
GO
INSERT INTO RingZona(idRing, idZona) VALUES (9,9);
GO
INSERT INTO RingZona(idRing, idZona) VALUES (10,10);
GO
INSERT INTO RingZona(idRing, idZona) VALUES (5,6);
GO
UPDATE RingZona SET idRing = '2' WHERE idRingZona = '2'
DELETE FROM RingZona WHERE idRingZona = 1
GO
SELECT * FROM RingZona

INSERT INTO RutaZona(idRuta, idZona) VALUES (2,2);
GO
INSERT INTO RutaZona(idRuta, idZona) VALUES (3,3);
GO
INSERT INTO RutaZona(idRuta, idZona) VALUES (4,4);
GO
INSERT INTO RutaZona(idRuta, idZona) VALUES (5,5);
GO
INSERT INTO RutaZona(idRuta, idZona) VALUES (6,6);
GO
INSERT INTO RutaZona(idRuta, idZona) VALUES (7,7);
GO
INSERT INTO RutaZona(idRuta, idZona) VALUES (8,8);
GO
INSERT INTO RutaZona(idRuta, idZona) VALUES (9,9);
GO
INSERT INTO RutaZona(idRuta, idZona) VALUES (10,10);
GO
INSERT INTO RutaZona(idRuta, idZona) VALUES (5,6);
GO
UPDATE RutaZona SET idRuta = '2' WHERE idRutaZona = '2'
DELETE FROM RutaZona WHERE idRutaZona = 1
GO
SELECT * FROM RutaZona

INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (2,2);
GO
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (3,3);
GO
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (4,4);
GO
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (5,5);
GO
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (6,6);
GO
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (7,7);
GO
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (8,8);
GO
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (9,9);
GO
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (3,4);
GO
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (5,6);
GO
UPDATE MercanciaPersonaje SET idMercancia = '2' WHERE idMercanciaPersonaje = '2'
DELETE FROM MercanciaPersonaje WHERE idMercanciaPersonaje = 1
GO
SELECT * FROM MercanciaPersonaje

INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (2,2);
GO
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (3,3);
GO
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (4,4);
GO
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (5,5);
GO
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (6,6);
GO
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (7,7);
GO
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (8,8);
GO
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (9,9);
GO
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (4,8);
GO
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (5,6);
GO
UPDATE TeamPersonaje SET idTeam = '2' WHERE idTeamPersonaje = '2'
DELETE FROM TeamPersonaje WHERE idTeamPersonaje = 1
GO
SELECT * FROM TeamPersonaje


INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (2,2);
GO
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (3,3);
GO
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (4,4);
GO
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (5,5);
GO
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (6,6);
GO
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (7,7);
GO
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (8,8);
GO
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (9,9);
GO
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (4,8);
GO
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (5,6);
GO
UPDATE VidaPersonaje SET idVida = '2' WHERE idVidaPersonaje = '2'
DELETE FROM VidaPersonaje WHERE idVidaPersonaje = 1
GO
SELECT * FROM VidaPersonaje

INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (2,2);
GO
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (3,3);
GO
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (4,4);
GO
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (5,5);
GO
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (6,6);
GO
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (7,7);
GO
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (8,8);
GO
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (9,9);
GO
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (7,9);
GO
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (5,6);
GO
UPDATE ModoDeJuegoJugador SET idModoDeJuego = '2' WHERE idModoDeJuegoJugador = '2'
DELETE FROM ModoDeJuegoJugador WHERE idModoDeJuegoJugador = 1
GO
SELECT * FROM ModoDeJuegoJugador

INSERT INTO SagaJugador(idSaga, idJugador) VALUES (2,2);
GO
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (3,3);
GO
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (4,4);
GO
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (5,5);
GO
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (6,6);
GO
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (7,7);
GO
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (8,8);
GO
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (9,9);
GO
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (4,3);
GO
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (5,6);
GO
UPDATE SagaJugador SET idSaga = '2' WHERE idSagaJugador = '2'
DELETE FROM SagaJugador WHERE idSagaJugador = 1
GO
SELECT * FROM SagaJugador

INSERT INTO PortalMundo(idPortal, idMundo) VALUES (2,2);
GO
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (3,3);
GO
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (4,4);
GO
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (5,5);
GO
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (6,6);
GO
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (7,7);
GO
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (8,8);
GO
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (9,9);
GO
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (8,4);
GO
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (5,6);
GO
UPDATE PortalMundo SET idPortal = '2' WHERE idPortalMundo = '2'
DELETE FROM PortalMundo WHERE idPortalMundo = 1
GO
SELECT * FROM PortalMundo

INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (2,2);
GO
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (3,3);
GO
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (4,4);
GO
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (5,5);
GO
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (6,6);
GO
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (7,7);
GO
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (8,8);
GO
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (9,9);
GO
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (5,3);
GO
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (5,6);
GO
UPDATE PuntoDeControlZona SET idPuntoDeControl = '2' WHERE idPuntoDeControlZona = '2'
DELETE FROM PuntoDeControlZona WHERE idPuntoDeControlZona = 1
GO
SELECT * FROM PuntoDeControlZona

INSERT INTO SerieSaga(idSerie, idSaga) VALUES (2,2);
GO
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (3,3);
GO
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (4,4);
GO
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (5,5);
GO
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (6,6);
GO
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (7,7);
GO
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (8,8);
GO
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (7,9);
GO
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (3,2);
GO
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (5,6);
GO
UPDATE SerieSaga SET idSerie = '2' WHERE idSerieSaga = '2'
DELETE FROM SerieSaga WHERE idSerieSaga = 1
GO
SELECT * FROM SerieSaga

