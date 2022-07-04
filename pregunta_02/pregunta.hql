/* 
Pregunta
===========================================================================

Para resolver esta pregunta use el archivo `data.tsv`.

Construya una consulta que ordene la tabla por letra y valor (3ra columna).

Apache Hive se ejecutará en modo local (sin HDFS).

Escriba el resultado a la carpeta `output` de directorio de trabajo.

        >>> Escriba su respuesta a partir de este punto <<<
*/CREATE TABLE T_P2(
        f1 STRING,
        f2 DATE,
        f3 INT
)

ROW FORMAT DELIMITED FIELDS TERMINATED BY '/t'
TBLPROPERTIES ('skip.header.line.count'='0');

LOAD DATA LOCAL INPATH 'data.tsv' OVERWRITE INTO TABLE T_P2;

CREATE TABLE pr_2 AS
SELECT * FROM T_P2 ORDER BY f1;

INSERT OVERWRITE LOCAL DIRECTORY './output'
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
SELECT * FROM pr_2;

