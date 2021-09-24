
CREATE TABLE IF NOT EXISTS species(
  id INT AUTO_INCREMENT NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name VARCHAR(255) COMMENT 'Scientific Name',
  commonName varchar(255) NOT NULL COMMENT 'Common Name',
  genusId int NOT NULL comment 'Genus ID',
  familyId int NOT NULL comment 'Family ID',
  lifecycleId int NOT NULL comment 'Foreign Key: Lifecycle ID',
  habitId int NOT NULL comment 'Foreign Key: Habit ID',
  FOREIGN KEY (genusId) REFERENCES genus(id),
  FOREIGN KEY (familyId) REFERENCES familys(id),
  FOREIGN KEY (lifecycleId) REFERENCES lifecycles(id),
  FOREIGN KEY (habitId) REFERENCES habits(id)
) default charset utf8 COMMENT '';
CREATE TABLE IF NOT EXISTS flowerColors(
  id INT AUTO_INCREMENT NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) NOT NULL COMMENT 'Color Name'
) default charset utf8 COMMENT '';
CREATE TABLE speciesColors(
  id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
  speciesId int NOT NULL comment 'Species ID',
  flowerColorId int NOT NULL comment 'Color ID',
  FOREIGN KEY (speciesId) REFERENCES species(id),
  FOREIGN KEY (flowerColorId) REFERENCES flowerColors(id)
) default charset utf8 comment '';
CREATE TABLE IF NOT EXISTS habits(
  id INT AUTO_INCREMENT NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) NOT NULL COMMENT 'Habit Name'
) default charset utf8 COMMENT '';
CREATE TABLE IF NOT EXISTS lifecycles(
  id INT AUTO_INCREMENT NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) NOT NULL COMMENT 'Lifecycle Name'
) default charset utf8 COMMENT '';
CREATE TABLE IF NOT EXISTS familys(
  id INT AUTO_INCREMENT NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) NOT NULL COMMENT 'Family Name'
) default charset utf8 COMMENT '';
CREATE TABLE IF NOT EXISTS genus(
  id INT AUTO_INCREMENT NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) NOT NULL COMMENT 'Genus Name'
) default charset utf8 COMMENT '';