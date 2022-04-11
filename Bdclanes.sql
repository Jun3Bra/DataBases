--
-- File generated with SQLiteStudio v3.3.3 on lun. abr. 11 18:51:11 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: EdifNivelCantidad
CREATE TABLE EdifNivelCantidad (IDEdificacion INTEGER REFERENCES TipoEdificacion (IDTipoEdificacion) MATCH SIMPLE NOT NULL, IDTipoNivel INTEGER NOT NULL, MaxCantidad INTEGER NOT NULL);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (1, 1, 4);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (1, 2, 4);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (1, 3, 3);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (1, 4, 3);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (1, 5, 3);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (1, 6, 2);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (1, 7, 2);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (1, 8, 2);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (1, 9, 1);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (1, 10, 1);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (2, 1, 4);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (2, 2, 4);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (2, 3, 3);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (2, 4, 3);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (2, 5, 3);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (2, 6, 2);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (2, 7, 2);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (2, 8, 2);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (2, 9, 1);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (2, 10, 1);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (3, 1, 4);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (3, 2, 4);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (3, 3, 3);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (3, 4, 3);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (3, 5, 3);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (3, 6, 2);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (3, 7, 2);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (3, 8, 1);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (3, 9, 1);
INSERT INTO EdifNivelCantidad (IDEdificacion, IDTipoNivel, MaxCantidad) VALUES (3, 10, 1);

-- Table: InventarioUsuario
CREATE TABLE InventarioUsuario (IdUsuario INTEGER NOT NULL REFERENCES Usuarios (ID) MATCH SIMPLE, IDTipoNivelUsr INTEGER REFERENCES TipoNivelUsuario (IDTipoNivelUsr) MATCH SIMPLE NOT NULL, IDEdificacion INTEGER NOT NULL REFERENCES Edificaciones (IDEdificacion) MATCH SIMPLE, IDNivelEdificacion INTEGER NOT NULL REFERENCES EdifNivelCantidad (IDTipoNivel) MATCH SIMPLE, CantEdificios BIGINT (3) NOT NULL, IdEjercito INTEGER REFERENCES Ejercitos (IdEjercito) MATCH SIMPLE NOT NULL, NivelEjercito INTEGER NOT NULL REFERENCES TipoNivelEjercito (NivelEjercito) MATCH SIMPLE, CantEjercito INTEGER (3) NOT NULL);

-- Table: TipoEdificacion
CREATE TABLE TipoEdificacion	(
    IDTipoEdificacion	INTEGER      PRIMARY KEY
                                UNIQUE
                                NOT NULL,
    TipoEdificacion VARCHAR (30) UNIQUE
                                NOT NULL
);
INSERT INTO TipoEdificacion (IDTipoEdificacion, TipoEdificacion) VALUES (1, 'Almacenamiento');
INSERT INTO TipoEdificacion (IDTipoEdificacion, TipoEdificacion) VALUES (2, 'Defensa');
INSERT INTO TipoEdificacion (IDTipoEdificacion, TipoEdificacion) VALUES (3, 'Produccion');

-- Table: TipoNivelEjercito
CREATE TABLE TipoNivelEjercito (IdEjercito INTEGER NOT NULL REFERENCES Ejercitos (IdEjercito) MATCH SIMPLE, NivelEjercito INTEGER NOT NULL, DestruccionPorSegundo INTEGER NOT NULL, VidaEjercito BIGINT NOT NULL, CostoEntreamiento BIGINT NOT NULL, CostoInvestigacion BIGINT (10) NOT NULL, TiempoInvestigacion BIGINT NOT NULL, NivelLaboratorio INTEGER NOT NULL);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (1, 1, 8, 45, 15, 0, 0, 0);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (1, 2, 11, 54, 30, 20000, 2, 1);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (1, 3, 14, 65, 60, 60000, 5, 3);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (1, 4, 18, 85, 100, 200000, 12, 5);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (1, 5, 23, 105, 150, 650000, 24, 6);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (1, 6, 26, 125, 200, 1400000, 36, 7);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (1, 7, 30, 160, 250, 2500000, 48, 8);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (1, 8, 34, 205, 300, 4000000, 60, 9);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (1, 9, 38, 230, 350, 8000000, 240, 10);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (1, 10, 42, 250, 400, 15000000, 336, 12);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (2, 1, 7, 20, 30, 0, 0, 0);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (2, 2, 9, 23, 60, 30000, 3, 1);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (2, 3, 12, 28, 120, 80000, 6, 3);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (2, 4, 16, 33, 200, 300000, 12, 5);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (2, 5, 20, 40, 300, 800000, 24, 6);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (2, 6, 22, 44, 400, 2000000, 36, 7);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (2, 7, 25, 48, 500, 3000000, 72, 8);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (2, 8, 28, 52, 600, 4500000, 120, 9);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (2, 9, 31, 56, 700, 9000000, 252, 10);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (2, 10, 34, 60, 800, 15500000, 336, 12);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (3, 1, 11, 300, 150, 0, 0, 0);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (3, 2, 14, 360, 100, 40000, 4, 2);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (3, 3, 19, 450, 750, 150000, 8, 4);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (3, 4, 24, 600, 1500, 500000, 12, 5);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (3, 5, 31, 800, 2250, 1200000, 24, 6);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (3, 6, 43, 1100, 3000, 2000000, 48, 7);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (3, 7, 50, 1300, 3500, 3500000, 96, 8);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (3, 8, 57, 1500, 4000, 5000000, 192, 9);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (3, 9, 64, 1850, 4500, 9000000, 312, 10);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (3, 10, 72, 2000, 5000, 13000000, 360, 11);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (4, 1, 11, 25, 25, 0, 0, 0);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (4, 2, 14, 30, 40, 45000, 5, 1);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (4, 3, 19, 36, 60, 175000, 9, 3);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (4, 4, 24, 50, 80, 500000, 12, 5);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (4, 5, 32, 65, 100, 1200000, 24, 6);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (4, 6, 42, 80, 150, 2000000, 36, 7);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (4, 7, 52, 105, 200, 3500000, 96, 8);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (4, 8, 62, 126, 250, 9000000, 288, 10);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (5, 1, 6, 20, 600, 0, 0, 0);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (5, 2, 10, 24, 800, 100000, 6, 2);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (5, 3, 15, 29, 1000, 250000, 12, 4);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (5, 4, 20, 35, 1200, 600000, 18, 5);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (5, 5, 43, 53, 1400, 1200000, 24, 6);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (5, 6, 55, 72, 1600, 3000000, 60, 8);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (5, 7, 66, 82, 1800, 6000000, 120, 9);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (5, 8, 75, 92, 2000, 10500000, 240, 10);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (5, 9, 86, 112, 2200, 13000000, 348, 11);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (5, 10, 94, 130, 2400, 16000000, 384, 12);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (6, 1, 25, 150, 1750, 0, 0, 0);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (6, 2, 32, 180, 2250, 125000, 8, 2);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (6, 3, 48, 216, 2750, 400000, 12, 4);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (6, 4, 72, 280, 3500, 800000, 18, 5);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (6, 5, 108, 390, 4000, 1500000, 24, 6);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (6, 6, 162, 545, 4500, 2750000, 60, 7);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (6, 7, 198, 690, 5000, 6500000, 180, 9);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (6, 8, 236, 840, 5500, 11000000, 324, 10);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (6, 9, 256, 940, 6000, 14000000, 384, 11);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (6, 10, 276, 1040, 6500, 18000000, 432, 12);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (7, 1, 50, 75, 1000, 0, 0, 0);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (7, 2, 70, 90, 1400, 120000, 8, 3);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (7, 3, 90, 108, 1800, 320000, 12, 4);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (7, 4, 125, 135, 2200, 620000, 18, 5);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (7, 5, 170, 165, 2600, 1200000, 24, 6);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (7, 6, 185, 180, 3000, 2200000, 48, 7);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (7, 7, 200, 195, 3400, 4200000, 96, 8);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (7, 8, 215, 210, 3800, 7200000, 180, 9);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (7, 9, 230, 230, 4200, 9200000, 300, 10);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (7, 10, 245, 250, 4600, 14200000, 348, 11);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (8, 1, 36, 500, 5000, 0, 0, 0);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (8, 2, 48, 700, 6000, 450000, 12, 5);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (8, 3, 60, 900, 8000, 900000, 24, 6);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (8, 4, 66, 1200, 10000, 2700000, 48, 7);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (8, 5, 72, 1500, 14000, 6000000, 240, 9);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (8, 6, 72, 1600, 17000, 13000000, 336, 11);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (8, 7, 72, 1700, 20000, 17000000, 408, 12);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (9, 1, 140, 1900, 10000, 0, 0, 0);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (9, 2, 160, 2100, 12000, 1750000, 36, 5);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (9, 3, 180, 2300, 14000, 2500000, 72, 6);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (9, 4, 210, 2700, 16000, 4000000, 120, 7);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (9, 5, 240, 3100, 18000, 6000000, 168, 8);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (9, 6, 270, 3400, 20000, 8000000, 216, 9);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (9, 7, 310, 3900, 22000, 10000000, 336, 10);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (9, 8, 330, 4200, 24000, 15000000, 384, 11);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (9, 9, 350, 4500, 26000, 18500000, 432, 12);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (10, 1, 260, 3000, 14000, 0, 0, 0);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (10, 2, 290, 3400, 16000, 1200000, 12, 6);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (10, 3, 320, 3800, 18000, 1800000, 24, 6);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (10, 4, 360, 4300, 20000, 2800000, 48, 7);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (10, 5, 410, 4800, 22500, 3800000, 96, 8);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (10, 6, 470, 5300, 25000, 5000000, 132, 8);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (10, 7, 540, 5700, 27500, 7500000, 204, 9);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (10, 8, 610, 6300, 30000, 11000000, 336, 10);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (10, 9, 680, 6700, 32500, 14000000, 360, 11);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (11, 1, 75, 1200, 5000, 0, 0, 0);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (11, 2, 85, 1300, 6000, 2500000, 72, 7);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (11, 3, 95, 1400, 7000, 3500000, 120, 8);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (11, 4, 105, 1500, 8000, 4500000, 168, 8);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (11, 5, 115, 1600, 9000, 7000000, 216, 9);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (11, 6, 125, 1700, 10000, 9000000, 288, 10);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (11, 7, 135, 1800, 11000, 15000000, 372, 11);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (11, 8, 145, 1900, 12000, 17000000, 396, 12);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (12, 1, 80, 550, 4200, 0, 0, 0);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (12, 2, 88, 610, 4800, 3500000, 72, 8);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (12, 3, 96, 670, 5200, 4500000, 120, 8);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (12, 4, 104, 730, 5600, 6000000, 180, 9);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (12, 5, 112, 800, 6000, 8000000, 252, 9);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (12, 6, 120, 900, 6400, 10500000, 336, 10);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (12, 7, 128, 1000, 6800, 14000000, 372, 11);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (12, 8, 136, 1100, 7200, 17500000, 408, 12);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (13, 1, 240, 3200, 28000, 0, 0, 0);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (13, 2, 270, 3700, 32000, 9000000, 240, 9);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (13, 3, 300, 4200, 36000, 11000000, 336, 10);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (13, 4, 330, 4500, 40000, 16000000, 384, 11);
INSERT INTO TipoNivelEjercito (IdEjercito, NivelEjercito, DestruccionPorSegundo, VidaEjercito, CostoEntreamiento, CostoInvestigacion, TiempoInvestigacion, NivelLaboratorio) VALUES (13, 5, 360, 4800, 44000, 19000000, 432, 12);

-- Table: TipoNivelUsuario
CREATE TABLE TipoNivelUsuario (
    IDTipoNivelUsr       INTEGER       PRIMARY KEY
                           UNIQUE
                           NOT NULL,
    NivelUsr    VARCHAR (10) UNIQUE
                           NOT NULL
);
INSERT INTO TipoNivelUsuario (IDTipoNivelUsr, NivelUsr) VALUES (1, 'Titan');
INSERT INTO TipoNivelUsuario (IDTipoNivelUsr, NivelUsr) VALUES (2, 'Campeones');
INSERT INTO TipoNivelUsuario (IDTipoNivelUsr, NivelUsr) VALUES (3, 'Maestro');
INSERT INTO TipoNivelUsuario (IDTipoNivelUsr, NivelUsr) VALUES (4, 'Cristal');
INSERT INTO TipoNivelUsuario (IDTipoNivelUsr, NivelUsr) VALUES (5, 'Oro');
INSERT INTO TipoNivelUsuario (IDTipoNivelUsr, NivelUsr) VALUES (6, 'Plata I');
INSERT INTO TipoNivelUsuario (IDTipoNivelUsr, NivelUsr) VALUES (8, 'Plata II');
INSERT INTO TipoNivelUsuario (IDTipoNivelUsr, NivelUsr) VALUES (9, 'Plata III');
INSERT INTO TipoNivelUsuario (IDTipoNivelUsr, NivelUsr) VALUES (10, 'Bronce');

-- Table: Usuarios
CREATE TABLE Usuarios (ID INTEGER PRIMARY KEY UNIQUE NOT NULL, login VARCHAR (100) UNIQUE ON CONFLICT ROLLBACK NOT NULL, correo VARCHAR (100) UNIQUE NOT NULL, password VARCHAR (20) NOT NULL, level INT (2) NOT NULL REFERENCES TipoNivelUsuario (IDTipoNivelUsr) MATCH SIMPLE);
INSERT INTO Usuarios (ID, login, correo, password, level) VALUES (1, 'user1', 'pepito_perez@hotmail.com', '@TM@v6Xtf', 3);
INSERT INTO Usuarios (ID, login, correo, password, level) VALUES (2, 'player', 'jugador@gmail.com', '22v27dA#EoCk', 4);
INSERT INTO Usuarios (ID, login, correo, password, level) VALUES (3, 'pirtayudru', 'pirtayudru@vusra.com', 'auXaIoUz^o9a', 1);
INSERT INTO Usuarios (ID, login, correo, password, level) VALUES (4, 'carolinamw8', 'carolina+ppw7dpxmw8@gmail.com', 'RYbg3l3M*DdG', 10);
INSERT INTO Usuarios (ID, login, correo, password, level) VALUES (5, 'larkin11', 'emiliano.larkin11@hotmail.com', 'U4a*9^@#', 7);
INSERT INTO Usuarios (ID, login, correo, password, level) VALUES (6, 'nedra35', 'nedra35@gmail.com', 'RSQvhSK6', 8);
INSERT INTO Usuarios (ID, login, correo, password, level) VALUES (7, 'vilma_bogi', 'vilma_bogisich43@gmail.com', 'hTKuyX2b', 3);
INSERT INTO Usuarios (ID, login, correo, password, level) VALUES (8, 'darian98', 'darian98@gmail.com', 'F8TDuB8x', 7);
INSERT INTO Usuarios (ID, login, correo, password, level) VALUES (9, 'breanne44', 'breanne44@yahoo.com', 'nYupfuBF', 2);
INSERT INTO Usuarios (ID, login, correo, password, level) VALUES (10, 'philip_mit', 'philip_mitchell@gmail.com', 'rGC2AXME', 3);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
