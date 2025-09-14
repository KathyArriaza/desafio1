SELECT * FROM db_roaming_costarica.dbo.vw_movimientos
UNION ALL
SELECT * FROM db_roaming_guatemala.dbo.vw_movimientos
UNION ALL
SELECT * FROM  db_roaming_honduras.dbo.vw_movimientos;
