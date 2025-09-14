WITH U AS (
   SELECT * FROM db_roaming_costarica.dbo.vw_movimientos
   UNION ALL SELECT * FROM db_roaming_guatemala.dbo.vw_movimientos
   UNION ALL SELECT * FROM db_roaming_honduras.dbo.vw_movimientos
)
SELECT
    tipo_cliente,
    total_ventas       = COUNT(1),
    total_facturacion  = SUM(monto)
FROM U
GROUP BY tipo_cliente
ORDER BY total_facturacion DESC, tipo_cliente;
