CREATE TABLE `weekdays`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` TEXT NOT NULL
);

ALTER TABLE `weekdays`
ADD PRIMARY KEY `weekdays_id_primary`(`id`);


CREATE TABLE `periods`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `start_time` TEXT NOT NULL,
    `end_time` TEXT NOT NULL
);

ALTER TABLE `periods`
ADD PRIMARY KEY `periods_id_primary`(`id`);


CREATE TABLE `subjects`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` TEXT NOT NULL
);

ALTER TABLE `subjects`
ADD PRIMARY KEY `subjects_id_primary`(`id`);


CREATE TABLE `teachers`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` TEXT NOT NULL
);

ALTER TABLE `teachers`
ADD PRIMARY KEY `teachers_id_primary`(`id`);
