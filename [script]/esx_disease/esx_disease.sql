INSERT INTO `items` (name, label) VALUES
  ('sciroppo','斯斯感冒膠囊'),
  ('antibiotico','金十字胃腸藥'),
  ('antibioticorosacea','皮膚病藥膏')
;

ALTER TABLE `users` ADD `malato` varchar(255) COLLATE utf8mb4_bin DEFAULT 'no';
