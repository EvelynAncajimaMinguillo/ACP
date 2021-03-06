/*
TABLAS INVOLUCRADAS
- CONSUMIDOR
- INGRESOSALIDAACOPIOCAMPO
- DINGRESOSALIDAACOPIOCAMPO
- PRODUCTOS
*/ 

--DATOS RELEVANTES EN CONSUMIDOR
select IDCONSUMIDOR, TIPO ,JERARQUIA, DESCRIPCION, IDCCOSTO, AREA,IDNIVELCONSUMIDOR from CONSUMIDOR
WHERE TIPO = 'T'

--DATOS RELEVANTES EN INGRESOSALIDAACOPIOCAMPO
SELECT IDINGRESOSALIDAACOPIOCAMPO, IDALMACEN, IDDOCUMENTO + SERIE + NUMERO AS DOCUMENTO,
 PESOBRUTO, PESOTARA, PESONETO FROM INGRESOSALIDAACOPIOCAMPO
--WHERE IDINGRESOSALIDAACOPIOCAMPO = '_3ZE0Q564T24818'

--DATOS RELEVANTES EN DINGRESOSALIDAACOPIOCAMPO
SELECT IDINGRESOSALIDAACOPIOCAMPO,ITEM, IDPRODUCTO,DESCRIPCION, FECHACREACION, IDMEDIDA,
IDCONSUMIDOR, IDCAMPANA, IDEMPAQUE, PESOBRUTO, PESOTARA, PESONETO,NROJABAS,
IDCULTIVO, IDVARIEDAD,DSC_VARIEDAD FROM DINGRESOSALIDAACOPIOCAMPO
--WHERE IDINGRESOSALIDAACOPIOCAMPO = '_3ZE0Q564T24818'

--DATOS RELEVANTES EN PRODUCTOS
SELECT IDPRODUCTO, ES_DESCARTE,ES_TERMINADO, IDGRUPO,IDSUBGRUPO
--- PARA_EXPORTACION: 1-SI , 0-NO
,PARA_EXPORTACION, DESCRIPCION, IDMEDIDA, IDCONDICION, IDINSUMO, IDTALLA,
IDCULTIVO, IDVARIEDAD   FROM PRODUCTOS
where IDGRUPO in ('2100', '2101', '2300')


