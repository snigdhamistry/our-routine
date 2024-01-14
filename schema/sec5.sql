CREATE TABLE `sec5`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `day` INT NOT NULL,
    `period` INT NOT NULL,
    `subject` INT NULL,
    `teacher` INT NULL
);

ALTER TABLE `sec5`
ADD PRIMARY KEY `sec5_id_primary`(`id`);

ALTER TABLE `sec5` 
ADD CONSTRAINT `sec5_teacher_foreign`
FOREIGN KEY(`teacher`)
REFERENCES `teachers`(`id`);

ALTER TABLE `sec5` 
ADD CONSTRAINT `sec5_subject_foreign`
FOREIGN KEY(`subject`)
REFERENCES `subjects`(`id`);

ALTER TABLE `sec5` 
ADD CONSTRAINT `sec5_day_foreign`
FOREIGN KEY(`day`)
REFERENCES `weekdays`(`id`);

ALTER TABLE `sec5` 
ADD CONSTRAINT `sec5_period_foreign`
FOREIGN KEY(`period`)
REFERENCES `periods`(`id`);
