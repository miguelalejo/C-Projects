CREATE TABLE equipo_has_mensaje (
  idequipo_has_mensaje INTEGER NOT NULL,
  equipo_idEquipo INTEGER NOT NULL,
  mensaje_idMensaje INTEGER NOT NULL,
  fechaInicioUChat DATE NOT NULL,
  horaInicioUchat INTEGER NOT NULL,
  PRIMARY KEY(idequipo_has_mensaje),
  INDEX equipo_has_mensaje_FKIndex1(mensaje_idMensaje),
  INDEX equipo_has_mensaje_FKIndex2(equipo_idEquipo),
  FOREIGN KEY(mensaje_idMensaje)
    REFERENCES mensaje(idMensaje)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(equipo_idEquipo)
    REFERENCES equipo(idEquipo)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);


