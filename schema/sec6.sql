CREATE TABLE `sec6`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `day` INT NOT NULL,
    `period` INT NOT NULL,
    `subject` INT NULL,
    `teacher` INT NULL
);

ALTER TABLE `sec6`
ADD PRIMARY KEY `sec6_id_primary`(`id`);

ALTER TABLE `sec6` 
ADD CONSTRAINT `sec6_teacher_foreign`
FOREIGN KEY(`teacher`)
REFERENCES `teachers`(`id`);

ALTER TABLE `sec6` 
ADD CONSTRAINT `sec6_subject_foreign`
FOREIGN KEY(`subject`)
REFERENCES `subjects`(`id`);

ALTER TABLE `sec6` 
ADD CONSTRAINT `sec6_day_foreign`
FOREIGN KEY(`day`)
REFERENCES `weekdays`(`id`);

ALTER TABLE `sec6` 
ADD CONSTRAINT `sec6_period_foreign`
FOREIGN KEY(`period`)
REFERENCES `periods`(`id`);
