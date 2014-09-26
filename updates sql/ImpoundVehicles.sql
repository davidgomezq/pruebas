ALTER TABLE `vehicles`
  ADD COLUMN `impound` TINYINT(1) NOT NULL DEFAULT '0' AFTER `inventory`,
  ADD COLUMN `impound_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `impound`;

DELIMITER //
DROP PROCEDURE IF EXISTS `impoundVehicles`;
CREATE DEFINER=`root`@`localhost` PROCEDURE `impoundVehicles`()
    COMMENT 'Comprobacion de la fecha de embargo'
BEGIN
	UPDATE vehicles SET impound = 0 AND impound_time = CURRENT_TIMESTAMP WHERE impound = 1 AND impound_time < CURRENT_TIMESTAMP;
END//
DELIMITER ;

