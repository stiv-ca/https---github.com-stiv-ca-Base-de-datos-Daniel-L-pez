SHOW DATABASES

CREATE TABLE estudiantes(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    fecha_de_nacimiento DATE
);

SELECT * FROM estudiantes;

INSERT INTO estudiantes(nombre,apellido,fecha_de_nacimiento)
                VALUES('Daniel','López','2006-04-15');