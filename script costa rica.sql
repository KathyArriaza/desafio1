USE db_roaming_costarica;
GO
CREATE OR ALTER VIEW dbo.vw_movimientos AS
SELECT
    pais            = CAST('Costa Rica' AS varchar(20)),
    f.idfacturacion,
    f.idcliente,
    c.idtipocliente,
    tipo_cliente    = tc.nombre_tipo,
    monto           = CAST(f.monto_facturacion AS decimal(18,2)),
    estado          = c.estado
FROM dbo.facturacion f
JOIN dbo.cliente c        ON c.idcliente = f.idcliente
JOIN dbo.tipo_clientes tc ON tc.idtipocliente = c.idtipocliente;
GO
