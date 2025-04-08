/*REMOVE FK RESTRICTIONS*/

SET FOREIGN_KEY_CHECKS = 0;

/*GET TEXT WITH ALL 'DROP TABLE ...'*/

SELECT CONCAT('DROP TABLE IF EXISTS `', table_name, '`;') 
FROM information_schema.tables 
WHERE table_schema = 'whzjr$zzzcalculator';


/*OPEN SQL FILE FOR DB*/

SOURCE databases/zzzcalculator.sql