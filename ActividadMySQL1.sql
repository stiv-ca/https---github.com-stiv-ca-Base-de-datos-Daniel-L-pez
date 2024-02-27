CREATE TABLE empresas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    nit VARCHAR(15),
    telefono VARCHAR(15),
    dirección VARCHAR(100)
)

SELECT * FROM  empresas;

CREATE TABLE paises(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50)
)

SELECT * FROM  paises;

CREATE TABLE vehiculos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(15),
    modelo VARCHAR(45),
    color VARCHAR(15),
    tipo_de_vehiculo VARCHAR(45)
)

SELECT * FROM vehiculos;

CREATE TABLE ciudades(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45)
)

SELECT * FROM ciudades;

CREATE TABLE usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    apellidos VARCHAR(45),
    correo VARCHAR(150),
    password VARCHAR(45),
    fecha_de_nacimiento DATE,
    genero VARCHAR(10),
    altura VARCHAR(4),
    peso VARCHAR(4)
)

SELECT * FROM usuarios;
--Que es MySQL?

/*MySQL HeatWave Service es un servicio nativo de Oracle Cloud Infrastructure totalmente
administrado, que automatiza tareas como respaldo y recuperación, y parches de bases de datos 
y sistemas operativos.*/


--Motores de almacenamiento que utiliza MySQL:
/*Los motores de almacenamiento son componentes de MySQL que manejan las operaciones SQL para diferentes tipos de tablas. InnoDBes el motor de almacenamiento predeterminado y de uso más general, y Oracle recomienda usarlo para tablas, excepto en casos de uso especializados. (La CREATE TABLEdeclaración en MySQL 8.3 crea InnoDBtablas de forma predeterminada).

MySQL Server utiliza una arquitectura de motor de almacenamiento conectable que permite cargar y descargar motores de almacenamiento desde un servidor MySQL en ejecución.

Para determinar qué motores de almacenamiento admite su servidor, utilice la SHOW ENGINESdeclaración. El valor de la Supportcolumna indica si se puede utilizar un motor. Un valor de YES, NOo DEFAULTindica que un motor está disponible, no disponible o disponible y actualmente configurado como motor de almacenamiento predeterminado.*/

SELECT * FROM users;

/*Problema 3*/
SELECT nombres,edad FROM users WHERE edad < 5 order by edad asc LIMIT 1;

/*Problema 4*/
SELECT id FROM users;

/*Problema 5*/
SELECT nombres FROM users order by id ASC LIMIT 5;

/*Problema 6*/
SELECT nombres FROM users order by id DESC LIMIT 10;

/*Problema 7*/
SELECT correo

/*Problema 8*/
SELECT nombres,pais FROM users WHERE pais != 'colombia';

/*Problema 9*/
SELECT nombres,pais FROM users WHERE pais != 'panama' and pais != 'ecuador';

/*Problema 10*/

SELECT nombres,musica FROM users WHERE pais = 'colombia' and musica = 'rock';

SELECT * FROM  users WHERE musica = 'carranga';
/*Problema 11*/

UPDATE users SET musica = 'carranga'  WHERE musica = 'CARRANGA'  ;

/*Problema 12*/
SELECT nombres,musica FROM users WHERE musica = 'carranga' and pais = 'colombia';

/*Problema 13*/

UPDATE users SET musica = 'carranga' WHERE edad = '99';
SELECT nombres,musica FROM users WHERE edad = '99';

/*Problema 14*/
SELECT SUBSTRING(nombres,1,1) AS PRIMER_CARACTER FROM users WHERE SUBSTRING(nombres, 1, 1) = 'A';

/*Problema 15*/
SELECT SUBSTRING(apellidos,-1,1) AS ULTIMO_CARACTER FROM users WHERE SUBSTRING(apellidos, -1, 1) = 'Z';

/*Problema 16*/

UPDATE users SET musica = 'NULL' WHERE edad = '50';
SELECT nombres,musica FROM users WHERE edad = '50';

/*Problema 17*/
SELECT nombres,musica FROM users WHERE musica = 'NULL';


