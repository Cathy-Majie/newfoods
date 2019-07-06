SET NAMES UTF8;
DROP DATABASE IF EXISTS food;
CREATE DATABASE food CHARSET=UTF8;
USE food;
CREATE TABLE t_login(
 id INT PRIMARY KEY AUTO_INCREMENT,
 uname VARCHAR(25),
 upass VARCHAR(32)
);
INSERT INTO t_login VALUES(null,'tom',md5('123'));
INSERT INTO t_login VALUES(null,'jerry',md5('123'));
INSERT INTO t_login VALUES(null,'Cathy',md5('456'));
INSERT INTO t_login VALUES(null,'Jack',md5('345'));

CREATE TABLE index1(
    id INT PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(32),
     img VARCHAR(255),
    detail VARCHAR(128)
);
INSERT INTO index1 VALUES(null,"茭白",'s1.jpg',"初夏美人腿");
INSERT INTO index1 VALUES(null,"茼蒿",'s2.jpg',"宫廷佳肴皇帝菜");
INSERT INTO index1 VALUES(null,"桑葚",'s3.jpg',"水果中的小家碧玉");
INSERT INTO index1 VALUES(null,"西瓜",'s4.jpg',"群众宠儿");
INSERT INTO index1 VALUES(null,"茄子",'s5.png',"微笑的代名词");
INSERT INTO index1 VALUES(null,"西兰花",'s6.jpg',"蔬菜皇冠");
INSERT INTO index1 VALUES(null,"毛豆",'s7.jpg',"夏日圣豆");
SELECT * FROM index1;

CREATE TABLE foods(
    id INT PRIMARY KEY AUTO_INCREMENT,
    iname VARCHAR(32)
);
INSERT INTO foods VALUES(null,"鸡肉");
INSERT INTO foods VALUES(null,"鸡翅");
INSERT INTO foods VALUES(null,"鸡蛋");
INSERT INTO foods VALUES(null,"牛肉");
INSERT INTO foods VALUES(null,"猪肉");
INSERT INTO foods VALUES(null,"排骨");
INSERT INTO foods VALUES(null,"小龙虾");
INSERT INTO foods VALUES(null,"皮皮虾");
INSERT INTO foods VALUES(null,"螃蟹");
INSERT INTO foods VALUES(null,"虾");
INSERT INTO foods VALUES(null,"扇贝");
INSERT INTO foods VALUES(null,"生蚝");
INSERT INTO foods VALUES(null,"黄瓜");
INSERT INTO foods VALUES(null,"茄子");
INSERT INTO foods VALUES(null,"西红柿");
INSERT INTO foods VALUES(null,"土豆");
INSERT INTO foods VALUES(null,"黑木耳");
INSERT INTO foods VALUES(null,"秋葵");
SELECT * FROM foods;

CREATE TABLE foods1(
    id INT PRIMARY KEY AUTO_INCREMENT,
    iname1 VARCHAR(32)
);
INSERT INTO foods1 VALUES(null,"猪肉");
INSERT INTO foods1 VALUES(null,"排骨");
INSERT INTO foods1 VALUES(null,"里脊");
INSERT INTO foods1 VALUES(null,"猪蹄");
INSERT INTO foods1 VALUES(null,"五花肉");
INSERT INTO foods1 VALUES(null,"肋排");
INSERT INTO foods1 VALUES(null,"牛肉");
INSERT INTO foods1 VALUES(null,"牛排");
INSERT INTO foods1 VALUES(null,"肥牛");
INSERT INTO foods1 VALUES(null,"羊肉");
INSERT INTO foods1 VALUES(null,"猪肝");
INSERT INTO foods1 VALUES(null,"猪肘");
INSERT INTO foods1 VALUES(null,"火腿");
INSERT INTO foods1 VALUES(null,"香肠");
INSERT INTO foods1 VALUES(null,"培根");
INSERT INTO foods1 VALUES(null,"腊肠");
INSERT INTO foods1 VALUES(null,"肉松");
INSERT INTO foods1 VALUES(null,"整鸡");
INSERT INTO foods1 VALUES(null,"鸡肉");
INSERT INTO foods1 VALUES(null,"鸡翅");
INSERT INTO foods1 VALUES(null,"鸡腿");
INSERT INTO foods1 VALUES(null,"乌鸡");
INSERT INTO foods1 VALUES(null,"鸭肉");
INSERT INTO foods1 VALUES(null,"乳鸽");
INSERT INTO foods1 VALUES(null,"鸡蛋");
INSERT INTO foods1 VALUES(null,"鸭蛋");
INSERT INTO foods1 VALUES(null,"鸭脖");
INSERT INTO foods1 VALUES(null,"鹅肝");
INSERT INTO foods1 VALUES(null,"鹌鹑");
INSERT INTO foods1 VALUES(null,"更多");
SELECT * FROM foods1;

CREATE TABLE foods2(
    id INT PRIMARY KEY AUTO_INCREMENT,
    iname2 VARCHAR(32)
);
INSERT INTO foods2 VALUES(null,"鳕鱼");
INSERT INTO foods2 VALUES(null,"鲅鱼");
INSERT INTO foods2 VALUES(null,"鲳鱼");
INSERT INTO foods2 VALUES(null,"鳗鱼");
INSERT INTO foods2 VALUES(null,"三文鱼");
INSERT INTO foods2 VALUES(null,"胖头鱼");
INSERT INTO foods2 VALUES(null,"罗非鱼");
INSERT INTO foods2 VALUES(null,"秋刀鱼");
INSERT INTO foods2 VALUES(null,"多宝鱼");
INSERT INTO foods2 VALUES(null,"鱼籽");
INSERT INTO foods2 VALUES(null,"鱼尾");
INSERT INTO foods2 VALUES(null,"鱼丸");
INSERT INTO foods2 VALUES(null,"小龙虾");
INSERT INTO foods2 VALUES(null,"虾");
INSERT INTO foods2 VALUES(null,"龙虾");
INSERT INTO foods2 VALUES(null,"螃蟹");
INSERT INTO foods2 VALUES(null,"大闸蟹");
INSERT INTO foods2 VALUES(null,"皮皮虾");
INSERT INTO foods2 VALUES(null,"牡蛎");
INSERT INTO foods2 VALUES(null,"扇贝");
INSERT INTO foods2 VALUES(null,"生蚝");
INSERT INTO foods2 VALUES(null,"蛤蜊");
INSERT INTO foods2 VALUES(null,"蛏子");
INSERT INTO foods2 VALUES(null,"鲍鱼");
INSERT INTO foods2 VALUES(null,"海蜇");
INSERT INTO foods2 VALUES(null,"鱿鱼");
INSERT INTO foods2 VALUES(null,"海参");
INSERT INTO foods2 VALUES(null,"海带");
INSERT INTO foods2 VALUES(null,"紫菜");
INSERT INTO foods2 VALUES(null,"更多");
SELECT * FROM foods2;

CREATE TABLE foods3(
    id INT PRIMARY KEY AUTO_INCREMENT,
    iname3 VARCHAR(32)
);
INSERT INTO foods3 VALUES(null,"大白菜");
INSERT INTO foods3 VALUES(null,"娃娃菜");
INSERT INTO foods3 VALUES(null,"芦蒿");
INSERT INTO foods3 VALUES(null,"莴笋");
INSERT INTO foods3 VALUES(null,"油麦菜");
INSERT INTO foods3 VALUES(null,"芦笋");
INSERT INTO foods3 VALUES(null,"土豆");
INSERT INTO foods3 VALUES(null,"红薯");
INSERT INTO foods3 VALUES(null,"芋头");
INSERT INTO foods3 VALUES(null,"洋葱");
INSERT INTO foods3 VALUES(null,"萝卜");
INSERT INTO foods3 VALUES(null,"山药");
INSERT INTO foods3 VALUES(null,"西红柿");
INSERT INTO foods3 VALUES(null,"藕");
INSERT INTO foods3 VALUES(null,"豆角");
INSERT INTO foods3 VALUES(null,"茄子");
INSERT INTO foods3 VALUES(null,"青椒");
INSERT INTO foods3 VALUES(null,"菜花");
INSERT INTO foods3 VALUES(null,"豇豆");
INSERT INTO foods3 VALUES(null,"秋葵");
INSERT INTO foods3 VALUES(null,"毛豆");
INSERT INTO foods3 VALUES(null,"四季豆");
INSERT INTO foods3 VALUES(null,"黄瓜");
INSERT INTO foods3 VALUES(null,"冬瓜");
INSERT INTO foods3 VALUES(null,"西湖瓜");
INSERT INTO foods3 VALUES(null,"黑木耳");
INSERT INTO foods3 VALUES(null,"蘑菇");
INSERT INTO foods3 VALUES(null,"香菇");
INSERT INTO foods3 VALUES(null,"金针菇");
INSERT INTO foods3 VALUES(null,"杏鲍菇");
INSERT INTO foods3 VALUES(null,"苓白");
INSERT INTO foods3 VALUES(null,"竹笋");
INSERT INTO foods3 VALUES(null,"芹菜");
INSERT INTO foods3 VALUES(null,"香椿");
INSERT INTO foods3 VALUES(null,"马兰头");
INSERT INTO foods3 VALUES(null,"更多");
SELECT * FROM foods3;

CREATE TABLE foods4(
    id INT PRIMARY KEY AUTO_INCREMENT,
    iname4 VARCHAR(32)
);
INSERT INTO foods4 VALUES(null,"菠萝");
INSERT INTO foods4 VALUES(null,"草莓");
INSERT INTO foods4 VALUES(null,"芒果");
INSERT INTO foods4 VALUES(null,"木瓜");
INSERT INTO foods4 VALUES(null,"牛油果");
INSERT INTO foods4 VALUES(null,"百香果");
INSERT INTO foods4 VALUES(null,"栗子");
INSERT INTO foods4 VALUES(null,"花生");
INSERT INTO foods4 VALUES(null,"腰果");
INSERT INTO foods4 VALUES(null,"核桃");
INSERT INTO foods4 VALUES(null,"芝麻");
INSERT INTO foods4 VALUES(null,"莲子");
INSERT INTO foods4 VALUES(null,"枸杞");
INSERT INTO foods4 VALUES(null,"桂圆");
INSERT INTO foods4 VALUES(null,"黑芝麻");
INSERT INTO foods4 VALUES(null,"红枣");
INSERT INTO foods4 VALUES(null,"蓝莓");
INSERT INTO foods4 VALUES(null,"更多");
SELECT * FROM foods4;

CREATE TABLE foods5(
    id INT PRIMARY KEY AUTO_INCREMENT,
    iname5 VARCHAR(32)
);
INSERT INTO foods5 VALUES(null,"糯米");
INSERT INTO foods5 VALUES(null,"小米");
INSERT INTO foods5 VALUES(null,"齐麦米");
INSERT INTO foods5 VALUES(null,"玉米");
INSERT INTO foods5 VALUES(null,"燕麦");
INSERT INTO foods5 VALUES(null,"米粉");
INSERT INTO foods5 VALUES(null,"面条");
INSERT INTO foods5 VALUES(null,"意大利面");
INSERT INTO foods5 VALUES(null,"糯米粉");
INSERT INTO foods5 VALUES(null,"红豆");
INSERT INTO foods5 VALUES(null,"绿豆");
INSERT INTO foods5 VALUES(null,"黄豆");
INSERT INTO foods5 VALUES(null,"豆腐");
INSERT INTO foods5 VALUES(null,"豆浆");
INSERT INTO foods5 VALUES(null,"腐竹");
INSERT INTO foods5 VALUES(null,"豆油腐");
INSERT INTO foods5 VALUES(null,"烤麦");
INSERT INTO foods5 VALUES(null,"豆皮");
INSERT INTO foods5 VALUES(null,"淡奶油");
INSERT INTO foods5 VALUES(null,"奶酪");
INSERT INTO foods5 VALUES(null,"酸奶");
INSERT INTO foods5 VALUES(null,"牛奶");
INSERT INTO foods5 VALUES(null,"芝士");
INSERT INTO foods5 VALUES(null,"巧克力");
INSERT INTO foods5 VALUES(null,"粉皮");
INSERT INTO foods5 VALUES(null,"粉丝");
INSERT INTO foods5 VALUES(null,"年糕");
INSERT INTO foods5 VALUES(null,"粉条");
INSERT INTO foods5 VALUES(null,"粉河");
INSERT INTO foods5 VALUES(null,"更多");
SELECT * FROM foods5;

CREATE TABLE foods6(
    id INT PRIMARY KEY AUTO_INCREMENT,
    iname6 VARCHAR(32)
);
INSERT INTO foods6 VALUES(null,"番茄酱");
INSERT INTO foods6 VALUES(null,"番茄沙司");
INSERT INTO foods6 VALUES(null,"豆瓣酱");
INSERT INTO foods6 VALUES(null,"豆瓣");
INSERT INTO foods6 VALUES(null,"豆豉");
INSERT INTO foods6 VALUES(null,"芥末酱");
INSERT INTO foods6 VALUES(null,"蜂蜜");
INSERT INTO foods6 VALUES(null,"醪糟");
INSERT INTO foods6 VALUES(null,"酱油");
INSERT INTO foods6 VALUES(null,"鸡精");
INSERT INTO foods6 VALUES(null,"干黄酱");
INSERT INTO foods6 VALUES(null,"更多");
SELECT * FROM foods6;

CREATE TABLE foods7(
    id INT PRIMARY KEY AUTO_INCREMENT,
    iname7 VARCHAR(32)
);
INSERT INTO foods7 VALUES(null,"燕窝");
INSERT INTO foods7 VALUES(null,"阿胶");
INSERT INTO foods7 VALUES(null,"雪蛤");
INSERT INTO foods7 VALUES(null,"茯苓");
INSERT INTO foods7 VALUES(null,"党参");
INSERT INTO foods7 VALUES(null,"当归");
INSERT INTO foods7 VALUES(null,"银耳");
INSERT INTO foods7 VALUES(null,"枣");
INSERT INTO foods7 VALUES(null,"百合");
INSERT INTO foods7 VALUES(null,"黄芪");
INSERT INTO foods7 VALUES(null,"花胶");
INSERT INTO foods7 VALUES(null,"更多");
SELECT * FROM foods7;
