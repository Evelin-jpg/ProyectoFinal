CREATE TABLE Acto
(
idActo SERIAL PRIMARY KEY,
nombre VARCHAR(40)NOT NULL,
nivel INT NOT NULL,
descripcion VARCHAR(30) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idZona int not null
);
CREATE TABLE Aliado
(
idAliado SERIAL PRIMARY KEY,
nombre VARCHAR(40)NOT NULL,
especie VARCHAR(20)NOT NULL,
descripcion VARCHAR(30)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idPersonaje int not null
);
CREATE TABLE Amigo
(
idAmigo SERIAL PRIMARY KEY,
nombre VARCHAR(20)NOT NULL,
descripcion VARCHAR(10) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idJugador int not null
);
CREATE TABLE Animal
(idAnimal SERIAL PRIMARY KEY,
nombre VARCHAR(40)NOT NULL,
especie VARCHAR(20)NOT NULL,
descripcion VARCHAR(30) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idZona int not null
);
CREATE TABLE Avatar
(
idAvatar SERIAL PRIMARY KEY,
idJugador int not null,
nombre VARCHAR(40)NOT NULL,
especie VARCHAR(20)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE BandaSonora
(
idBandaSonora SERIAL PRIMARY KEY,
nombre VARCHAR(40)NOT NULL,
tipo VARCHAR(10)NOT NULL,
descripcion VARCHAR(10) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE BandaSonoraZona
(
idBandaSonoraZona SERIAL PRIMARY KEY,
idBandaSonora INT NOT NULL,
idZona INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE Bucle
(
idBucle SERIAL PRIMARY KEY,
nombre VARCHAR(20)NOT NULL,
tamaño VARCHAR(30)NOT NULL,
tipo VARCHAR(20)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idZona int not null
);
CREATE TABLE CajaDeObjeto
(
idCajaDeObjeto SERIAL PRIMARY KEY,
nombre VARCHAR(20)NOT NULL,
tipo VARCHAR(20)NOT NULL,
descripcion VARCHAR(30)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idZona int not null
);
CREATE TABLE Colaboracion
(
idColaboracion SERIAL PRIMARY KEY,
nombre VARCHAR(50)NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idPersonaje int not null
);
CREATE TABLE Comic
(
idComic SERIAL PRIMARY KEY,
nombre VARCHAR(30)NOT NULL,
editorial VARCHAR(40)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idSaga int not null
);
CREATE TABLE Competencia
(
idCompetencia SERIAL PRIMARY KEY,
nombre VARCHAR(50)NOT NULL,
actividad VARCHAR(20)NOT NULL,
reto VARCHAR(10)NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idJugador int not null
);
CREATE TABLE Configuracion
(
idConfiguracion SERIAL PRIMARY KEY,
controles VARCHAR(10)NOT NULL,
partes VARCHAR(10)NOT NULL,
propiedades VARCHAR(10)NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE ConfiguracionJugador
(
idConfiguracionJugador SERIAL PRIMARY KEY,
idConfiguracion INT NOT NULL,
idJugador INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE Contrareloj
(
idContrareloj SERIAL PRIMARY KEY,
limite VARCHAR(20) NOT NULL,
nombre VARCHAR(30)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE Defensa
(
idDefensa SERIAL PRIMARY KEY,
nombre VARCHAR(30)NOT NULL,
fuerza VARCHAR(20)NOT NULL,
descripcion VARCHAR(40)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idPersonaje int not null
);
CREATE TABLE Dimension
(
idDimension SERIAL PRIMARY KEY,
nombre VARCHAR(50)NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idMundo int not null
);
CREATE TABLE DispositivoDeEntrada
(
idDispositivoDeEntrada SERIAL PRIMARY KEY,
nombre VARCHAR(20)NOT NULL,
modelo VARCHAR(10)NOT NULL,
descripcion VARCHAR(40)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idJugador int not null
);
CREATE TABLE Enemigo
(
idEnemigo SERIAL PRIMARY KEY,
nombre VARCHAR(30)NOT NULL,
tipo VARCHAR(30)NOT NULL,
descripcion VARCHAR(30)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idZona int not null
);
CREATE TABLE Era
(
idEra SERIAL PRIMARY KEY,
nombre VARCHAR(10)NOT NULL,
tipo VARCHAR(10)NOT NULL,
descripcion VARCHAR(10) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE Escena
(
idEscena SERIAL PRIMARY KEY,
nombre VARCHAR(50)NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE Escenario
(
idEscenario SERIAL PRIMARY KEY,
nombre VARCHAR(50)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idMundo int not null
);
CREATE TABLE EscenaZona
(
idEscenaZona SERIAL PRIMARY KEY,
idEscena INT NOT NULL,
idZona INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE Escudo
(
idEscudo SERIAL PRIMARY KEY,
nombre VARCHAR(20)NOT NULL,
tipo VARCHAR(20)NOT NULL,
resistencia VARCHAR(20)NOT NULL,
descripcion VARCHAR(20) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idPersonaje int not null
);
CREATE TABLE Esmeralda
(
idEsmeralda SERIAL PRIMARY KEY,
nombre VARCHAR(30)NOT NULL,
color VARCHAR(20)NOT NULL,
tipo VARCHAR(20)NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE EsmeraldaZona
(
idEsmeraldaZona SERIAL PRIMARY KEY,
idEsmeralda INT NOT NULL,
idZona INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE EstiloVisual
(
idEstiloVisual SERIAL PRIMARY KEY,
nombre VARCHAR(10)NOT NULL,
detalles VARCHAR(30)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idMundo int not null
);
CREATE TABLE Extra
(
idExtra SERIAL PRIMARY KEY,
nombre VARCHAR(50)NOT NULL,
codigo VARCHAR(50)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idJugador int not null
);
CREATE TABLE Final
(
idFinal SERIAL PRIMARY KEY,
nombre VARCHAR(20)NOT NULL,
descripcion VARCHAR(30) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE FinalZona
(
idFinalZona SERIAL PRIMARY KEY,
idFinal INT NOT NULL,
idZona INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);	
CREATE TABLE GameCenter
(
idGameCenter SERIAL PRIMARY KEY,
nombre VARCHAR(50)NOT NULL,
logro VARCHAR(50)NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idJugador int not null
);
CREATE TABLE Gema
(
idGema SERIAL PRIMARY KEY,
nombre VARCHAR(30)NOT NULL,
color VARCHAR(20)NOT NULL,
tipo VARCHAR(20)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idZona int not null
);
CREATE TABLE GemaZona
(
idGemaZona SERIAL PRIMARY KEY,
idGema INT NOT NULL,
idZona INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE Habilidad
(
idHabilidad SERIAL PRIMARY KEY,
nombre VARCHAR(50)NOT NULL,
tipo VARCHAR(50)NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idPersonaje int not null
);
CREATE TABLE Historia
(
idHistoria SERIAL PRIMARY KEY,
nombre VARCHAR(50)NOT NULL,
suceso VARCHAR(50)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE Jefe
(
idJefe SERIAL PRIMARY KEY,
nombre VARCHAR(40)NOT NULL,
descripcion VARCHAR(30) NOT NULL,
especie VARCHAR(20)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idZona int not null
);
CREATE TABLE JefeZona
(
idJefeZona SERIAL PRIMARY KEY,
idJefe INT NOT NULL,
idZona INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);	
CREATE TABLE Jugador
(
idJugador SERIAL PRIMARY KEY,
nombre VARCHAR(20)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE Marcador
(
idMarcador SERIAL PRIMARY KEY,
nombre VARCHAR(50)NOT NULL,
clasificacion VARCHAR(50)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idJugador int not null
);
CREATE TABLE Menu
(
idMenu SERIAL PRIMARY KEY,
nombre VARCHAR(30)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
ayudayopciones VARCHAR(50)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idJugador int not null
);
CREATE TABLE Mercancia
(
idMercancia SERIAL PRIMARY KEY,
nombre VARCHAR(40)NOT NULL,
tipo VARCHAR(50) NOT NULL,
descripcion VARCHAR(20)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE MercanciaPersonaje
(
idMercanciaPersonaje SERIAL PRIMARY KEY,
idMercancia INT NOT NULL,
idPersonaje INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE Minijuego
(
idMinijuego SERIAL PRIMARY KEY,
nombre VARCHAR(20)NOT NULL,
arcade VARCHAR(40) NOT NULL,
descripcion VARCHAR(30)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idJugador int not null,
idContrareloj int not null
);
CREATE TABLE ModoDeJuego
(
idModoDeJuego SERIAL PRIMARY KEY,
nombre VARCHAR(10)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
individual VARCHAR(10)NOT NULL,
multijugador VARCHAR(10)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idJugador int not null
);
CREATE TABLE ModoDeJuegoJugador
(
idModoDeJuegoJugador SERIAL PRIMARY KEY,
idModoDeJuego INT NOT NULL,
idJugador INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);	
CREATE TABLE Mundo
(
idMundo SERIAL PRIMARY KEY,
nombre VARCHAR(20)NOT NULL,
epoca VARCHAR(20)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idJugador int not null,
idMenu int not null
);
CREATE TABLE Musica
(
idMusica SERIAL PRIMARY KEY,
nombre VARCHAR(30)NOT NULL,
genero VARCHAR(10) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idJugador int not null
);
CREATE TABLE Personaje
(
idPersonaje SERIAL PRIMARY KEY,
nombre VARCHAR(40)NOT NULL,
especie VARCHAR(30) NOT NULL,
arco VARCHAR(20)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idJugador int not null,
idHistoria int not null
);
CREATE TABLE Plataforma
(
idPlataforma SERIAL PRIMARY KEY,
nombre VARCHAR(40)NOT NULL,
tipo VARCHAR(30)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idMundo int not null
);
CREATE TABLE Poder
(
idPoder SERIAL PRIMARY KEY,
nombre VARCHAR(20)NOT NULL,
tipo VARCHAR(30)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idPersonaje int not null
);
CREATE TABLE Portal
(
idPortal SERIAL PRIMARY KEY,
nombre VARCHAR(30)NOT NULL,
tipo VARCHAR(20) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idMundo int not null
);
CREATE TABLE PortalMundo
(
idPortalMundo SERIAL PRIMARY KEY,
idPortal INT NOT NULL,
idMundo INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE PuntoDeControl
(
idPuntoDeControl SERIAL PRIMARY KEY,
nombre VARCHAR(50)NOT NULL,
guardado VARCHAR(50) NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idZona int not null
);
CREATE TABLE PuntoDeControlZona
(
idPuntoDeControlZona SERIAL PRIMARY KEY,
idPuntoDeControl INT NOT NULL,
idZona INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);	
CREATE TABLE Ring
(
idRing SERIAL PRIMARY KEY,
nombre VARCHAR(20)NOT NULL,
color VARCHAR(20)NOT NULL,
tipo VARCHAR(20)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE RingZona
(
idRingZona SERIAL PRIMARY KEY,
idRing INT NOT NULL,
idZona INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE Ruta
(
idRuta SERIAL PRIMARY KEY,
tipo VARCHAR(50)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idZona int not null
);
CREATE TABLE RutaZona
(
idRutaZona SERIAL PRIMARY KEY,
idRuta INT NOT NULL,
idZona INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);		
CREATE TABLE Saga
(
idSaga SERIAL PRIMARY KEY,
nombre VARCHAR(50)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idJugador int not null
);
CREATE TABLE SagaJugador
(
idSagaJugador SERIAL PRIMARY KEY,
idSaga INT NOT NULL,
idJugador INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE Serie
(
idSerie SERIAL PRIMARY KEY,
nombre VARCHAR(30)NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idSaga int not null
);
CREATE TABLE SerieSaga
(
idSerieSaga SERIAL PRIMARY KEY,
idSerie INT NOT NULL,
idSaga INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);		
CREATE TABLE Team
(
idTeam SERIAL PRIMARY KEY,
nombre VARCHAR(30)NOT NULL,
descripcion VARCHAR(40)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idPersonaje int not null
);
CREATE TABLE TeamPersonaje
(
idTeamPersonaje SERIAL PRIMARY KEY,
idTeam INT NOT NULL,
idPersonaje INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE Tiempo
(
idTiempo SERIAL PRIMARY KEY,
cantidad INT NOT NULL,
descripcion VARCHAR(20)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idZona int not null
);
CREATE TABLE Trampa
(
idTrampa SERIAL PRIMARY KEY,
nombre VARCHAR(30)NOT NULL,
tipo VARCHAR(30)NOT NULL,
descripcion VARCHAR(30) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idZona int not null
);
CREATE TABLE Vida
(
idVida SERIAL PRIMARY KEY,
nombre VARCHAR(20)NOT NULL,
cantidad INT NOT NULL,
descripcion VARCHAR(20)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE VidaPersonaje
(
idVidaPersonaje SERIAL PRIMARY KEY,
idVida INT NOT NULL,
idPersonaje INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);		
CREATE TABLE Zona
(
idZona SERIAL PRIMARY KEY,
nombre VARCHAR(50)NOT NULL,
tipo VARCHAR(20)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
nivel INT NOT NULL,
descripcion VARCHAR(50)NOT NULL,
idMundo int not null,
idFinal int not null,
idRing int not null,
idEra int not null,
idEscena int not null,
idBandaSonora int not null,
idEsmeralda int not null
);
CREATE TABLE ZonaEspecial
(
idZonaEspecial SERIAL PRIMARY KEY,
nombre VARCHAR(30)NOT NULL,
tipo VARCHAR(20)NOT NULL,
nivel INT NOT NULL,
descripcion VARCHAR(50)NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE,
idMundo int not null
);
CREATE TABLE ZonaEspecialMundo
(
idZonaEspecialMundo SERIAL PRIMARY KEY,
idZonaEspecial INT NOT NULL,
idMundo INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);	
CREATE TABLE ZonaMundo
(
idZonaMundo SERIAL PRIMARY KEY,
idZona INT NOT NULL,
idMundo INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);




-----------------------------------------FOREIGN KEY----------------------------------------
ALTER TABLE Avatar ADD CONSTRAINT fk_AvatarJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
ALTER TABLE Animal ADD CONSTRAINT fk_AnimalZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE Amigo ADD CONSTRAINT fk_AmigoJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
ALTER TABLE Aliado ADD CONSTRAINT fk_AliadoPersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje);
ALTER TABLE Acto ADD CONSTRAINT fk_ActoZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE Bucle ADD CONSTRAINT fk_BucleZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE Comic ADD CONSTRAINT fk_ComicSaga FOREIGN KEY (idSaga) REFERENCES Saga (idSaga);
ALTER TABLE Competencia ADD CONSTRAINT fk_CompetenciaJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
ALTER TABLE CajaDeObjeto ADD CONSTRAINT fk_CajaDeObjetoZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE Colaboracion ADD CONSTRAINT fk_ColaboracionPersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje);
ALTER TABLE Defensa ADD CONSTRAINT fk_DefensaPersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje);
ALTER TABLE Dimension ADD CONSTRAINT fk_DimensionMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo);
ALTER TABLE DispositivoDeEntrada ADD CONSTRAINT fk_DispositivoDeEntradaJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
ALTER TABLE Enemigo ADD CONSTRAINT fk_EnemigoZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE Escudo ADD CONSTRAINT fk_EscudoPersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje);
ALTER TABLE EstiloVisual ADD CONSTRAINT fk_EstiloVisualMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo);
ALTER TABLE Escenario ADD CONSTRAINT fk_EscenarioMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo);
ALTER TABLE Extra  ADD CONSTRAINT fk_ExtraJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
ALTER TABLE GameCenter ADD CONSTRAINT fk_GameCenterJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
ALTER TABLE Gema ADD CONSTRAINT fk_GemaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE Habilidad ADD CONSTRAINT fk_HabilidadPersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje);
ALTER TABLE Jefe ADD CONSTRAINT fk_JefeZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE ModoDeJuego ADD CONSTRAINT fk_ModoDeJuegoJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
ALTER TABLE Mundo ADD CONSTRAINT fk_MundoJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
ALTER TABLE Musica ADD CONSTRAINT fk_MusicaJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
ALTER TABLE Menu ADD CONSTRAINT fk_MenuJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
ALTER TABLE MiniJuego ADD CONSTRAINT fk_MiniJuegoJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
ALTER TABLE MiniJuego ADD CONSTRAINT fk_MiniJuegoContrareloj FOREIGN KEY (idContrareloj) REFERENCES Contrareloj (idContrareloj);
ALTER TABLE Marcador ADD CONSTRAINT Fk_MarcadorJugador FOREIGN KEY (idjugador) REFERENCES Jugador(idJugador);
ALTER TABLE Personaje ADD CONSTRAINT fk_PersonajeJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
ALTER TABLE Personaje ADD CONSTRAINT fk_PersonajeHistoria FOREIGN KEY (idHistoria) REFERENCES Historia (idHistoria);
ALTER TABLE Poder ADD CONSTRAINT fk_PoderPersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje);
ALTER TABLE Portal ADD CONSTRAINT fk_PortalMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo);
ALTER TABLE PuntoDeControl ADD CONSTRAINT fk_PuntoDeControlZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE Plataforma ADD CONSTRAINT fk_PlataformaMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo);
ALTER TABLE Ruta ADD CONSTRAINT fk_RutaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE Saga ADD CONSTRAINT fk_SagaJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
ALTER TABLE Serie ADD CONSTRAINT fk_SerieSaga FOREIGN KEY (idSaga) REFERENCES Saga (idSaga);
ALTER TABLE Tiempo ADD CONSTRAINT fk_TiempoZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE Team ADD CONSTRAINT fk_TeamPersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje);
ALTER TABLE Trampa ADD CONSTRAINT fk_TrampaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE Zona ADD CONSTRAINT fk_ZonaMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo);
ALTER TABLE Zona ADD CONSTRAINT fk_ZonaRing FOREIGN KEY (idRing) REFERENCES Ring (idRing);
ALTER TABLE Zona ADD CONSTRAINT fk_ZonaEra FOREIGN KEY (idEra) REFERENCES Era (idEra);
ALTER TABLE Zona ADD CONSTRAINT fk_ZonaEscena FOREIGN KEY (idEscena) REFERENCES Escena (idEscena);
ALTER TABLE zona  ADD CONSTRAINT fk_zonaBandaSonora FOREIGN KEY (idBandaSonora) REFERENCES BandaSonora (idBandaSonora);
ALTER TABLE Zona ADD CONSTRAINT fk_zonaEsmeralda FOREIGN KEY (idEsmeralda) REFERENCES Esmeralda (idEsmeralda);
ALTER TABLE Zona ADD CONSTRAINT fk_zonaFinal FOREIGN KEY (idFinal) REFERENCES Final (idFinal);
ALTER TABLE ZonaEspecial ADD CONSTRAINT fk_ZonaEspecialMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo);
ALTER TABLE BandaSonoraZona ADD CONSTRAINT fk_BandaSonoraZonaBandaSonora FOREIGN KEY (idBandaSonora) REFERENCES BandaSonora (idBandaSonora);
ALTER TABLE BandaSonoraZona ADD CONSTRAINT fk_BandaSonoraZonaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE ConfiguracionJugador ADD CONSTRAINT fk_ConfiguracionJugadorConfiguracion FOREIGN KEY (idConfiguracion) REFERENCES Configuracion (idConfiguracion);
ALTER TABLE ConfiguracionJugador ADD CONSTRAINT fk_ConfiguracionJugadorJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
ALTER TABLE EsmeraldaZona ADD CONSTRAINT fk_EsmeraldaZonaEsmeralda FOREIGN KEY (idEsmeralda) REFERENCES Esmeralda (idEsmeralda);
ALTER TABLE EsmeraldaZona ADD CONSTRAINT fk_EsmeraldaZonaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE EscenaZona ADD CONSTRAINT fk_EscenaZonaEscena FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE FinalZona ADD CONSTRAINT fk_FinalZonaFinal FOREIGN KEY (idFinal) REFERENCES Final (idFinal);
ALTER TABLE FinalZona ADD CONSTRAINT fk_FinalZonaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE GemaZona ADD CONSTRAINT fk_GemaZonaGema FOREIGN KEY (idGema) REFERENCES Gema (idGema);
ALTER TABLE GemaZona ADD CONSTRAINT fk_GemaZonaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE JefeZona ADD CONSTRAINT fk_JefeZonaJefe FOREIGN KEY (idJefe) REFERENCES Jefe (idJefe);
ALTER TABLE JefeZona ADD CONSTRAINT fk_JefeZonaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE MercanciaPersonaje ADD CONSTRAINT fk_MercanciaPersonajeMercancia FOREIGN KEY (idMercancia) REFERENCES Mercancia (idMercancia);
ALTER TABLE MercanciaPersonaje ADD CONSTRAINT fk_MercanciaPersonajePersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje);
ALTER TABLE ModoDeJuegoJugador ADD CONSTRAINT fk_ModoDeJuegoJugadorModoDeJuego FOREIGN KEY (idModoDeJuego) REFERENCES ModoDeJuego (idModoDeJuego);
ALTER TABLE ModoDeJuegoJugador ADD CONSTRAINT fk_ModoDeJuegoJugadorMJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
ALTER TABLE PortalMundo ADD CONSTRAINT fk_PortalMundoPortal FOREIGN KEY (idPortal) REFERENCES Portal (idPortal);
ALTER TABLE PortalMundo ADD CONSTRAINT fk_PortalMundoMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo);
ALTER TABLE PuntoDeControlZona ADD CONSTRAINT fk_PuntoDeControlZonaPuntoDeControl FOREIGN KEY (idPuntoDeControl) REFERENCES PuntoDeControl (idPuntoDeControl);
ALTER TABLE PuntoDeControlZona ADD CONSTRAINT fk_PuntoDeControlZonaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE RingZona ADD CONSTRAINT fk_RingZonaRing FOREIGN KEY (idRing) REFERENCES Ring (idRing);
ALTER TABLE RingZona ADD CONSTRAINT fk_RingZonaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE RutaZona ADD CONSTRAINT fk_RutaZonaRuta FOREIGN KEY (idRuta) REFERENCES Ruta (idRuta);
ALTER TABLE RutaZona ADD CONSTRAINT fk_RutaZonaZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE SagaJugador ADD CONSTRAINT fk_SagaJugadorSaga FOREIGN KEY (idSaga) REFERENCES Saga (idSaga);
ALTER TABLE SagaJugador ADD CONSTRAINT fk_SagaJugadorJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
ALTER TABLE SerieSaga ADD CONSTRAINT fk_SerieSagaSerie FOREIGN KEY (idSerie) REFERENCES Serie (idSerie);
ALTER TABLE SerieSaga ADD CONSTRAINT fk_SerieSagaSaga FOREIGN KEY (idSaga) REFERENCES Saga (idSaga);
ALTER TABLE TeamPersonaje ADD CONSTRAINT fk_TeamPersonajeTeam FOREIGN KEY (idTeam) REFERENCES Team (idTeam);
ALTER TABLE TeamPersonaje ADD CONSTRAINT fk_TeamPersonajePersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje);
ALTER TABLE VidaPersonaje ADD CONSTRAINT fk_VidaPersonajeVida FOREIGN KEY (idVida) REFERENCES Vida (idVida);
ALTER TABLE VidaPersonaje ADD CONSTRAINT fk_VidaPersonajePersonaje FOREIGN KEY (idPersonaje) REFERENCES Personaje (idPersonaje);
ALTER TABLE ZonaMundo ADD CONSTRAINT fk_ZonaMundoZona FOREIGN KEY (idZona) REFERENCES Zona (idZona);
ALTER TABLE ZonaMundo ADD CONSTRAINT fk_ZonaMundoMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo);
ALTER TABLE ZonaEspecialMundo ADD CONSTRAINT fk_ZonaEspecialMundoMundo FOREIGN KEY (idMundo) REFERENCES Mundo (idMundo);
ALTER TABLE ZonaEspecialMundo ADD CONSTRAINT fk_ZonaEspecialMundoZonaEspecial FOREIGN KEY (idZonaEspecial) REFERENCES ZonaEspecial (idZonaEspecial);

---------------------------------------INDEX--------------------------
CREATE INDEX IX_Avatar ON Avatar(idAvatar);
CREATE INDEX IX_Animal ON Animal(idAnimal);
CREATE INDEX IX_Amigo ON Amigo(idAmigo);
CREATE INDEX IX_Aliado ON Aliado(idAliado);
CREATE INDEX IX_Acto ON Acto(idActo);
CREATE INDEX IX_Bucle ON Bucle(idBucle);
CREATE INDEX IX_BandaSonora ON BandaSonora(idBandaSonora);
CREATE INDEX IX_Contrareloj ON Contrareloj(idContrareloj);
CREATE INDEX IX_Configuracion ON Configuracion(idConfiguracion);
CREATE INDEX IX_Comic ON Comic(idComic);
CREATE INDEX IX_Competencia ON Competencia(idCompetencia);
CREATE INDEX IX_CajaDeObjeto ON CajaDeObjeto(idCajaDeObjeto);
CREATE INDEX IX_Colaboracion ON Colaboracion(idColaboracion);
CREATE INDEX IX_Defensa ON Defensa(idDefensa);
CREATE INDEX IX_Dimension ON Dimension(idDimension);
CREATE INDEX IX_DispositivoDeEntrada ON DispositivoDeEntrada(idDispositivoDeEntrada);
CREATE INDEX IX_Esmeralda ON Esmeralda(idEsmeralda);
CREATE INDEX IX_Enemigo ON Enemigo(idEnemigo);
CREATE INDEX IX_Escudo ON Escudo(idEscudo);
CREATE INDEX IX_EstiloVisual ON EstiloVisual(idEstiloVisual);
CREATE INDEX IX_Escena ON Escena(idEscena);
CREATE INDEX IX_Escenario ON Escenario(idEscenario);
CREATE INDEX IX_Era ON Era(idEra);
CREATE INDEX IX_Extra ON Extra(idExtra);
CREATE INDEX IX_Final ON Final(idFinal);
CREATE INDEX IX_Gema ON Gema(idGema);
CREATE INDEX IX_GameCenter ON GameCenter(idGameCenter);
CREATE INDEX IX_Historia ON Historia(idHistoria);
CREATE INDEX IX_Habilidad ON Habilidad(idHabilidad);
CREATE INDEX IX_Jugador ON Jugador(idJugador);
CREATE INDEX IX_Jefe ON Jefe(idJefe);
CREATE INDEX IX_Mundo ON Mundo(idMundo);
CREATE INDEX IX_Musica ON Musica(idMusica);
CREATE INDEX IX_Menu ON Menu(idMenu);
CREATE INDEX IX_MiniJuego ON MiniJuego(idMiniJuego);
CREATE INDEX IX_Marcador ON Marcador(idMarcador);
CREATE INDEX IX_Mercancia ON Mercancia(idMercancia);
CREATE INDEX IX_ModoDeJuego ON ModoDeJuego(idModoDeJuego);
CREATE INDEX IX_Personaje ON Personaje(idPersonaje);
CREATE INDEX IX_Poder ON Poder(idPoder);
CREATE INDEX IX_Portal ON Portal(idPortal);
CREATE INDEX IX_Plataforma ON Plataforma(idPlataforma);
CREATE INDEX IX_PuntoDeControl ON PuntoDeControl(idPuntoDeControl);
CREATE INDEX IX_Ring ON Ring(idRing);
CREATE INDEX IX_Ruta ON Ruta(idRuta);
CREATE INDEX IX_Saga ON Saga(idSaga);
CREATE INDEX IX_Serie ON Serie(idSerie);
CREATE INDEX IX_Team ON Team(idTeam);
CREATE INDEX IX_Trampa ON Trampa(idTrampa);
CREATE INDEX IX_Tiempo ON Tiempo(idTiempo);
CREATE INDEX IX_Vida ON Vida(idVida);
CREATE INDEX IX_Zona ON Zona(idZona);
CREATE INDEX IX_ZonaEspecial ON ZonaEspecial(idZonaEspecial);
CREATE INDEX IX_BandaSonoraZona ON BandaSonoraZona(idBandaSonoraZona);
CREATE INDEX IX_ConfiguracionJugador ON ConfiguracionJugador(idConfiguracionJugador);
CREATE INDEX IX_EsmeraldaZona ON EsmeraldaZona(idEsmeraldaZona);
CREATE INDEX IX_EscenaZona ON EscenaZona(idEscenaZona);
CREATE INDEX IX_FinalZona ON FinalZona(idFinalZona);
CREATE INDEX IX_GemaZona ON GemaZona(idGemaZona);
CREATE INDEX IX_JefeZona ON JefeZona(idJefeZona);
CREATE INDEX IX_MercanciaPersonaje ON MercanciaPersonaje(idMercanciaPersonaje);
CREATE INDEX IX_ModoDeJuegoJugador ON ModoDeJuegoJugador(idModoDeJuegoJugador);
CREATE INDEX IX_PortalMundo ON PortalMundo(idPortalMundo);
CREATE INDEX IX_PuntoDeControlZona ON PuntoDeControlZona(idPuntoDeControlZona);
CREATE INDEX IX_RingZona ON RingZona(idRingZona);
CREATE INDEX IX_RutaZona ON RutaZona(idRutaZona);
CREATE INDEX IX_SagaJugador ON SagaJugador(idSagaJugador);
CREATE INDEX IX_SerieSaga ON SerieSaga(idSerieSaga);
CREATE INDEX IX_TeamPersonaje ON TeamPersonaje(idTeamPersonaje);
CREATE INDEX IX_VidaPersonaje ON VidaPersonaje(idVidaPersonaje);
CREATE INDEX IX_ZonaMundo ON ZonaMundo(idZonaMundo);
CREATE INDEX IX_ZonaEspecialMundo ON ZonaEspecialMundo(idZonaEspecialMundo);


INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Palmtree Panic G Mix', 'Clasica', 'partida1');
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Collision Chaos', 'Clasica', 'partida2');
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Tidal Tempest G Mix', 'Clasica', 'partida3');
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Quartz Quadrant', 'Clasica', 'partida4');
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Wacky Workbench G Mix', 'Clasica', 'partida5');
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Stardust Speedway', 'Clasica', 'partida6');
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Metallic Madness G Mix', 'Clasica', 'partida7');
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Boss!!', 'Clasica', 'partida8');
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Special Stage', 'Clasica', 'partida9');
INSERT INTO BandaSonora (nombre, tipo, descripcion) VALUES ('Final Fever', 'Clasica', 'partida10');
UPDATE BandaSonora SET nombre = 'Palmtree Panic G Mix' WHERE idBandaSonora = '2';
DELETE FROM BandaSonora WHERE idBandaSonora = 1;
SELECT * FROM BandaSonora;

INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('botonA', 'Fisica', 'Alambrico', 'Mando');
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES (' botonB', 'Fisica', 'Alambrico', 'Mando');
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('botonY', 'Fisica', 'Alambrico', 'Mando');
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('botonX', 'Fisica', 'Alambrico', 'Mando');
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('Desplazar', 'Fisica', 'Alambrico','Teclado' );
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('Back', 'Fisica', 'Alambrico', 'Teclado');
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('Detener', 'Fisica', 'Alambrico', 'Teclado');
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('Pause', 'Fisica', 'Alambrico', 'Teclado');
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('Omitir', 'Fisica', 'Alambrico', 'Teclado');
INSERT INTO Configuracion (controles, partes, propiedades, descripcion) VALUES ('Repetir', 'Fisica', 'Alambrico', 'Teclado');
UPDATE Configuracion SET controles = 'botonA' WHERE idConfiguracion = '2';
DELETE FROM Configuracion WHERE idConfiguracion = 1;
SELECT * FROM Configuracion;

INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('minutos', 'Temporizador', 'Restableciendo Tiempo');
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('segundos', 'Temporizador', 'Inicio De Tiempo');
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('segundos', 'Temporizador', 'Inicio De Los 10 segundos');
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('segundos', 'Temporizador', 'Medio Tiempo');
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('minutos', 'Temporizador', 'Conteo del primer minuto');
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('minuto', 'Temporizador', 'Conteo del segundo minuto');
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('minuto y segundos', 'Temporizador', 'Alerta de parpadeo de tiempo');
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('minutos', 'Temporizador', 'Pierde Una Vida causando que se reinicie el acto');
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('minutosegundo', 'Temporizador', 'Indica ser mas veloz');
INSERT INTO Contrareloj (limite, nombre, descripcion) VALUES ('minutos', 'Temporizador', 'Fin del contrareloj y posible game over');
UPDATE Contrareloj SET limite = 'minutos' WHERE idContrareloj = '2';
DELETE FROM Contrareloj WHERE idContrareloj = 1;
SELECT * FROM Contrareloj;

INSERT INTO Era (nombre, tipo, descripcion) VALUES ('Classic', 'old', 'sonicG');
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('classic', 'old', 'sonic2');
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('dreamcast', 'dream', 'sonicG');
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('dreamcast', 'dream', 'sonicAd2');
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('DarkAge', 'dark', 'Sonic06');
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('DarkAge', 'dark', 'ShadowTH');
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('Modern', 'new', 'SonicG');
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('Modern', 'new', 'LostWorld');
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('Modern', 'actual', 'SonicForce');
INSERT INTO Era (nombre, tipo, descripcion) VALUES ('Modern', 'actual', 'Infinite');
UPDATE Era SET nombre = 'Modern' WHERE idEra = '2';
DELETE FROM Era WHERE idEra = 1;
SELECT * FROM Era;

INSERT INTO Escena (nombre, descripcion) VALUES ('Tittle', 'cinematica del titulo');
INSERT INTO Escena (nombre, descripcion) VALUES ('intro', 'corta animacion');
INSERT INTO Escena (nombre, descripcion) VALUES ('opening', 'escena con musica');
INSERT INTO Escena (nombre, descripcion) VALUES ('Trama', 'momento dramatico');
INSERT INTO Escena (nombre, descripcion) VALUES ('Characters', 'presentacion de los personajes');
INSERT INTO Escena (nombre, descripcion) VALUES ('Fight', 'pelea entre protagonista y villano');
INSERT INTO Escena (nombre, descripcion) VALUES ('Winner', 'ganador de la batalla');
INSERT INTO Escena (nombre, descripcion) VALUES ('End', 'contexto con happy ending');
INSERT INTO Escena (nombre, descripcion) VALUES ('Credits', 'animacion corta en los creditos');
INSERT INTO Escena (nombre, descripcion) VALUES ('PostCredits', 'pequeña cinematica al terminar los creditos');
UPDATE Escena SET nombre = 'Tittle' WHERE idEscena = '2';
DELETE FROM Escena WHERE idEscena = 1;
SELECT * FROM Escena;

INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Rojo', 'Chaos', 'Super Transformacion');
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Morado', 'Chaos', 'Energia');
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Celeste', 'Chaos', 'Ritual');
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Plateada', 'Chaos', 'Revivir');
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Verde', 'Chaos', 'Flotar');
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Amarillo', 'Chaos', 'Vision');
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Azul', 'Chaos', 'Invulnerabilidad');
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Rojo', 'Sol', 'Transferir');
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Azul', 'Sol', 'Indestructible');
INSERT INTO Esmeralda (nombre, color, tipo, descripcion) VALUES ('Esmerald', 'Verde', 'Master', 'Energia');
UPDATE Esmeralda SET nombre = 'Esmerald' WHERE idEsmeralda = '2';
DELETE FROM Esmeralda WHERE idEsmeralda = 1;
SELECT * FROM Esmeralda;

INSERT INTO Final (nombre, descripcion) VALUES ('Pure Dark', 'Hero');
INSERT INTO Final (nombre, descripcion) VALUES ('Pure Dark', 'Dark');
INSERT INTO Final (nombre, descripcion) VALUES ('Neutral Dark', 'Dark');
INSERT INTO Final (nombre, descripcion) VALUES ('Neutral Dark', 'Hero');
INSERT INTO Final (nombre, descripcion) VALUES ('Neutral', 'Dark');
INSERT INTO Final (nombre, descripcion) VALUES ('Neutral', 'Hero');
INSERT INTO Final (nombre, descripcion) VALUES ('Neutral Hero', 'Dark');
INSERT INTO Final (nombre, descripcion) VALUES ('Neutral Hero', 'Hero');
INSERT INTO Final (nombre, descripcion) VALUES ('Pure Hero', 'Dark');
INSERT INTO Final (nombre, descripcion) VALUES ('Pure Hero', 'Hero');
UPDATE Final SET nombre = 'Pure Dark' WHERE idFinal = '2';
DELETE FROM Final WHERE idFinal = 1;
SELECT * FROM Final;

INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeSonic', 'Pasado', 'PasadoDelProtagonista');
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeShadow', 'Tragico', 'TragicoDestino');
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeEggman', 'Violento', 'ViolentoPasado');
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeAmy', 'Feliz', 'FelizPasado');
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeBlaze', 'Desastre', 'PasadoDesastrozo');
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeSilver', 'Apocalipsis', 'PasadoApocaliptico');
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeKnuckles', 'Neutral', 'PasadoNeutral');
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeTikal', 'Triste', 'PasadoTriste');
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeRouge', 'Intriga', 'PasadoConIntriga');
INSERT INTO Historia (nombre, suceso, descripcion) VALUES ('HistoriaDeTails', 'Empatico', 'PasadoEmpatico');
UPDATE Historia SET nombre = 'HistoriaDeSonic' WHERE idHistoria  = '2';
DELETE FROM Historia WHERE idHistoria = 1;
SELECT * FROM Historia;

INSERT INTO Jugador (nombre) VALUES ('Sonia');
INSERT INTO Jugador (nombre) VALUES ('Tere');
INSERT INTO Jugador (nombre) VALUES ('Karol');
INSERT INTO Jugador (nombre) VALUES ('Rodrigo');
INSERT INTO Jugador (nombre) VALUES ('Andy');
INSERT INTO Jugador (nombre) VALUES ('Cesar');
INSERT INTO Jugador (nombre) VALUES ('Brianna');
INSERT INTO Jugador (nombre) VALUES ('Diego');
INSERT INTO Jugador (nombre) VALUES ('Jose');
INSERT INTO Jugador (nombre) VALUES ('Emily');
UPDATE Jugador SET nombre = 'Sonia' WHERE idJugador  = '2';
DELETE FROM Jugador WHERE idJugador  = 1;
SELECT * FROM Jugador;

INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Arete', 'Accesorio', 'personalizado');
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Gorra', 'Accesorio', 'personalizado');
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Carcasa', 'Accesorio', 'Personalizado');
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Poster', 'Decoracion', 'Vista');
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Lampara', 'Decoracion', 'Vista');
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Cuadro', 'Decoracion', 'Vista');
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Sudadera', 'Vestuario', 'Atuendo');
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Playera', 'Vestuario', 'Atuendo');
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Peluche', 'Juguete', 'entretenimiento');
INSERT INTO Mercancia (nombre, tipo, descripcion) VALUES ('Figura', 'Juguete', 'entretenimiento');
UPDATE Mercancia SET nombre = 'Arete' WHERE idMercancia   = '2';
DELETE FROM Mercancia WHERE idMercancia  = 1;
SELECT * FROM Mercancia;

INSERT INTO Ring (nombre, color, tipo) VALUES ('SuperRing', 'Amarillo', 'Super');
INSERT INTO Ring (nombre, color, tipo) VALUES ('GiantRing', 'Amarillo', 'Giant');
INSERT INTO Ring (nombre, color, tipo) VALUES ('DarkRing', 'Marron', 'Dark');
INSERT INTO Ring (nombre, color, tipo) VALUES ('GoalRing', 'Amarillo', 'Goal');
INSERT INTO Ring (nombre, color, tipo) VALUES ('GhostRing', 'Transparente', 'Ghost');
INSERT INTO Ring (nombre, color, tipo) VALUES ('ChaosRing', 'Multicolor', 'Chaos');
INSERT INTO Ring (nombre, color, tipo) VALUES ('WorldRing', 'MultiColor', 'World');
INSERT INTO Ring (nombre, color, tipo) VALUES ('InhibitorRing', 'Dorado', 'Ihnibitor');
INSERT INTO Ring (nombre, color, tipo) VALUES ('RedStarRing', 'Rojo', 'RedStar');
INSERT INTO Ring (nombre, color, tipo) VALUES ('MobiusRing', 'Amarillo', 'Mobius');
UPDATE Ring SET nombre = 'SuperRing' WHERE idRing   = '2';
DELETE FROM Ring WHERE idRing  = 1;
SELECT * FROM Ring;

INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX1', '1', 'Primer Vida');
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX2', '2', 'Segunda Vida');
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX3', '3', 'Tercer Vida');
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX4', '4', 'Cuarta Vida');
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX5', '5', 'Quinta Vida');
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX6', '6', 'Sexta Vida');
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX7', '7', 'Septima Vida');
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX8', '8', 'Octava Vida');
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX9', '9', 'Novena Vida');
INSERT INTO Vida (nombre, cantidad, descripcion) VALUES ('LifeX10', '10', 'Decima Vida');
UPDATE Vida SET nombre = 'LifeX1' WHERE idVida   = '2';
DELETE FROM Vida WHERE idVida  = 1;
SELECT * FROM Vida;

INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Alondra','Online', 2);
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Ana', 'Online', 3);
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Sonia', 'Online', 4);
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Ricardo', 'Online', 5);
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Lauro', 'Online', 6);
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Jose', 'Online', 7);
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Alejandro', 'Online', 8);
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Jhony', 'Online', 8);
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Yulma', 'Online', 9);
INSERT INTO Amigo (nombre,descripcion, idJugador) VALUES ('Fatima', 'Online', 10);
UPDATE Amigo SET nombre = 'Alondra' WHERE idAmigo  = '2';
DELETE FROM Amigo  WHERE idAmigo  = 1;
SELECT * FROM Amigo;

INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre1','zorro', 2);
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre2', 'erizo', 3);
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre3', 'cocodrilo', 4);
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre4', 'abeja', 5);
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre5', 'equidna', 6);
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre6', 'murcielago', 7);
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre7', 'camaleon', 8);
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre8', 'gato', 8);
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre9', 'oso', 9);
INSERT INTO Avatar (nombre,especie, idJugador) VALUES ('nombre10', 'pajaro', 10);
UPDATE Avatar SET nombre = 'nombre1' WHERE idAvatar  = '2';
DELETE FROM Avatar  WHERE idAvatar  = 1;
SELECT * FROM Avatar;

INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia1','actividad1', 'reto1', 'juego1', 2);
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia2','actividad2', 'reto2', 'juego2', 3);
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia3','actividad3', 'reto3', 'juego3',  4);
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia4','actividad4', 'reto4', 'juego4', 5);
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia5','actividad5', 'reto5','juego5', 6);
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia6','actividad6', 'reto6','juego6', 7);
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia7','actividad7', 'reto7', 'juego7',8);
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia8','actividad8', 'reto8','juego8', 9);
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia9','actividad9', 'reto9','juego9', 10);
INSERT INTO Competencia (nombre, actividad, reto,descripcion, idJugador) VALUES ('Competencia10','actividad10', 'reto10','juego10', 3);
UPDATE Competencia SET nombre = 'Competencia1' WHERE idCompetencia = '2';
DELETE FROM Competencia WHERE idCompetencia = 1;
SELECT * FROM Competencia;

INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando1','Modelo1', 'fisico', 2);
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando2','Modelo2', 'alambrico', 3);
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando3','Modelo3', 'inalambrico', 4);
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando4','Modelo4', 'tactil', 5);
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando5','Modelo5', 'fisico', 6);
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando6','Modelo6', 'alambrico', 7);
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando7','Modelo7', 'inalambrico', 8);
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando8','Modelo8', 'tactil', 9);
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando9','Modelo9', 'fisico', 10);
INSERT INTO DispositivoDeEntrada(nombre, modelo, descripcion, idJugador) VALUES ('Mando10','Modelo10', 'alambrico', 3);
UPDATE DispositivoDeEntrada SET nombre = 'Mando1' WHERE idDispositivoDeEntrada= '2';
DELETE FROM DispositivoDeEntrada WHERE idDispositivoDeEntrada= 1;
SELECT * FROM DispositivoDeEntrada; 

INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra1','codigo1', 'SoundTest', 2);
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra2','codigo2', 'Galeria', 3);
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra3','codigo3', 'Trailer', 4);
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra4','codigo4', 'SoundTest', 5);
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra5','codigo5', 'Galeria', 6);
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra6','codigo6', 'Trailer', 7);
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra7','codigo7', 'SoundTest', 8);
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra8','codigo8', 'Galeria', 9);
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra9','codigo9', 'Trailer', 10);
INSERT INTO Extra(nombre, codigo, descripcion, idJugador) VALUES ('Extra10','codigo10', 'SoundTest', 5);
UPDATE Extra SET nombre = 'Extra1' WHERE idExtra= '2';
DELETE FROM Extra WHERE idExtra= 1;
SELECT * FROM Extra;

INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter1','logro1', 'logro desbloqueado', 2);
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter2','logro2', 'logro desbloqueado', 3);
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter3','logro3', 'logro desbloqueado', 4);
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter4','logro4', 'logro desbloqueado', 5);
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter5','logro5', 'logro bloqueado', 6);
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter6','logro6', 'logro bloqueado', 7);
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter7','logro7', 'logro bloqueado', 8);
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter8','logro8', 'logro bloqueado', 9);
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter9','logro9', 'logro bloqueado', 10);
INSERT INTO GameCenter(nombre, logro, descripcion, idJugador) VALUES ('GameCenter10','logro10', 'logro bloqueado', 3);
UPDATE GameCenter SET nombre = 'GameCenter1' WHERE idGameCenter= '2';
DELETE FROM GameCenter WHERE idGameCenter= 1;
SELECT * FROM GameCenter; 

INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador1','clasificacion1', 'clasificacion alta', 2);
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador2','clasificacion2', 'clasificacion alta', 3);
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador3','clasificacion3', 'clasificacion alta', 4);
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador4','clasificacion4', 'clasificacion media', 5);
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador5','clasificacion5', 'clasificacion media', 6);
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador6','clasificacion6', 'clasificacion media', 7);
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador7','clasificacion7', 'clasificacion baja', 8);
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador8','clasificacion8', 'clasificacion baja', 9);
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador9','clasificacion9', 'clasificacion baja', 10);
INSERT INTO Marcador(nombre, clasificacion, descripcion, idJugador) VALUES ('Marcador10','clasificacion10', 'clasificacion muy baja', 2);
UPDATE Marcador SET nombre = 'Marcador1' WHERE idMarcador= '2';
DELETE FROM Marcador WHERE idMarcador= 1;
SELECT * FROM Marcador;

INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones1', 'como se juega', 2);
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones2', 'controles', 3);
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones3', 'instrucciones del juego', 4);
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones4', 'sonido', 5);
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones5', 'tutorial', 6);
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones6', 'idioma', 7);
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones7', 'modo de visualizacion', 8);
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones8', 'conexion', 9);
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones9', 'informacion', 10);
INSERT INTO Menu(nombre, ayudayopciones, descripcion, idJugador) VALUES ('Menu','ayudayopciones10', 'creditos', 4);
UPDATE Menu SET nombre = 'Menu' WHERE idMenu= '2';
DELETE FROM Menu WHERE idMenu= 1;
SELECT * FROM Menu;

INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade1', 'SegaSonicPopcornShop', 2,2);
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade2', 'SegaSonicTheHedgehog', 3,3);
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade3', 'instrucciones del juego', 4,4);
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade4', 'SonicAthletics', 5,5);
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade5', 'SonicLive', 6,6);
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade6', 'SonicCD', 7,7);
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade7', 'SonicTheFighters', 8,8);
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade8', 'SonicPatrolCar', 9,8);
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade9', 'SonicTheHedgehog2', 10,10);
INSERT INTO Minijuego(nombre, arcade, descripcion, idJugador, idContrareloj) VALUES ('Minijuego','arcade10', 'SonicMania', 2,3);
UPDATE Minijuego SET nombre = 'Minijuego' WHERE idMinijuego= '2';
DELETE FROM Minijuego WHERE idMinijuego = 1;
SELECT * FROM Minijuego; 

INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','No','Si', 'DosJugadores', 2);
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','Si','No', 'UnJugador', 3);
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','Si','No', 'UnJugador', 4);
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','No','Si', 'Jugador', 5);
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','No','Si' ,'DosJugadores', 6);
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','Si','No' ,'UnJugador', 7);
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','Si','No', 'UnJugador', 8);
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','No','Si', 'DosJugadores', 9);
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','Si','No', 'UnJugador', 10);
INSERT INTO ModoDeJuego(nombre, individual,multijugador, descripcion, idJugador) VALUES ('ModoGame','No','Si', 'DosJugadores', 8);
UPDATE ModoDeJuego SET nombre = 'ModoGame' WHERE idModoDeJuego= '2';
DELETE FROM ModoDeJuego WHERE idModoDeJuego= 1;
SELECT * FROM ModoDeJuego; 

INSERT INTO Musica(nombre, genero, idJugador) VALUES ('Crush40','rock',2);
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('Crush40','glam rock',3);
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('Crush40','metal',4);
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('Crush40','metal', 5);
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('Crush40','pop rock', 6);
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('SonicR','pop', 7);
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('SonicR','pop', 8);
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('SonicR','pop', 9);
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('JulienK','Rock', 10);
INSERT INTO Musica(nombre, genero, idJugador) VALUES ('BentleyJ', 'pop',2);
UPDATE Musica SET nombre = 'Crush40' WHERE idMusica= '2';
DELETE FROM Musica WHERE idMusica = 1;
SELECT * FROM Musica;

INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','Primera saga',2);
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','Secuela de la primera saga',3);
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','Segunda saga',4);
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','secuela de la segunda saga', 5);
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','tercera saga', 6);
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','cuarta saga', 7);
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','secuela de la cuarta saga', 8);
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','quinta saga', 9);
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga','secuela de la quinta saga', 10);
INSERT INTO Saga(nombre, descripcion, idJugador) VALUES ('Saga1', 'sexta saga',8);
UPDATE Saga SET nombre = 'Saga' WHERE idSaga= '2';
DELETE FROM Saga WHERE idSaga = 1;
SELECT * FROM Saga ;

INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Sonic','erizo','primer','erizo azul',2,2);
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Tails','Zorro', 'primer','zorro amarillo',3,3);
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Knuckles','Equidna','segundo','equidna rojo',4,4);
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Amy','erizo','primero','erizo rosa', 5,5);
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Shadow','erizo','segundo','erizo negro', 6,6);
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Rouge','murcielago','segundo','murcielago blanco', 7,7);
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Omega','robot','segundo','metal negro', 8,8);
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Silver','erizo','tercero','erizo blanco', 9,9);
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Blaze','gato','tercero','gato morado', 10,10);
INSERT INTO Personaje(nombre, especie,arco,descripcion, idJugador,idHistoria) VALUES ('Big', 'gato','segundo','gato morado',9,4);
UPDATE Personaje SET nombre = 'Sonic' WHERE idPersonaje= '2';
DELETE FROM Personaje WHERE idPersonaje = 1;
SELECT * FROM Personaje ;

INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Cream','conejo','conejo cafe',2);
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Tails','Zorro','zorro amarillo',3);
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Knuckles','Equidna','equidna rojo',4);
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Amy','erizo','erizo rosa', 5);
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Shadow','erizo','erizo negro', 6);
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Rouge','murcielago','murcielago blanco',7);
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Omega','robot','metal negro', 8);
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Silver','erizo','erizo blanco', 9);
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Blaze','gato','gato morado', 10);
INSERT INTO Aliado(nombre, especie, descripcion, idPersonaje) VALUES ('Big', 'gato','gato morado', 8);
UPDATE Aliado SET nombre = 'Cream' WHERE idAliado= '2';
DELETE FROM Aliado WHERE idAliado = 1;
SELECT * FROM Aliado ;

INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion1', 'nintendo',2);
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion2', 'Lego',3);
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion3', 'Fall Guys',4);
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion4', 'Pac man',5);
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion5', 'Wreck-It Ralph',6);
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion6', 'OK KO',7);
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion7', 'SambaDeAmigo',8);
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion8', 'Art Alive',9);
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion9', 'OutRunners',7);
INSERT INTO Colaboracion(nombre, descripcion,idPersonaje) VALUES ('Colaboracion10', 'Popful Mail',8);
UPDATE Colaboracion SET nombre = 'Colaboracion1' WHERE idColaboracion = '2';
DELETE FROM Colaboracion WHERE idColaboracion = 1;
SELECT * FROM Colaboracion;

INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic1','Archie','PrimeraEdicion',2);
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic2','IDW','SegundaEdicion',3);
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic3','Fleetway','TerceraEdicion',4);
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic4','Archie','CuartaEdicion',5);
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic5','Archie','QuintaEdicion',6);
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic6','Archie','SextaEdicion',7);
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic7','IDW','SeptimaEdicion',8);
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic8','IDW','OctavaEdicion',9);
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic9','Fleetway','NovenaEdicion',8);
INSERT INTO Comic(nombre,editorial, descripcion, idSaga) VALUES ('Comic10','Fleetway','DecimaEdicion',8);
UPDATE Comic SET nombre = 'Comic1' WHERE idComic= '2';
DELETE FROM Comic WHERE idComic= 1;
SELECT * FROM Comic;

INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa1','media','defensa 50%',2);
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa2', 'alta', 'defensa superior 100%',3);
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa2', 'alta', 'defensa superior 100%',4);
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa4', 'baja', 'defensa 20%', 5);
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa5', 'baja', 'defensa 10%',6);
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa6', 'baja', 'defensa 5%',7);
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa7', 'media', 'defensa 60%',7);
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa8', 'alta', 'defensa superior 100%',8);
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa8', 'alta', 'defensa superior 100%',9);
INSERT INTO Defensa(nombre,fuerza, descripcion, idPersonaje) VALUES ('Defensa9', 'media', 'defensa 70%',9);
UPDATE Defensa SET nombre = 'Defensa1' WHERE idDefensa= '2';
DELETE FROM Defensa WHERE idDefensa= 1;
SELECT * FROM Defensa;

INSERT INTO Escudo (nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Normal','70%', 'proteccion',7);
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Normal','74%', 'proteccion',3);
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Normal','60%', 'proteccion',4);
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Flame','80%', 'proteccion',5);
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Flame','84%', 'proteccion',5);
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Flame','87%', 'proteccion',6);
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Thunder','92%', 'proteccion',7);
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Thunder','94%', 'proteccion',8);
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Aqua','66%', 'proteccion',8);
INSERT INTO Escudo(nombre, tipo, resistencia, descripcion, idPersonaje) VALUES ('Shield','Aqua','60%', 'proteccion',8);
UPDATE Escudo SET nombre = 'Shield' WHERE idEscudo = '2';
DELETE FROM Escudo WHERE idEscudo= 1;
SELECT * FROM Escudo;

INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('spin attack', 'normal', 'ataque directo', 3);
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('jump spin attack', 'normal', 'ataque de salto', 4);
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('spin dash', 'normal', 'ataque giratorio', 5);
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('super peel out', 'normal', 'ataque de impulso', 5);
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('hyper flash attack', 'normal', 'ataque general', 6);
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('blast attack', 'normal', 'ataque desde el aire', 7);
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('homing attack', 'normal', 'ataque desde el aire', 8);
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('light speed dash', 'normal', 'recoleccion de fila de anillos', 7);
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('mystic melody', 'normal', 'interpretar una melodia ', 9);
INSERT INTO Habilidad(nombre,tipo,descripcion,idPersonaje) VALUES ('sonic wind', 'normal', 'creacion de remolino', 9);
UPDATE Habilidad SET nombre = 'spin attack' WHERE idHabilidad = '2';
DELETE FROM Habilidad WHERE idHabilidad = 1;
SELECT * FROM Habilidad;


INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Tierra', '80s', 'planeta tierra ', 2,2);
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Tierra', '90s', 'planeta tierra', 3,3);
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Tierra', '2000', 'planeta tierra', 4,4);
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Tierra', 'actual', 'planeta tierra', 5,5);
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Mobius', 'old', 'planeta mobius', 6,6);
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Mobius', 'retro', 'planeta mobius', 7,7);
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Mobius', 'medieval', 'planeta mobius', 8,8);
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Mobius', 'futurist', 'planeta mobius', 8,9);
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Mobius', 'modern', 'planeta mobius', 9,9);
INSERT INTO Mundo(nombre, epoca, descripcion, idJugador, idMenu) VALUES ('Mobius', 'actual', 'planeta mobius', 2,2);
UPDATE Mundo SET nombre = 'Tiera' WHERE idMundo  = '2';
DELETE FROM Mundo WHERE idMundo = 1;
SELECT * FROM Mundo;

INSERT INTO Plataforma (nombre,tipo,idMundo) VALUES ('MegaDrive', 'Consola', 2);
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('Android', 'Sistema', 3);
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('MasterSystem', 'Consola', 4);
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('NintendoSwitch', 'Consola', 5);
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('Microsoft', 'Sistema', 6);
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('GameboyAdvance', 'Consola', 7);
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('PlayStation', 'Consola', 8);
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('Wii', 'Consola', 9);
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('Nintendo3DS', 'Consola', 9);
INSERT INTO Plataforma(nombre, tipo, idMundo) VALUES ('DreamCast', 'Consola', 5);
UPDATE Plataforma SET nombre = 'MegaDrive' WHERE idPlataforma  = '2';
DELETE FROM Plataforma WHERE idPlataforma = 1;
SELECT * FROM Plataforma;

INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'super', 'SuperTrasformacion', 2);
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'chaos', 'Teletransportacion', 3);
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'velocidad', 'Velocidad a la luz', 4);
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'fuerza', 'Gran Fuerza', 5);
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'Telequinesis', 'Control de objetos por mente', 5);
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'Fuego', 'Control Del fuego', 6);
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'volar', 'Elevarse por medio de las emociones', 7);
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'Chaos Control', 'Control del tiempo y espacio',8);
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'Desaparecer', 'Camuflaje',9);
INSERT INTO Poder(nombre, tipo, descripcion, idPersonaje) VALUES ('Power', 'Cavar', 'Entrar A superficies de piedra',6);
UPDATE Poder SET nombre = 'Power' WHERE idPoder  = '2';
DELETE FROM Poder WHERE idPoder = 1;
SELECT * FROM Poder;

INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal1','entrada' , 2);
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal2','temporal' , 3);
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal3','dimensional' , 4);
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal4','dimensional' , 5);
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal5','temporal' , 6);
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal6','temporal' , 7);
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal7','temporal' , 8);
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal8','dimensional', 9);
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal9','entrada' , 10);
INSERT INTO Portal(nombre, tipo, idMundo) VALUES ('Portal10','entrada',9);
UPDATE Portal SET nombre = 'Portal1' WHERE idPortal = '2';
DELETE FROM Portal WHERE idPortal = 1;
SELECT * FROM Portal;

INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicUnderground', 'oldserie',2);
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicBoom', 'actualserie', 3);
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicSatam', 'oldserie', 4);
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicX', 'animeserie', 5);
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicTheHedgehogAd', 'oldserie', 6);
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicPrime', 'newserie', 7);
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicOva', 'oldova', 8);
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicManiaAd', 'actualserie', 9);
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicTH', 'oldserie', 6);
INSERT INTO Serie(nombre,descripcion, idSaga) VALUES ('SonicMovie', 'movie', 8);
UPDATE Serie SET nombre = 'SonicUnderground' WHERE idSerie = '2';
DELETE FROM Serie WHERE idSerie = 1;
SELECT * FROM Serie;

INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamSonic', 'Sonic', 2);
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamSonic', 'Tails', 3);
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamSonic', 'Knuckles', 3);
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamDark', 'Shadow', 4);
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamDark', 'Rouge', 5);
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamDark' , 'E123 Omega', 6);
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamRose', 'Amy', 7);
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamRose', 'Cream', 8);
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamRose', 'Big', 9);
INSERT INTO Team(nombre,descripcion, idPersonaje) VALUES ('TeamChaotix', 'Vector,Charmy,Espio', 4);
UPDATE Team SET nombre = 'TeamSonic' WHERE idTeam = '2';
DELETE FROM Team WHERE idTeam = 1;
SELECT * FROM Team;

INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('Green hill', 'normal', '1', 'zona principal', 2,2,2,2,2,2,2);
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('Marble', 'normal', '2', 'zona secundaria' , 3,3,3,3,3,3,3);
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('spring yard', 'normal', '3', 'tercera zona', 4,4,4,4,4,4,4);
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('labyrinth', 'normal', '4', 'cuarta zona', 5,5,5,5,5,5,5);
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('StarLight', 'normal', '5', 'quinta zona', 6,6,6,6,6,6,6);
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('ScrapBrain', 'normal', '6', 'sexta zona', 7,7,7,7,7,7,7);
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('Emerald Hill', 'normal', '7', 'sexta zona', 8,8,8,8,8,8,8);
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('Chemical Plant', 'normal', '8', 'octava zona', 9,9,9,9,9,9,9);
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('Aquatic Ruin', 'normal', '9', 'Novena zona', 10,10,10,10,10,10,10);
INSERT INTO Zona(nombre, tipo, nivel, descripcion, idMundo, idFinal,idRing,idEra,idEscena,idBandaSonora,idEsmeralda) 
VALUES ('Death Egg', 'normal', '10', 'Decima zona', 2,2,2,2,2,2,2);
UPDATE Zona SET nombre = 'Green hill' WHERE idZona = '2';
DELETE FROM Zona WHERE idZona = 1;
SELECT * FROM Zona;

INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '1', 'primer nivel', 2);
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '2', 'segundo nivel', 3);
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '3', 'tercer nivel', 4);
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '4', 'cuarto nivel', 5);
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '5', 'quinto nivel', 6);
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '6', 'sexto nivel', 7);
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '7', 'septimo nivel', 8);
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '8','octavo nivel' ,9);
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '9', 'noveno nivel', 10);
INSERT INTO Acto(nombre, nivel, descripcion, idZona) VALUES ('Act', '10', 'decimo nivel', 3);
UPDATE Acto SET nombre = 'Act' WHERE idActo = '2';
DELETE FROM Acto WHERE idActo = 1;
SELECT * FROM Acto;

INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Pocky','Conejo', 'animal friend', 2);
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Becky','Oso','animal friend', 3);
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Ricky','Ardilla', 'animal friend', 4);
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Rocky','Foca','animal friend', 5);
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Pincky','Pinguino','animal friend', 6);
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Flicky','Pajaro','animal friend',7);
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Picky','Cerdo','animal friend',8);
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Cucky','Pollo', 'animal friend', 9);
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Muncky', 'Mapache','animal friend',10);
INSERT INTO Animal(nombre, especie, descripcion, idZona) VALUES ('Backy','Murcielago','animal friend', 3);
UPDATE Animal SET nombre = 'Pocky' WHERE idAnimal = '2';
DELETE FROM Animal WHERE idAnimal = 1;
SELECT * FROM Animal;

INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Grande', 'Tierra', 2);
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Grande','Tierra', 3);
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Grande', 'Tierra', 4);
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Mediano','Metal', 5);
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Mediano','Metal', 6);
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Mediano','Metal',7);
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Pequeño','Tierra',8);
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Pequeño', 'Metal', 9);
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle', 'Pequeño','Tierra',10);
INSERT INTO Bucle(nombre, tamaño, tipo, idZona) VALUES ('Bucle','Grande','Metal',3);
UPDATE Bucle SET nombre = 'Bucle' WHERE idBucle = '2';
DELETE FROM Bucle WHERE idBucle = 1;
SELECT * FROM Bucle;

INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto1','Proteccion','CajaDeObjeto de proteccion',2);
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto2','Escudo','CajaDeObjeto de escudo',3);
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto3','Invulnerabilidad','CajaDeObjetoInv',7);
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto4','VidaExtra','CajaDeObjeto de vidaExtra',5);
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto5','Proteccion','CajaDeObjeto de proteccion',6);
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto6','Escudo','CajaDeObjeto de escudo',7);
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto7','Invulnerabilidad','CajaDeProteccionIn',8);
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto8','VidaExtra','CajaDeObjeto de VidaExtra',9);
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto9','Proteccion','CajaDeProteccion',5);
INSERT INTO CajaDeObjeto(nombre,tipo,descripcion,idZona) VALUES ('CajaDeObjeto10','Proteccion','CajaDeProteccion',8);
UPDATE CajaDeObjeto SET nombre = 'CajaDeObjeto1' WHERE idCajaDeObjeto= '2';
DELETE FROM CajaDeObjeto WHERE idCajaDeObjeto= 1;
SELECT * FROM CajaDeObjeto;

INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension1','paralela',2);
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension2', 'alterna',3);
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension2', 'temporal',4);
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension4', 'paralela',5);
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension5', 'alterna',6);
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension6', 'temporal',7);
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension7', 'paralela',7);
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension8', 'alterna',8);
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension8', 'temporal',9);
INSERT INTO Dimension(nombre,descripcion, idMundo) VALUES ('Dimension9', 'paralela',10);
UPDATE Dimension SET nombre = 'Dimension1' WHERE idDimension= '2';
DELETE FROM Dimension WHERE idDimension= 1;
SELECT * FROM Dimension;

INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo1','Metal','enemigoMetal',2);
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo2','Metal','enemigoMetal',2);
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo3','Metal', 'enemigoMetal',2);
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo4','Metal','enemigoMetal',3);
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo5','Metal','enemigoMetal',4);
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo6','Metal','enemigoMetal',5);
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo7','Metal', 'enemigoMetal',5);
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo8','Metal','enemigoMetal',6);
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo9','Metal','enemigoMetal',8);
INSERT INTO Enemigo(nombre, tipo, descripcion, idZona) VALUES ('Enemigo10','Metal', 'enemigoMetal',8);
UPDATE Enemigo SET nombre = 'Enemigo' WHERE idEnemigo= '2';
DELETE FROM Enemigo WHERE idEnemigo= 1;
SELECT * FROM Enemigo;

INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario1','Metallic',2);
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario2', 'Island',3);
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario2', 'Flame',4);
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario4', 'Llamativo',5);
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario5', 'Oscuro',6);
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario6', 'Tecnologic',7);
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario7', 'Retro',7);
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario8', 'metalic',8);
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario8', 'dark',9);
INSERT INTO Escenario(nombre,descripcion, idMundo) VALUES ('Escenario9', 'funky',10);
UPDATE Escenario SET nombre = 'Escenario1' WHERE idEscenario= '2';
DELETE FROM Escenario WHERE idEscenario= 1;
SELECT * FROM Escenario;

INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Sombras',2);
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Iluminacion',2);
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Exposicion',2);
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Fotografica',3);
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Fondo',4);
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Estructura',5);
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Sombras',5);
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Iluminacion',6);
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Exposicion',8);
INSERT INTO EstiloVisual(nombre, detalles, idMundo) VALUES ('StyleVi','Fotografica',8);
UPDATE EstiloVisual SET nombre = 'StyleVi' WHERE idEstiloVisual= '2';
DELETE FROM EstiloVisual WHERE idEstiloVisual= 1;
SELECT * FROM EstiloVisual;

INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema1','rojo','Chaos',2);
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema2','verde','Chaos',3);
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema3','amarillo','Chaos',4);
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema4','gris','Chaos',5);
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema5','morado','Chaos',6);
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema6','celeste','Chaos',7);
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema7','azul','Chaos',8);
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema8','cafe','Chaos',9);
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema9','naranja','Chaos',5);
INSERT INTO Gema(nombre,color,tipo,idZona) VALUES ('Gema10','negro','Chaos',8);
UPDATE Gema SET nombre = 'Gema1' WHERE idGema= '2';
DELETE FROM Gema WHERE idGema= 1;
SELECT * FROM Gema;

INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe1','jefeDeZona','Human',2);
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe2','MiniJefe','Robot',3);
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe3','JefeFinal','Human',4);
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe4','JefeDeZona','Robot',5);
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe5','MiniJefe','Equidna',6);
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe6','JefeFinal','Equidna',7);
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe7','JefeDeZona','Erizo',8);
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe8','MiniJefe','Raton',9);
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe9','JefeFinal','Oso',5);
INSERT INTO Jefe(nombre,descripcion,especie,idZona) VALUES ('Jefe10','JefeDeZona','Robot',8);
UPDATE Jefe SET nombre = 'Jefe1' WHERE idJefe= '2';
DELETE FROM Jefe WHERE idJefe= 1;
SELECT * FROM Jefe;

INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl1','Guardado','PuntoDeControlDeZona',2);
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl2','Guardado','MiniPuntoDeControl',3);
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl3','Guardado','PuntoDeControlFinal',4);
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl4','Guardado','PuntoDeControlDeZona',5);
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl5','Guardado','MiniPuntoDeControl',6);
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl6','Guardado','PuntoDeControlFinal',7);
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl7','Guardado','PuntoDeControlDeZona',8);
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl8','Guardado','MiniPuntoDeControl',9);
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl9','Guardado','PuntoDeControlFinal',5);
INSERT INTO PuntoDeControl(nombre,guardado,descripcion,idZona) VALUES ('PuntoDeControl10','Guardado','PuntoDeControlDeZona',8);
UPDATE PuntoDeControl SET nombre = 'PuntoDeControl1' WHERE idPuntoDeControl= '2';
DELETE FROM PuntoDeControl WHERE idPuntoDeControl= 1;
SELECT * FROM PuntoDeControl;

INSERT INTO Ruta(tipo,idZona) VALUES ('Facil',2);
INSERT INTO Ruta(tipo,idZona) VALUES ('Facil',3);
INSERT INTO Ruta(tipo,idZona) VALUES ('Facil',4);
INSERT INTO Ruta(tipo,idZona) VALUES ('Media',5);
INSERT INTO Ruta(tipo,idZona) VALUES ('Media',6);
INSERT INTO Ruta(tipo,idZona) VALUES ('Media',7);
INSERT INTO Ruta(tipo,idZona) VALUES ('Normal',8);
INSERT INTO Ruta(tipo,idZona) VALUES ('Normal',9);
INSERT INTO Ruta(tipo,idZona) VALUES ('Dificil',5);
INSERT INTO Ruta(tipo,idZona) VALUES ('Dificil',8);
UPDATE Ruta SET tipo = 'Facil' WHERE idRuta= '2';
DELETE FROM Ruta WHERE idRuta= 1;
SELECT * FROM Ruta;

INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (1,'tiempo de zona',2);
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (2,'tiempo de zona',3);
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (3,'tiempo de zona',4);
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (4,'tiempo de zona',5);
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (5,'tiempo de zona',6);
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (6,'tiempo de zona',7);
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (7,'tiempo de zona',8);
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (8,'tiempo de zona',9);
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (9,'tiempo de zona',5);
INSERT INTO Tiempo(cantidad,descripcion,idZona) VALUES (10,'tiempo de zona',8);
UPDATE Tiempo SET cantidad = '1' WHERE idTiempo= '2';
DELETE FROM Tiempo WHERE idTiempo= 1;
SELECT * FROM Tiempo;

INSERT INTO Trampa(nombre,tipo, descripcion, idZona) VALUES ('Trampa1','Metal','Grande', 2);
INSERT INTO Trampa(nombre,tipo,descripcion, idZona) VALUES ('Trampa2','Metal','Grande',3);
INSERT INTO Trampa(nombre,tipo, descripcion,idZona) VALUES ('Trampa3','Metal','Grande',4);
INSERT INTO Trampa(nombre,tipo,descripcion, idZona) VALUES ('Trampa4','Metal','Mediano',5);
INSERT INTO Trampa(nombre,tipo,descripcion, idZona) VALUES ('Trampa5','Metal','Mediano', 6);
INSERT INTO Trampa(nombre,tipo,descripcion, idZona) VALUES ('Trampa6','Metal','Mediano',7);
INSERT INTO Trampa(nombre,tipo,descripcion, idZona) VALUES ('Trampa7','Metal','Pequeño',8);
INSERT INTO Trampa(nombre,tipo, descripcion,idZona) VALUES ('Trampa8','Metal','Pequeño',9);
INSERT INTO Trampa(nombre,tipo,descripcion, idZona) VALUES ('Trampa9', 'Metal','Pequeño',10);
INSERT INTO Trampa(nombre,tipo, descripcion,idZona) VALUES ('Trampa10','Metal','Grande',3);
UPDATE Trampa SET nombre = 'Trampa1' WHERE idTrampa = '2';
DELETE FROM Trampa WHERE idTrampa = 1;
SELECT * FROM Trampa;

INSERT INTO ZonaEspecial(nombre,tipo,nivel,descripcion, idMundo) VALUES ('ZonaEspecial1','Secret', 1,'nivelespecialsecreto',2);
INSERT INTO ZonaEspecial(nombre,tipo, nivel,descripcion,idMundo) VALUES ('ZonaEspecial2','Secret',2,'nivelespecialsecreto',3);
INSERT INTO ZonaEspecial(nombre,tipo,nivel,descripcion, idMundo) VALUES ('ZonaEspecial3','Secret',3,'nivelespecialsecreto',4);
INSERT INTO ZonaEspecial(nombre,tipo,nivel,descripcion, idMundo) VALUES ('ZonaEspecial4','Secret',4,'nivelespecialsecreto',5);
INSERT INTO ZonaEspecial(nombre,tipo, nivel,descripcion,idMundo) VALUES ('ZonaEspecial5','Secret',5, 'nivelespecialsecreto',6);
INSERT INTO ZonaEspecial(nombre,tipo, nivel,descripcion,idMundo) VALUES ('ZonaEspecial6','Secret',6,'nivelespecialsecreto',7);
INSERT INTO ZonaEspecial(nombre,tipo,nivel,descripcion, idMundo) VALUES ('ZonaEspecial7','Secret',7,'nivelespecialsecreto',8);
INSERT INTO ZonaEspecial(nombre,tipo, nivel,descripcion,idMundo) VALUES ('ZonaEspecial8','Secret',8,'nivelespecialsecreto',9);
INSERT INTO ZonaEspecial(nombre,tipo, nivel,descripcion,idMundo) VALUES ('ZonaEspecial9', 'Secret',9,'nivelespecialsecreto',10);
INSERT INTO ZonaEspecial(nombre,tipo,nivel,descripcion, idMundo) VALUES ('ZonaEspecial10','Secret',10,'nivelespecialsecreto',3);
UPDATE ZonaEspecial SET nombre = 'ZonaEspecial1' WHERE idZonaEspecial = '2';
DELETE FROM ZonaEspecial WHERE idZonaEspecial = 1;
SELECT * FROM ZonaEspecial;

INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (2,2);
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (3,3);
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (4,4);
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (5,5);
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (6,6);
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (7,7);
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (8,8);
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (9,9);
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (3,6);
INSERT INTO BandaSonoraZona(idBandaSonora,idZona) VALUES (10,10);
UPDATE BandaSonoraZona SET idBandaSonora= '2' WHERE idBandaSonoraZona = '2';
DELETE FROM BandaSonoraZona WHERE idBandaSonoraZona= 1;
SELECT * FROM BandaSonoraZona;

INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (2,2);
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (3,3);
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (4,4);
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (5,5);
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (6,6);
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (7,7);
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (8,8);
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (9,9);
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (10,10);
INSERT INTO ZonaEspecialMundo(idZonaEspecial, idMundo) VALUES (6,7);
UPDATE ZonaEspecialMundo SET idZonaEspecial = '2' WHERE idZonaEspecialMundo = '2';
DELETE FROM ZonaEspecialMundo WHERE idZonaEspecialMundo = 1;
SELECT * FROM ZonaEspecialMundo;

INSERT INTO ZonaMundo(idZona, idMundo) VALUES (2,2);
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (3,3);
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (4,4);
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (5,5);
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (6,6);
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (7,7);
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (8,8);
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (9,9);
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (10,10);
INSERT INTO ZonaMundo(idZona, idMundo) VALUES (4,7);
UPDATE ZonaMundo SET idZona = '2' WHERE idZonaMundo = '2';
DELETE FROM ZonaMundo WHERE idZonaMundo = 1;
SELECT * FROM ZonaMundo;

INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (2,2);
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (3,3);
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (4,4);
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (5,5);
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (6,6);
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (7,7);
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (8,8);
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (9,9);
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (10,10);
INSERT INTO ConfiguracionJugador(idConfiguracion, idJugador) VALUES (5,6);
UPDATE ConfiguracionJugador SET idConfiguracion = '2' WHERE idConfiguracionJugador = '2';
DELETE FROM ConfiguracionJugador WHERE idConfiguracionJugador = 1;
SELECT * FROM ConfiguracionJugador;

INSERT INTO EscenaZona(idEscena, idZona) VALUES (2,2);
INSERT INTO EscenaZona(idEscena, idZona) VALUES (3,3);
INSERT INTO EscenaZona(idEscena, idZona) VALUES (4,4);
INSERT INTO EscenaZona(idEscena, idZona) VALUES (5,5);
INSERT INTO EscenaZona(idEscena, idZona) VALUES (6,6);
INSERT INTO EscenaZona(idEscena, idZona) VALUES (7,7);
INSERT INTO EscenaZona(idEscena, idZona) VALUES (8,8);
INSERT INTO EscenaZona(idEscena, idZona) VALUES (9,9);
INSERT INTO EscenaZona(idEscena, idZona) VALUES (10,10);
INSERT INTO EscenaZona(idEscena, idZona) VALUES (5,6);
UPDATE EscenaZona SET idEscena = '2' WHERE idEscenaZona = '2';
DELETE FROM EscenaZona WHERE idEscenaZona = 1;
SELECT * FROM EscenaZona;

INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (2,2);
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (3,3);
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (4,4);
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (5,5);
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (6,6);
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (7,7);
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (8,8);
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (9,9);
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (10,10);
INSERT INTO EsmeraldaZona(idEsmeralda, idZona) VALUES (5,6);
UPDATE EsmeraldaZona SET idEsmeralda = '2' WHERE idEsmeraldaZona = '2';
DELETE FROM EsmeraldaZona WHERE idEsmeraldaZona = 1;
SELECT * FROM EsmeraldaZona;

INSERT INTO FinalZona(idFinal, idZona) VALUES (2,2);
INSERT INTO FinalZona(idFinal, idZona) VALUES (3,3);
INSERT INTO FinalZona(idFinal, idZona) VALUES (4,4);
INSERT INTO FinalZona(idFinal, idZona) VALUES (5,5);
INSERT INTO FinalZona(idFinal, idZona) VALUES (6,6);
INSERT INTO FinalZona(idFinal, idZona) VALUES (7,7);
INSERT INTO FinalZona(idFinal, idZona) VALUES (8,8);
INSERT INTO FinalZona(idFinal, idZona) VALUES (9,9);
INSERT INTO FinalZona(idFinal, idZona) VALUES (10,10);
INSERT INTO FinalZona(idFinal, idZona) VALUES (5,6);
UPDATE FinalZona SET idFinal = '2' WHERE idFinalZona = '2';
DELETE FROM FinalZona WHERE idFinalZona = 1;
SELECT * FROM FinalZona;

INSERT INTO GemaZona(idGema, idZona) VALUES (2,2);
INSERT INTO GemaZona(idGema, idZona) VALUES (3,3);
INSERT INTO GemaZona(idGema, idZona) VALUES (4,4);
INSERT INTO GemaZona(idGema, idZona) VALUES (5,5);
INSERT INTO GemaZona(idGema, idZona) VALUES (6,6);
INSERT INTO GemaZona(idGema, idZona) VALUES (7,7);
INSERT INTO GemaZona(idGema, idZona) VALUES (8,8);
INSERT INTO GemaZona(idGema, idZona) VALUES (9,9);
INSERT INTO GemaZona(idGema, idZona) VALUES (10,10);
INSERT INTO GemaZona(idGema, idZona) VALUES (5,6);
UPDATE GemaZona SET idGema = '2' WHERE idGemaZona = '2';
DELETE FROM GemaZona WHERE idGemaZona = 1;
SELECT * FROM GemaZona;

INSERT INTO JefeZona(idJefe, idZona) VALUES (2,2);
INSERT INTO JefeZona(idJefe, idZona) VALUES (3,3);
INSERT INTO JefeZona(idJefe, idZona) VALUES (4,4);
INSERT INTO JefeZona(idJefe, idZona) VALUES (5,5);
INSERT INTO JefeZona(idJefe, idZona) VALUES (6,6);
INSERT INTO JefeZona(idJefe, idZona) VALUES (7,7);
INSERT INTO JefeZona(idJefe, idZona) VALUES (8,8);
INSERT INTO JefeZona(idJefe, idZona) VALUES (9,9);
INSERT INTO JefeZona(idJefe, idZona) VALUES (10,10);
INSERT INTO JefeZona(idJefe, idZona) VALUES (5,6);
UPDATE JefeZona SET idJefe = '2' WHERE idJefeZona = '2';
DELETE FROM JefeZona WHERE idJefeZona = 1;
SELECT * FROM JefeZona;

INSERT INTO RingZona(idRing, idZona) VALUES (2,2);
INSERT INTO RingZona(idRing, idZona) VALUES (3,3);
INSERT INTO RingZona(idRing, idZona) VALUES (4,4);
INSERT INTO RingZona(idRing, idZona) VALUES (5,5);
INSERT INTO RingZona(idRing, idZona) VALUES (6,6);
INSERT INTO RingZona(idRing, idZona) VALUES (7,7);
INSERT INTO RingZona(idRing, idZona) VALUES (8,8);
INSERT INTO RingZona(idRing, idZona) VALUES (9,9);
INSERT INTO RingZona(idRing, idZona) VALUES (10,10);
INSERT INTO RingZona(idRing, idZona) VALUES (5,6);
UPDATE RingZona SET idRing = '2' WHERE idRingZona = '2';
DELETE FROM RingZona WHERE idRingZona = 1;
SELECT * FROM RingZona;

INSERT INTO RutaZona(idRuta, idZona) VALUES (2,2);
INSERT INTO RutaZona(idRuta, idZona) VALUES (3,3);
INSERT INTO RutaZona(idRuta, idZona) VALUES (4,4);
INSERT INTO RutaZona(idRuta, idZona) VALUES (5,5);
INSERT INTO RutaZona(idRuta, idZona) VALUES (6,6);
INSERT INTO RutaZona(idRuta, idZona) VALUES (7,7);
INSERT INTO RutaZona(idRuta, idZona) VALUES (8,8);
INSERT INTO RutaZona(idRuta, idZona) VALUES (9,9);
INSERT INTO RutaZona(idRuta, idZona) VALUES (10,10);
INSERT INTO RutaZona(idRuta, idZona) VALUES (5,6);
UPDATE RutaZona SET idRuta = '2' WHERE idRutaZona = '2';
DELETE FROM RutaZona WHERE idRutaZona = 1;
SELECT * FROM RutaZona;

INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (2,2);
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (3,3);
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (4,4);
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (5,5);
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (6,6);
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (7,7);
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (8,8);
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (9,9);
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (3,4);
INSERT INTO MercanciaPersonaje(idMercancia, idPersonaje) VALUES (5,6);
UPDATE MercanciaPersonaje SET idMercancia = '2' WHERE idMercanciaPersonaje = '2';
DELETE FROM MercanciaPersonaje WHERE idMercanciaPersonaje = 1;
SELECT * FROM MercanciaPersonaje;

INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (2,2);
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (3,3);
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (4,4);
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (5,5);
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (6,6);
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (7,7);
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (8,8);
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (9,9);
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (4,8);
INSERT INTO TeamPersonaje(idTeam, idPersonaje) VALUES (5,6);
UPDATE TeamPersonaje SET idTeam = '2' WHERE idTeamPersonaje = '2';
DELETE FROM TeamPersonaje WHERE idTeamPersonaje = 1;
SELECT * FROM TeamPersonaje;

INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (2,2);
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (3,3);
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (4,4);
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (5,5);
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (6,6);
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (7,7);
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (8,8);
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (9,9);
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (4,8);
INSERT INTO VidaPersonaje(idVida, idPersonaje) VALUES (5,6);
UPDATE VidaPersonaje SET idVida = '2' WHERE idVidaPersonaje = '2';
DELETE FROM VidaPersonaje WHERE idVidaPersonaje = 1;
SELECT * FROM VidaPersonaje;

INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (2,2);
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (3,3);
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (4,4);
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (5,5);
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (6,6);
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (7,7);
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (8,8);
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (9,9);
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (7,9);
INSERT INTO ModoDeJuegoJugador(idModoDeJuego, idJugador) VALUES (5,6);
UPDATE ModoDeJuegoJugador SET idModoDeJuego = '2' WHERE idModoDeJuegoJugador = '2';
DELETE FROM ModoDeJuegoJugador WHERE idModoDeJuegoJugador = 1;
SELECT * FROM ModoDeJuegoJugador;

INSERT INTO SagaJugador(idSaga, idJugador) VALUES (2,2);
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (3,3);
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (4,4);
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (5,5);
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (6,6);
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (7,7);
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (8,8);
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (9,9);
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (4,3);
INSERT INTO SagaJugador(idSaga, idJugador) VALUES (5,6);
UPDATE SagaJugador SET idSaga = '2' WHERE idSagaJugador = '2';
DELETE FROM SagaJugador WHERE idSagaJugador = 1;
SELECT * FROM SagaJugador;

INSERT INTO PortalMundo(idPortal, idMundo) VALUES (2,2);
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (3,3);
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (4,4);
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (5,5);
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (6,6);
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (7,7);
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (8,8);
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (9,9);
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (8,4);
INSERT INTO PortalMundo(idPortal, idMundo) VALUES (5,6);
UPDATE PortalMundo SET idPortal = '2' WHERE idPortalMundo = '2';
DELETE FROM PortalMundo WHERE idPortalMundo = 1;
SELECT * FROM PortalMundo;

INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (2,2);
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (3,3);
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (4,4);
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (5,5);
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (6,6);
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (7,7);
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (8,8);
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (9,9);
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (5,3);
INSERT INTO PuntoDeControlZona(idPuntoDeControl, idZona) VALUES (5,6);
UPDATE PuntoDeControlZona SET idPuntoDeControl = '2' WHERE idPuntoDeControlZona = '2';
DELETE FROM PuntoDeControlZona WHERE idPuntoDeControlZona = 1;
SELECT * FROM PuntoDeControlZona;

INSERT INTO SerieSaga(idSerie, idSaga) VALUES (2,2);
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (3,3);
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (4,4);
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (5,5);
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (6,6);
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (7,7);
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (8,8);
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (7,9);
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (3,2);
INSERT INTO SerieSaga(idSerie, idSaga) VALUES (5,6);
UPDATE SerieSaga SET idSerie = '2' WHERE idSerieSaga = '2';
DELETE FROM SerieSaga WHERE idSerieSaga = 1;
SELECT * FROM SerieSaga;
