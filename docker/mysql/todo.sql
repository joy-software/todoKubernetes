use dbapp;
CREATE TABLE if not exists `todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL Default 0 COMMENT '0 for not completed, 1 for completed, 2 for hidden',
  `date_time` datetime NULL
);
