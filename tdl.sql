CREATE TABLE `Users` (
	`idName` INT(30) NOT NULL,
	`Name` VARCHAR(30) NOT NULL,
	`e-mail` VARCHAR(30) NOT NULL,
	`task` VARCHAR(30) NOT NULL,
	`idTask` INT(30) NOT NULL,
	PRIMARY KEY (`idName`)
);

CREATE TABLE `Task` (
	`idTask` VARCHAR(255) NOT NULL,
	`Task` VARCHAR(255) NOT NULL,
	`state` BOOLEAN NOT NULL,
	PRIMARY KEY (`idTask`)
);

ALTER TABLE `Users` ADD CONSTRAINT `Users_fk0` FOREIGN KEY (`idTask`) REFERENCES `Task`(`idTask`);

