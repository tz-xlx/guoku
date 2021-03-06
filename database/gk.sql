SET NAMES UTF8;
DROP DATABASE IF EXISTS gk;
CREATE DATABASE gk CHARSET=UTF8;
USE gk;

/*果酷水果家族分类*/
CREATE TABLE gk_fruit_family(
	fid INT PRIMARY KEY AUTO_INCREMENT,
	fname VARCHAR(32)
);
/*果酷水果家族分类数据导入*/
INSERT INTO gk_fruit_family VALUES
/*专利分格 超级果盒 三分果盒 二分果盒 迷你果盒 */
(NULL,'专利分格'),
/*彩虹果杯 大型果杯 中型果杯 标准果杯 迷你果杯*/
(NULL,'彩虹果杯'),
/*进口水果 热带水果*/
(NULL,'进口水果'),
/*国产水果 时令水果*/
(NULL,'国产水果');

/*果酷水果家族分类详情*/
CREATE TABLE gk_fruit_children(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	cname VARCHAR(32)
);
/*果酷水果家族分类详情数据导入*/
INSERT INTO gk_fruit_children VALUES
/*专利分格 超级果盒 三分果盒 二分果盒 迷你果盒 */
(NULL,'超级果盒'),
(NULL,'三分果盒'),
(NULL,'二分果盒'),
(NULL,'迷你果盒'),
/*彩虹果杯 大型果杯 中型果杯 标准果杯 迷你果杯*/
(NULL,'大型果杯'),
(NULL,'中型果杯'),
(NULL,'标准果杯'),
(NULL,'迷你果杯'),
/*进口水果 热带水果 冷冻榴莲 车厘子 奇异果*/
(NULL,'热带水果'),
(NULL,'冷冻榴莲'),
(NULL,'车厘子'),
(NULL,'奇异果'),
/*国产水果 时令水果 瓜/甜瓜 苹果*/
(NULL,'时令水果'),
(NULL,'瓜/甜瓜'),
(NULL,'苹果');

/*果酷水果分类详情*/
CREATE TABLE gk_fruit(
	lid INT PRIMARY KEY AUTO_INCREMENT,
	family_id INT,	                   #所属分类家族编号
	children_id INT,
	title VARCHAR(64),                #标题
	price DECIMAL(10,2),               #价格
	href VARCHAR(128),
	spec VARCHAR(64),                  #规格
	category VARCHAR(256),             #选择品类
	weight VARCHAR(23),	           #净重
	pic VARCHAR(20000)
);
/*果酷水果分类详情数据导入*/
INSERT INTO  gk_fruit VALUES
(1,1,1,'超级果盒：应季流行',25,'gk.product.details.html?lid=1','应季流行','海南玉菇蜜瓜+海南黑美人西瓜+山东丰水梨+海南圣女果||辽宁黄元帅苹果+海南无籽西瓜+海南圣女果+河北皇冠梨||山东冬枣+四川红提+海南菠萝+山东丰水梨||湖北脐橙+河北水果黄瓜+河北皇冠梨+福建白心柚||海南西州蜜+河北水果黄瓜+福建白心柚+海南菠萝','500g/盒','img/product/md/superboxyjlx1.jpg'),
(2,1,1,'超级果盒：特别推荐',27,'gk.product.details.html?lid=2','特别推荐','福建红心柚+海南西州蜜+山东丰水梨+海南圣女果||冰糖巨峰葡萄+湖北脐橙+海南圣女果+河北皇冠梨||甘肃花牛苹果+山东冬枣+河北皇冠梨+福建白心柚||南非甜橙+辽宁黄元帅苹果+海南菠萝+山东丰水梨||海南千禧圣女果+海南玉菇蜜瓜+福建白心柚+海南菠萝','500g/盒','img/product/md/superboxspecial1.jpg'),
(3,1,1,'超级果盒：明星主打',29,'gk.product.details.html?lid=3','明星主打','福建红心柚+海南西州蜜+海南黑美人西瓜+四川红提||冰糖巨峰葡萄+湖北脐橙+海南无籽西瓜+四川红提||甘肃花牛苹果+山东冬枣+四川红提+河北水果黄瓜||南非甜橙+辽宁黄元帅苹果+山东久红瑞蜜瓜+海南黑美人西瓜||海南千禧圣女果+海南玉菇蜜瓜+河北水果黄瓜+四川红提','500g/盒','img/product/md/superboxminxin1.jpg'),
(4,1,1,'超级果盒：高级赏味',35,'gk.product.details.html?lid=4','高级赏味','云南红凯特芒果+山东80富士苹果+山东丰水梨+海南圣女果||越南白心火龙果+河北红宝石葡萄+海南圣女果+河北皇冠梨||菲律宾凤梨+广东金桔+河北皇冠梨+福建白心柚||海南木瓜+吉林姑娘果+海南菠萝+山东丰水梨||海南网纹蜜瓜+越南龙眼+福建白心柚+海南菠萝','500g/盒','img/product/md/superboxgjsw1.jpg'),
(5,1,1,'超级果盒：特级精选',39,'gk.product.details.html?lid=5','特级精选','云南红凯特芒果+山东80富士苹果+海南千禧圣女果+南非甜橙||越南白心火龙果+河北红宝石葡萄+南非甜橙+甘肃花牛苹果||菲律宾凤梨+广东金桔+甘肃花牛苹果+冰糖巨峰葡萄||海南木瓜+吉林姑娘果+福建红心柚+海南千禧圣女果||海南网纹蜜瓜+越南龙眼+福建红心柚+冰糖巨峰葡萄','500g/盒','img/product/md/superboxtjjx1.jpg'),
(6,1,1,'超级果盒：季节限定',39,'gk.product.details.html?lid=6','季节限定','越南龙眼+海南千禧圣女果+海南西州蜜+湖北脐橙||吉林姑娘果+南非甜橙+海南西州蜜+山东冬枣||广东金桔+甘肃花牛苹果+山东冬枣+辽宁黄元帅苹果||河北红宝石葡萄+甘肃花牛苹果+海南玉菇蜜瓜+湖北脐橙||山东80富士苹果+福建红心柚+海南玉菇蜜瓜+山东冬枣','500g/盒','img/product/md/superboxjjxd1.jpg'),
(7,1,2,'三分果盒：应季流行',14,'gk.product.details.html?lid=7','应季流行','山山东久红瑞蜜瓜+山东丰水梨+海南圣女果||河北水果黄瓜+海南圣女果+河北皇冠梨||四川红提+福建白心柚+河北皇冠梨||海南无籽西瓜+福建白心柚+河北皇冠梨||海南黑美人西瓜+海南菠萝+山东丰水梨','300g/盒','img/product/md/threeboxyjlx1.jpg'),
(8,1,2,'三分果盒：特别推荐',17,'gk.product.details.html?lid=8','特别推荐','海南玉菇蜜瓜+海南黑美人西瓜+四川红提||辽宁黄元帅苹果+海南无籽西瓜+四川红提||山东冬枣+四川红提+河北水果黄瓜||湖北脐橙+河北水果黄瓜+山东久红瑞蜜瓜||海南西州蜜+河北水果黄瓜+四川红提','300g/盒','img/product/md/threeboxspecial1.jpg'),
(9,1,2,'三分果盒：明星主打',19,'gk.product.details.html?lid=9','明星主打','福建红心柚+海南玉菇蜜瓜+湖北脐橙||冰糖巨峰葡萄+海南西州蜜+湖北脐橙||甘肃花牛苹果+湖北脐橙+山东冬枣||南非甜橙+山东冬枣+辽宁黄元帅苹果||海南千禧圣女果+辽宁黄元帅苹果+海南玉菇蜜瓜','300g/盒','img/product/md/threeboxminxin1.jpg'),
(10,1,2,'三分果盒：高级赏味',22,'gk.product.details.html?lid=10','高级赏味','云南红凯特芒果+山东丰水梨+海南圣女果||越南白心火龙果+海南圣女果+河北皇冠梨||菲律宾凤梨+河北皇冠梨+福建白心柚||海南木瓜+福建白心柚+海南菠萝||海南网纹蜜瓜+海南菠萝+山东丰水梨','300g/盒','img/product/md/threeboxgjsw1.jpg'),
(11,1,2,'三分果盒：特级精选',27,'gk.product.details.html?lid=11','特级精选','云南红凯特芒果+山东80富士苹果+河北红宝石葡萄||越南白心火龙果+河北红宝石葡萄+广东金桔||菲律宾凤梨+广东金桔+吉林姑娘果||海南木瓜+越南龙眼+山东80富士苹果||海南网纹蜜瓜+越南龙眼+吉林姑娘果','300g/盒','img/product/md/threeboxtjjx1.jpg'),
(12,1,2,'三分果盒：季节限定',21,'gk.product.details.html?lid=12','季节限定','越南龙眼+海南千禧圣女果+南非甜橙||吉林姑娘果+海南千禧圣女果+南非甜橙||广东金桔+南非甜橙+甘肃花牛苹果||河北红宝石葡萄+甘肃花牛苹果+南非甜橙||山东80富士苹果+冰糖巨峰葡萄+福建红心柚','300g/盒','img/product/md/threeboxjjxd1.jpg'),
(13,1,3,'二分果盒：应季流行',9,'gk.product.details.html?lid=13','应季流行','海南菠萝+山东丰水梨||福建白心柚+海南圣女果||河北皇冠梨+海南圣女果||海南菠萝+海南圣女果||福建白心柚+山东丰水梨','200g/盒','img/product/md/twoboxyjlx1.jpg'),
(14,1,3,'二分果盒：特别推荐',10,'gk.product.details.html?lid=14','特别推荐','山东久红瑞蜜瓜+山东丰水梨||河北水果黄瓜+海南圣女果||四川红提+河北皇冠梨||海南无籽西瓜+福建白心柚||海南黑美人西瓜+海南菠萝','200g/盒','img/product/md/twoboxspecial1.jpg'),
(15,1,3,'二分果盒：明星主打',12,'gk.product.details.html?lid=15','明星主打','海南玉菇蜜瓜+海南黑美人西瓜||辽宁黄元帅苹果+海南无籽西瓜||山东冬枣+四川红提||湖北脐橙+河北水果黄瓜||海南西州蜜+河北水果黄瓜','200g/盒','img/product/md/twoboxminxin1.jpg'),
(16,1,3,'二分果盒：高级赏味',15,'gk.product.details.html?lid=16','高级赏味','越南龙眼+海南千禧圣女果||吉林姑娘果+南非甜橙||广东金桔+甘肃花牛苹果||河北红宝石葡萄+甘肃花牛苹果||山东80富士苹果+福建红心柚','200g/盒','img/product/md/twoboxgjsw1.jpg'),
(17,1,3,'二分果盒：特级精选',19,'gk.product.details.html?lid=17','特级精选','云南红凯特芒果+山东80富士苹果||越南白心火龙果+河北红宝石葡萄||菲律宾凤梨+广东金桔||海南木瓜+吉林姑娘果||海南网纹蜜瓜+越南龙眼','200g/盒','img/product/md/twoboxtjjx1.jpg'),
(18,1,3,'二分果盒：季节限定',13,'gk.product.details.html?lid=18','季节限定','福建红心柚+海南西州蜜||冰糖巨峰葡萄+湖北脐橙||甘肃花牛苹果+山东冬枣||南非甜橙+辽宁黄元帅苹果||海南千禧圣女果+海南玉菇蜜瓜','200g/盒','img/product/md/twoboxjjxd1.jpg'),
(19,1,4,'迷你果盒：应季流行',6,'gk.product.details.html?lid=19','应季流行','海南菠萝||福建白心柚||河北皇冠梨||海南圣女果||山东丰水梨','120g/盒','img/product/md/miniboxyjlx1.jpg'),
(20,1,4,'迷你果盒：特别推荐',7,'gk.product.details.html?lid=20','特别推荐','山东久红瑞蜜瓜||河北水果黄瓜||四川红提||海南无籽西瓜||海南黑美人西瓜','120g/盒','img/product/md/miniboxspecial1.jpg'),
(21,1,4,'迷你果盒：明星主打',8,'gk.product.details.html?lid=21','明星主打','海南西州蜜||湖北脐橙||山东冬枣||辽宁黄元帅||海南玉菇蜜瓜','120g/盒','img/product/md/miniboxminxin1.jpg'),
(22,1,4,'迷你果盒：高级赏味',10,'gk.product.details.html?lid=22','高级赏味','越南龙眼||吉林姑娘果||广东金桔||河北红宝石葡萄||山东80富士苹果','120g/盒','img/product/md/miniboxgjsw1.jpg'),
(23,1,4,'迷你果盒：特级精选',13,'gk.product.details.html?lid=23','特级精选','云南红凯特芒果||越南白心火龙果||菲律宾凤梨||海南木瓜||海南网纹蜜瓜','120g/盒','img/product/md/miniboxtjjx1.jpg'),
(24,1,4,'迷你果盒：季节限定',9,'gk.product.details.html?lid=24','季节限定','福建红心柚||冰糖巨峰葡萄||甘肃花牛苹果||南非甜橙||海南千禧圣女果','120g/盒','img/product/md/miniboxjjxd1.jpg'),
(25,2,5,'大型果杯：应季流行',22,'gk.product.details.html?lid=25','应季流行','海南玉菇蜜瓜+海南黑美人西瓜+山东丰水梨+海南圣女果+福建白心柚||辽宁黄元帅苹果+海南无籽西瓜+海南圣女果+河北皇冠梨+福建白心柚||湖北脐橙+河北水果黄瓜+山东丰水梨+福建白心柚+海南菠萝||海南西州蜜+河北水果黄瓜+海南菠萝+福建白心柚+河北皇冠梨','450g/杯','img/product/md/bigbeiyjlx1.jpg'),
(26,2,5,'大型果杯：特别推荐',24,'gk.product.details.html?lid=26','特别推荐','福建红心柚+海南西州蜜+山东丰水梨+海南圣女果+福建白心柚||冰糖巨峰葡萄+湖北脐橙+海南圣女果+河北皇冠梨+福建白心柚||甘肃花牛苹果+山东冬枣+海南菠萝+福建白心柚+山东丰水梨||南非甜橙+辽宁黄元帅苹果+山东丰水梨+福建白心柚+海南菠萝||海南千禧圣女果+海南玉菇蜜瓜+海南菠萝+福建白心柚+河北皇冠','450g/杯','img/product/md/bigbeispecial1.jpg'),
(27,2,5,'大型果杯：明星主打',25,'gk.product.details.html?lid=27','明星主打','福建红心柚+海南西州蜜+海南黑美人西瓜+四川红提+河北水果黄瓜||冰糖巨峰葡萄+湖北脐橙+海南无籽西瓜+四川红提+河北水果黄瓜||甘肃花牛苹果+山东冬枣+海南黑美人西瓜+四川红提+河北水果黄瓜||南非甜橙+辽宁黄元帅苹果+海南黑美人西瓜+河北水果黄瓜+山东久红瑞蜜瓜||海南千禧圣女果+海南玉菇蜜瓜+河北水果黄瓜+四川红提+海南无籽西瓜','450g/杯','img/product/md/bigbeiminxin1.jpg'),
(28,2,5,'大型果杯：高级赏味',31,'gk.product.details.html?lid=28','高级赏味','云南红凯特芒果+山东80富士苹果+山东丰水梨+海南圣女果+福建白心柚||越南白心火龙果+河北红宝石葡萄+山东丰水梨+海南圣女果+福建白心柚||菲律宾凤梨+广东金桔+海南圣女果+河北皇冠梨+福建白心柚||海南木瓜+吉林姑娘果+山东丰水梨+福建白心柚+海南菠萝||海南网纹蜜瓜+越南龙眼+河北皇冠梨+福建白心柚+海南菠萝','450g/杯','img/product/md/bigbeigjsw1.jpg'),
(29,2,5,'大型果杯：特级精选',35,'gk.product.details.html?lid=29','特级精选','云南红凯特芒果+山东80富士苹果+海南千禧圣女果+南非甜橙+冰糖巨峰葡萄||越南白心火龙果+河北红宝石葡萄+海南千禧圣女果+南非甜橙+甘肃花牛苹果||菲律宾凤梨+广东金桔+海南千禧圣女果+甘肃花牛苹果+冰糖巨峰葡萄||海南木瓜+吉林姑娘果+海南千禧圣女果+冰糖巨峰葡萄+福建红心柚||海南网纹蜜瓜+越南龙眼+福建红心柚+冰糖巨峰葡萄+甘肃花牛苹果瓜','450g/杯','img/product/md/bigbeitjjx1.jpg'),
(30,2,5,'大型果杯：季节限定',29,'gk.product.details.html?lid=30','季节限定','越南龙眼+海南千禧圣女果+海南西州蜜+湖北脐橙+山东冬枣||吉林姑娘果+南非甜橙+湖北脐橙+山东冬枣+辽宁黄元帅苹果||广东金桔+湖北脐橙+海南西州蜜+山东冬枣+辽宁黄元帅苹果||河北红宝石葡萄+福建红心柚+海南玉菇蜜瓜+辽宁黄元帅苹果+湖北脐橙||山东80富士苹果+福建红心柚+海南玉菇蜜瓜+山东冬枣+湖北脐橙','450g/杯','img/product/md/bigbeijjxd1.jpg'),

(31,2,6,'中型果杯：应季流行',17,'gk.product.details.html?lid=31','应季流行','海南玉菇蜜瓜+海南黑美人西瓜+山东丰水梨+海南圣女果||辽宁黄元帅苹果+海南无籽西瓜+海南圣女果+河北皇冠梨||山东冬枣+四川红提+海南菠萝+山东丰水梨||湖北脐橙+河北水果黄瓜+河北皇冠梨+福建白心柚||海南西州蜜+河北水果黄瓜+福建白心柚+海南菠萝','350g/杯','img/product/md/midbeiyjlx1.jpg'),
(32,2,6,'中型果杯：特别推荐',19,'gk.product.details.html?lid=32','特别推荐','福建红心柚+海南西州蜜+山东丰水梨+海南圣女果||冰糖巨峰葡萄+湖北脐橙+海南圣女果+河北皇冠梨||甘肃花牛苹果+山东冬枣+河北皇冠梨+福建白心柚||南非甜橙+辽宁黄元帅苹果+海南菠萝+山东丰水梨||海南千禧圣女果+海南玉菇蜜瓜+福建白心柚+海南菠萝','350g/杯','img/product/md/midbeispecial1.jpg'),
(33,2,6,'中型果杯：明星主打',20,'gk.product.details.html?lid=33','明星主打','福建红心柚+海南西州蜜+海南黑美人西瓜+四川红提||冰糖巨峰葡萄+湖北脐橙+海南无籽西瓜+四川红提||甘肃花牛苹果+山东冬枣+四川红提+河北水果黄瓜||南非甜橙+辽宁黄元帅苹果+山东久红瑞蜜瓜+海南黑美人西瓜||海南千禧圣女果+海南玉菇蜜瓜+河北水果黄瓜+四川红提','350g/杯','img/product/md/midbeiminxin1.jpg'),
(34,2,6,'中型果杯：高级赏味',25,'gk.product.details.html?lid=34','高级赏味','云南红凯特芒果+山东丰水梨+海南圣女果||越南白心火龙果+海南圣女果+河北皇冠梨||菲律宾凤梨+广东金桔+河北皇冠梨+福建白心柚||菲律宾凤梨+广东金桔+河北皇冠梨+福建白心柚||海南网纹蜜瓜+越南龙眼+福建白心柚+海南菠萝','350g/杯','img/product/md/midbeigjsw1.jpg'),
(35,2,6,'中型果杯：特级精选',28,'gk.product.details.html?lid=35','特级精选','云南红凯特芒果+山东80富士苹果+海南千禧圣女果+南非甜橙||越南白心火龙果+河北红宝石葡萄+南非甜橙+甘肃花牛苹果||菲律宾凤梨+广东金桔+甘肃花牛苹果+冰糖巨峰葡萄||海南木瓜+吉林姑娘果+福建红心柚+海南千禧圣女果||海南网纹蜜瓜+越南龙眼+福建红心柚+冰糖巨峰葡萄','350g/杯','img/product/md/midbeitjjx1.jpg'),
(36,2,6,'中型果杯：季节限定',23,'gk.product.details.html?lid=36','季节限定','越南龙眼+海南千禧圣女果+海南西州蜜+湖北脐橙||吉林姑娘果+南非甜橙+海南西州蜜+山东冬枣||广东金桔+甘肃花牛苹果+山东冬枣+辽宁黄元帅苹果||河北红宝石葡萄+甘肃花牛苹果+海南玉菇蜜瓜+湖北脐橙||山东80富士苹果+福建红心柚+海南玉菇蜜瓜+山东冬枣','350g/杯','img/product/md/midbeijjxd1.jpg'),
(37,2,7,'标准果杯：应季流行',12,'gk.product.details.html?lid=37','应季流行','山东久红瑞蜜瓜+山东丰水梨+海南圣女果||河北水果黄瓜+海南圣女果+河北皇冠梨||四川红提+福建白心柚+河北皇冠梨||海南无籽西瓜+福建白心柚+河北皇冠梨||海南黑美人西瓜+海南菠萝+山东丰水梨','250g/杯','img/product/md/bzbeiyjlx1.jpg'),
(38,2,7,'标准果杯：特别推荐',14,'gk.product.details.html?lid=38','特别推荐','海南玉菇蜜瓜+海南黑美人西瓜+四川红提||辽宁黄元帅苹果+海南无籽西瓜+四川红提||山东冬枣+四川红提+河北水果黄瓜||湖北脐橙+河北水果黄瓜+山东久红瑞蜜瓜||海南西州蜜+河北水果黄瓜+四川红提','250g/杯','img/product/md/bzbeispecial1.jpg'),
(39,2,7,'标准果杯：明星主打',16,'gk.product.details.html?lid=39','明星主打','福建红心柚+海南玉菇蜜瓜+湖北脐橙||冰糖巨峰葡萄+海南西州蜜+湖北脐橙||甘肃花牛苹果+湖北脐橙+山东冬枣||南非甜橙+山东冬枣+辽宁黄元帅苹果||海南千禧圣女果+辽宁黄元帅苹果+海南玉菇蜜瓜','250g/杯','img/product/md/bzbeiminxin1.jpg'),
(40,2,7,'标准果杯：高级赏味',19,'gk.product.details.html?lid=40','高级赏味','云南红凯特芒果+山东丰水梨+海南圣女果||越南白心火龙果+海南圣女果+河北皇冠梨||菲律宾凤梨+河北皇冠梨+福建白心柚||海南木瓜+福建白心柚+海南菠萝||海南网纹蜜瓜+海南菠萝+山东丰水梨','250g/杯','img/product/md/bzbeigjsw1.jpg'),
(41,2,7,'标准果杯：特级精选',22,'gk.product.details.html?lid=41','特级精选','云南红凯特芒果+山东80富士苹果+河北红宝石葡萄||越南白心火龙果+河北红宝石葡萄+广东金桔||菲律宾凤梨+广东金桔+吉林姑娘果||海南木瓜+越南龙眼+山东80富士苹果||海南网纹蜜瓜+越南龙眼+吉林姑娘果','250g/杯','img/product/md/bzbeitjjx1.jpg'),
(42,2,7,'标准果杯：季节限定',18,'gk.product.details.html?lid=42','季节限定','越南龙眼+海南千禧圣女果+南非甜橙||吉林姑娘果+海南千禧圣女果+南非甜橙||广东金桔+南非甜橙+甘肃花牛苹果||河北红宝石葡萄+甘肃花牛苹果+南非甜橙||山东80富士苹果+冰糖巨峰葡萄+福建红心柚','250g/杯','img/product/md/bzbeijjxd1.jpg'),
(43,2,8,'迷你果杯：应季流行',7,'gk.product.details.html?lid=43','应季流行','海南菠萝+山东丰水梨||福建白心柚+海南圣女果||河北皇冠梨+海南圣女果||海南菠萝+海南圣女果||福建白心柚+山东丰水梨','150g/杯','img/product/md/minibeiyjlx1.jpg'),
(44,2,8,'迷你果杯：特别推荐',8,'gk.product.details.html?lid=44','特别推荐','山东久红瑞蜜瓜+山东丰水梨||河北水果黄瓜+海南圣女果||四川红提+河北皇冠梨||海南无籽西瓜+福建白心柚||海南黑美人西瓜+海南菠萝','150g/杯','img/product/md/minibeispecial1.jpg'),
(45,2,8,'迷你果杯：明星主打',9,'gk.product.details.html?lid=45','明星主打','海南玉菇蜜瓜+海南黑美人西瓜||辽宁黄元帅苹果+海南无籽西瓜||山东冬枣+四川红提||湖北脐橙+河北水果黄瓜||海南西州蜜+河北水果黄瓜','150g/杯','img/product/md/minibeiminxin1.jpg'),
(46,2,8,'迷你果杯：高级赏味',12,'gk.product.details.html?lid=46','高级赏味','越南龙眼+海南千禧圣女果||吉林姑娘果+南非甜橙||广东金桔+甘肃花牛苹果||河北红宝石葡萄+甘肃花牛苹果||山东80富士苹果+福建红心柚','150g/杯','img/product/md/minibeigjsw1.jpg'),
(47,2,8,'迷你果杯：特级精选',14,'gk.product.details.html?lid=47','特级精选','云南红凯特芒果+山东80富士苹果||越南白心火龙果+河北红宝石葡萄||菲律宾凤梨+广东金桔||海南木瓜+吉林姑娘果||海南网纹蜜瓜+越南龙眼','150g/杯','img/product/md/minibeitjjx1.jpg'),
(48,2,8,'迷你果杯：季节限定',10,'gk.product.details.html?lid=48','季节限定','福建红心柚+海南西州蜜||冰糖巨峰葡萄+湖北脐橙||甘肃花牛苹果+山东冬枣||南非甜橙+辽宁黄元帅苹果||海南千禧圣女果+海南玉菇蜜瓜','150g/杯','img/product/md/minibeijjxd1.jpg'),

(49,3,9,'越南白心火龙果2个',19.90,'gk.product.details.html?lid=49',NULL,NULL,'1KG/箱','img/product/md/rebxhl1.jpg'),
(50,3,9,'越南红心火龙果3个',35,'gk.product.details.html?lid=50',NULL,NULL,'约750g/个','img/product/md/hongxin1.jpg'),
(51,3,9,'精选蓝莓2盒(约125g/盒)(北京)',56,'gk.product.details.html?lid=51',NULL,NULL,'125g/盒','img/product/md/lanmei1.jpg'),
(52,3,9,'新奇士美国晚季脐橙12个约220g/个',69,'gk.product.details.html?lid=52',NULL,NULL,'220g/个','img/product/md/chengzi1.jpg'),
(53,3,9,'智利红提1kg(北京)',23.90,'gk.product.details.html?lid=53',NULL,NULL,'1KG/盒','img/product/md/zlht1.jpg'),
(54,3,9,'智利红提2kg(北京)',48,'gk.product.details.html?lid=54',NULL,NULL,'2KG/箱','img/product/md/zlht1.jpg'),

(55,3,9,'马来西亚猫山王',239,'gk.product.details.html?lid=55',NULL,NULL,'400g/盒','img/product/md/zlht1.jpg'),
(56,3,10,'泰国金枕头榴莲6-7斤(约1-2个)(北京)',158,'gk.product.details.html?lid=56',NULL,NULL,'3-3.5kg/个','img/product/md/tailiulian1.jpg'),

(57,3,11,'智利进口车厘子4斤',258,'gk.product.details.html?lid=57',NULL,NULL,'4斤/箱','img/product/md/zlclz1.jpg'),

(58,3,12,'Zespri佳沛新西兰甜心绿奇异果12个93-115g/个(北京)',69,'gk.product.details.html?lid=58',NULL,NULL,'93-115g/个','img/product/md/qyg1.jpg'),
(59,3,12,'Zespri佳沛新西兰甜心绿奇异果3.3kg原箱(27-36个)',149,'gk.product.details.html?lid=59',NULL,NULL,'一箱','img/product/md/qyg1.jpg'),
(60,3,12,'Zespri佳沛新西兰阳光金奇异果4个92-114g/个(北京)',39,'gk.product.details.html?lid=60',NULL,NULL,'92-114g/个','img/product/md/sunqyg1.jpg'),
(61,3,12,'Zespri佳沛新西兰阳光金奇异果6个134-175g/个(北京)',69,'gk.product.details.html?lid=61',NULL,NULL,'134-175g/个','img/product/md/sun1qyg1.jpg'),
(62,3,12,'Zespri佳沛新西兰阳光金奇异果18个原箱',308,'gk.product.details.html?lid=62',NULL,NULL,'18个/箱','img/product/md/sun2qyg1.jpg'),

(63,4,13,'山东章丘景田五号蜜瓜1kg300-500g/个（北京）',29,'gk.product.details.html?lid=63',NULL,NULL,'300-500g/个','img/product/md/tiangua1.jpg'),
(64,4,13,'山东章丘景田五号蜜瓜2kg300-500g/个（北京）',39,'gk.product.details.html?lid=64',NULL,NULL,'300-500g/个','img/product/md/tiangua1.jpg'),
(65,4,13,'山东寿光金蜜瓜2个约1.5kg/个(北京)',29.8,'gk.product.details.html?lid=65',NULL,NULL,'1.5kg/个','img/product/md/sdtiangua1.jpg'),
(66,4,14,'海南树上熟木瓜1kg约1kg/个',19.9,'gk.product.details.html?lid=66',NULL,NULL,'约1kg/个','img/product/md/mugua1.jpg'),

(67,4,15,'山东栖霞红富士8个果径约为80mm',29.9,'gk.product.details.html?lid=67',NULL,NULL,'80mm/个','img/product/md/sdapple1.jpg'),
(68,4,15,'美国安伯露西亚蜜苹果Ambrosia12个约150g/个',86,'gk.product.details.html?lid=68',NULL,NULL,'约150g/个','img/product/md/mgapple1.jpg');

/*果酷水果分类详情图片*/
CREATE TABLE gk_fruit_pic(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	fruit_id INT,    #水果编号
	sm VARCHAR(128), #小图片路径
	md VARCHAR(128), #中图片路径
	lg VARCHAR(128)  #大图片路径
);
/*果酷水果分类详情图片插入数据*/
INSERT INTO gk_fruit_pic VALUES
(NULL,1,'img/product/sm/superboxyjlx1.jpg','img/product/md/superboxyjlx1.jpg','img/product/lg/superboxyjlx1.jpg'),
(NULL,1,'img/product/sm/superboxyjlx2.jpg','img/product/md/superboxyjlx2.jpg','img/product/lg/superboxyjlx2.jpg'),
(NULL,1,'img/product/sm/superboxyjlx3.jpg','img/product/md/superboxyjlx3.jpg','img/product/lg/superboxyjlx3.jpg'),
(NULL,1,'img/product/sm/superboxyjlx4.jpg','img/product/md/superboxyjlx4.jpg','img/product/lg/superboxyjlx4.jpg'),
(NULL,1,'img/product/sm/superboxyjlx5.jpg','img/product/md/superboxyjlx5.jpg','img/product/lg/superboxyjlx5.jpg'),
(NULL,2,'img/product/sm/superboxspecial1.jpg','img/product/md/superboxspecial1.jpg','img/product/lg/superboxspecial1.jpg'),
(NULL,2,'img/product/sm/superboxspecial2.jpg','img/product/md/superboxspecial2.jpg','img/product/lg/superboxspecial2.jpg'),
(NULL,2,'img/product/sm/superboxspecial3.jpg','img/product/md/superboxspecial3.jpg','img/product/lg/superboxspecial3.jpg'),
(NULL,2,'img/product/sm/superboxspecial4.jpg','img/product/md/superboxspecial4.jpg','img/product/lg/superboxspecial4.jpg'),
(NULL,2,'img/product/sm/superboxspecial5.jpg','img/product/md/superboxspecial5.jpg','img/product/lg/superboxspecial5.jpg'),
(NULL,3,'img/product/sm/superboxminxin1.jpg','img/product/md/superboxminxin1.jpg','img/product/lg/superboxminxin1.jpg'),
(NULL,3,'img/product/sm/superboxminxin2.jpg','img/product/md/superboxminxin2.jpg','img/product/lg/superboxminxin2.jpg'),
(NULL,3,'img/product/sm/superboxminxin3.jpg','img/product/md/superboxminxin3.jpg','img/product/lg/superboxminxin3.jpg'),
(NULL,3,'img/product/sm/superboxminxin4.jpg','img/product/md/superboxminxin4.jpg','img/product/lg/superboxminxin4.jpg'),
(NULL,3,'img/product/sm/superboxminxin5.jpg','img/product/md/superboxminxin5.jpg','img/product/lg/superboxminxin5.jpg'),
(NULL,4,'img/product/sm/superboxgjsw1.jpg','img/product/md/superboxgjsw1.jpg','img/product/lg/superboxgjsw1.jpg'),
(NULL,4,'img/product/sm/superboxgjsw2.jpg','img/product/md/superboxgjsw2.jpg','img/product/lg/superboxgjsw2.jpg'),
(NULL,4,'img/product/sm/superboxgjsw3.jpg','img/product/md/superboxgjsw3.jpg','img/product/lg/superboxgjsw3.jpg'),
(NULL,4,'img/product/sm/superboxgjsw4.jpg','img/product/md/superboxgjsw4.jpg','img/product/lg/superboxgjsw4.jpg'),
(NULL,4,'img/product/sm/superboxgjsw5.jpg','img/product/md/superboxgjsw5.jpg','img/product/lg/superboxgjsw5.jpg'),
(NULL,5,'img/product/sm/superboxtjjx1.jpg','img/product/md/superboxtjjx1.jpg','img/product/lg/superboxtjjx1.jpg'),
(NULL,5,'img/product/sm/superboxtjjx2.jpg','img/product/md/superboxtjjx2.jpg','img/product/lg/superboxtjjx2.jpg'),
(NULL,5,'img/product/sm/superboxtjjx3.jpg','img/product/md/superboxtjjx3.jpg','img/product/lg/superboxtjjx3.jpg'),
(NULL,5,'img/product/sm/superboxtjjx4.jpg','img/product/md/superboxtjjx4.jpg','img/product/lg/superboxtjjx4.jpg'),
(NULL,5,'img/product/sm/superboxtjjx5.jpg','img/product/md/superboxtjjx5.jpg','img/product/lg/superboxtjjx5.jpg'),
(NULL,6,'img/product/sm/superboxjjxd1.jpg','img/product/md/superboxjjxd1.jpg','img/product/lg/superboxjjxd1.jpg'),
(NULL,6,'img/product/sm/superboxjjxd2.jpg','img/product/md/superboxjjxd2.jpg','img/product/lg/superboxjjxd2.jpg'),
(NULL,6,'img/product/sm/superboxjjxd3.jpg','img/product/md/superboxjjxd3.jpg','img/product/lg/superboxjjxd3.jpg'),
(NULL,6,'img/product/sm/superboxjjxd4.jpg','img/product/md/superboxjjxd4.jpg','img/product/lg/superboxjjxd4.jpg'),
(NULL,6,'img/product/sm/superboxjjxd5.jpg','img/product/md/superboxjjxd5.jpg','img/product/lg/superboxjjxd5.jpg'),

(NULL,7,'img/product/sm/threeboxyjlx1.jpg','img/product/md/threeboxyjlx1.jpg','img/product/lg/threeboxyjlx1.jpg'),
(NULL,7,'img/product/sm/threeboxyjlx2.jpg','img/product/md/threeboxyjlx2.jpg','img/product/lg/threeboxyjlx2.jpg'),
(NULL,7,'img/product/sm/threeboxyjlx3.jpg','img/product/md/threeboxyjlx3.jpg','img/product/lg/threeboxyjlx3.jpg'),
(NULL,7,'img/product/sm/threeboxyjlx4.jpg','img/product/md/threeboxyjlx4.jpg','img/product/lg/threeboxyjlx4.jpg'),
(NULL,7,'img/product/sm/threeboxyjlx5.jpg','img/product/md/threeboxyjlx5.jpg','img/product/lg/threeboxyjlx5.jpg'),
(NULL,8,'img/product/sm/threeboxspecial1.jpg','img/product/md/threeboxspecial1.jpg','img/product/lg/threeboxspecial1.jpg'),
(NULL,8,'img/product/sm/threeboxspecial2.jpg','img/product/md/threeboxspecial2.jpg','img/product/lg/threeboxspecial2.jpg'),
(NULL,8,'img/product/sm/threeboxspecial3.jpg','img/product/md/threeboxspecial3.jpg','img/product/lg/threeboxspecial3.jpg'),
(NULL,8,'img/product/sm/threeboxspecial4.jpg','img/product/md/threeboxspecial4.jpg','img/product/lg/threeboxspecial4.jpg'),
(NULL,8,'img/product/sm/threeboxspecial5.jpg','img/product/md/threeboxspecial5.jpg','img/product/lg/threeboxspecial5.jpg'),
(NULL,9,'img/product/sm/threeboxminxin1.jpg','img/product/md/threeboxminxin1.jpg','img/product/lg/threeboxminxin1.jpg'),
(NULL,9,'img/product/sm/threeboxminxin2.jpg','img/product/md/threeboxminxin2.jpg','img/product/lg/threeboxminxin2.jpg'),
(NULL,9,'img/product/sm/threeboxminxin3.jpg','img/product/md/threeboxminxin3.jpg','img/product/lg/threeboxminxin3.jpg'),
(NULL,9,'img/product/sm/threeboxminxin4.jpg','img/product/md/threeboxminxin4.jpg','img/product/lg/threeboxminxin4.jpg'),
(NULL,9,'img/product/sm/threeboxminxin5.jpg','img/product/md/threeboxminxin5.jpg','img/product/lg/threeboxminxin5.jpg'),
(NULL,10,'img/product/sm/threeboxgjsw1.jpg','img/product/md/threeboxgjsw1.jpg','img/product/lg/threeboxgjsw1.jpg'),
(NULL,10,'img/product/sm/threeboxgjsw2.jpg','img/product/md/threeboxgjsw2.jpg','img/product/lg/threeboxgjsw2.jpg'),
(NULL,10,'img/product/sm/threeboxgjsw3.jpg','img/product/md/threeboxgjsw3.jpg','img/product/lg/threeboxgjsw3.jpg'),
(NULL,10,'img/product/sm/threeboxgjsw4.jpg','img/product/md/threeboxgjsw4.jpg','img/product/lg/threeboxgjsw4.jpg'),
(NULL,10,'img/product/sm/threeboxgjsw5.jpg','img/product/md/threeboxgjsw5.jpg','img/product/lg/threeboxgjsw5.jpg'),
(NULL,11,'img/product/sm/threeboxtjjx1.jpg','img/product/md/threeboxtjjx1.jpg','img/product/lg/threeboxtjjx1.jpg'),
(NULL,11,'img/product/sm/threeboxtjjx2.jpg','img/product/md/threeboxtjjx2.jpg','img/product/lg/threeboxtjjx2.jpg'),
(NULL,11,'img/product/sm/threeboxtjjx3.jpg','img/product/md/threeboxtjjx3.jpg','img/product/lg/threeboxtjjx3.jpg'),
(NULL,11,'img/product/sm/threeboxtjjx4.jpg','img/product/md/threeboxtjjx4.jpg','img/product/lg/threeboxtjjx4.jpg'),
(NULL,11,'img/product/sm/threeboxtjjx5.jpg','img/product/md/threeboxtjjx5.jpg','img/product/lg/threeboxtjjx5.jpg'),
(NULL,12,'img/product/sm/threeboxjjxd1.jpg','img/product/md/threeboxjjxd1.jpg','img/product/lg/threeboxjjxd1.jpg'),
(NULL,12,'img/product/sm/threeboxjjxd2.jpg','img/product/md/threeboxjjxd2.jpg','img/product/lg/threeboxjjxd2.jpg'),
(NULL,12,'img/product/sm/threeboxjjxd3.jpg','img/product/md/threeboxjjxd3.jpg','img/product/lg/threeboxjjxd3.jpg'),
(NULL,12,'img/product/sm/threeboxjjxd4.jpg','img/product/md/threeboxjjxd4.jpg','img/product/lg/threeboxjjxd4.jpg'),
(NULL,12,'img/product/sm/threeboxjjxd5.jpg','img/product/md/threeboxjjxd5.jpg','img/product/lg/threeboxjjxd5.jpg'),

(NULL,13,'img/product/sm/twoboxyjlx1.jpg','img/product/md/twoboxyjlx1.jpg','img/product/lg/twoboxyjlx1.jpg'),
(NULL,13,'img/product/sm/twoboxyjlx2.jpg','img/product/md/twoboxyjlx2.jpg','img/product/lg/twoboxyjlx2.jpg'),
(NULL,13,'img/product/sm/twoboxyjlx3.jpg','img/product/md/twoboxyjlx3.jpg','img/product/lg/twoboxyjlx3.jpg'),
(NULL,13,'img/product/sm/twoboxyjlx4.jpg','img/product/md/twoboxyjlx4.jpg','img/product/lg/twoboxyjlx4.jpg'),
(NULL,14,'img/product/sm/twoboxspecial1.jpg','img/product/md/twoboxspecial1.jpg','img/product/lg/twoboxspecial1.jpg'),
(NULL,14,'img/product/sm/twoboxspecial2.jpg','img/product/md/twoboxspecial2.jpg','img/product/lg/twoboxspecial2.jpg'),
(NULL,14,'img/product/sm/twoboxspecial3.jpg','img/product/md/twoboxspecial3.jpg','img/product/lg/twoboxspecial3.jpg'),
(NULL,14,'img/product/sm/twoboxspecial4.jpg','img/product/md/twoboxspecial4.jpg','img/product/lg/twoboxspecial4.jpg'),
(NULL,14,'img/product/sm/twoboxspecial5.jpg','img/product/md/twoboxspecial5.jpg','img/product/lg/twoboxspecial5.jpg'),
(NULL,15,'img/product/sm/twoboxminxin1.jpg','img/product/md/twoboxminxin1.jpg','img/product/lg/twoboxminxin1.jpg'),
(NULL,15,'img/product/sm/twoboxminxin2.jpg','img/product/md/twoboxminxin2.jpg','img/product/lg/twoboxminxin2.jpg'),
(NULL,15,'img/product/sm/twoboxminxin3.jpg','img/product/md/twoboxminxin3.jpg','img/product/lg/twoboxminxin3.jpg'),
(NULL,15,'img/product/sm/twoboxminxin4.jpg','img/product/md/twoboxminxin4.jpg','img/product/lg/twoboxminxin4.jpg'),
(NULL,15,'img/product/sm/twoboxminxin5.jpg','img/product/md/twoboxminxin5.jpg','img/product/lg/twoboxminxin5.jpg'),
(NULL,16,'img/product/sm/twoboxgjsw1.jpg','img/product/md/twoboxgjsw1.jpg','img/product/lg/twoboxgjsw1.jpg'),
(NULL,16,'img/product/sm/twoboxgjsw2.jpg','img/product/md/twoboxgjsw2.jpg','img/product/lg/twoboxgjsw2.jpg'),
(NULL,16,'img/product/sm/twoboxgjsw3.jpg','img/product/md/twoboxgjsw3.jpg','img/product/lg/twoboxgjsw3.jpg'),
(NULL,16,'img/product/sm/twoboxgjsw4.jpg','img/product/md/twoboxgjsw4.jpg','img/product/lg/twoboxgjsw4.jpg'),
(NULL,16,'img/product/sm/twoboxgjsw5.jpg','img/product/md/twoboxgjsw5.jpg','img/product/lg/twoboxgjsw5.jpg'),
(NULL,17,'img/product/sm/twoboxtjjx1.jpg','img/product/md/twoboxtjjx1.jpg','img/product/lg/twoboxtjjx1.jpg'),
(NULL,17,'img/product/sm/twoboxtjjx2.jpg','img/product/md/twoboxtjjx2.jpg','img/product/lg/twoboxtjjx2.jpg'),
(NULL,17,'img/product/sm/twoboxtjjx3.jpg','img/product/md/twoboxtjjx3.jpg','img/product/lg/twoboxtjjx3.jpg'),
(NULL,17,'img/product/sm/twoboxtjjx4.jpg','img/product/md/twoboxtjjx4.jpg','img/product/lg/twoboxtjjx4.jpg'),
(NULL,17,'img/product/sm/twoboxtjjx5.jpg','img/product/md/twoboxtjjx5.jpg','img/product/lg/twoboxtjjx5.jpg'),
(NULL,18,'img/product/sm/twoboxjjxd1.jpg','img/product/md/twoboxjjxd1.jpg','img/product/lg/twoboxjjxd1.jpg'),
(NULL,18,'img/product/sm/twoboxjjxd2.jpg','img/product/md/twoboxjjxd2.jpg','img/product/lg/twoboxjjxd2.jpg'),
(NULL,18,'img/product/sm/twoboxjjxd3.jpg','img/product/md/twoboxjjxd3.jpg','img/product/lg/twoboxjjxd3.jpg'),
(NULL,18,'img/product/sm/twoboxjjxd4.jpg','img/product/md/twoboxjjxd4.jpg','img/product/lg/twoboxjjxd4.jpg'),
(NULL,18,'img/product/sm/twoboxjjxd5.jpg','img/product/md/twoboxjjxd5.jpg','img/product/lg/twoboxjjxd5.jpg'),

(NULL,19,'img/product/sm/miniboxyjlx1.jpg','img/product/md/miniboxyjlx1.jpg','img/product/lg/miniboxyjlx1.jpg'),
(NULL,19,'img/product/sm/miniboxyjlx2.jpg','img/product/md/miniboxyjlx2.jpg','img/product/lg/miniboxyjlx2.jpg'),
(NULL,19,'img/product/sm/miniboxyjlx3.jpg','img/product/md/miniboxyjlx3.jpg','img/product/lg/miniboxyjlx3.jpg'),
(NULL,19,'img/product/sm/miniboxyjlx4.jpg','img/product/md/miniboxyjlx4.jpg','img/product/lg/miniboxyjlx4.jpg'),
(NULL,20,'img/product/sm/miniboxspecial1.jpg','img/product/md/miniboxspecial1.jpg','img/product/lg/miniboxspecial1.jpg'),
(NULL,20,'img/product/sm/miniboxspecial2.jpg','img/product/md/miniboxspecial2.jpg','img/product/lg/miniboxspecial2.jpg'),
(NULL,20,'img/product/sm/miniboxspecial3.jpg','img/product/md/miniboxspecial3.jpg','img/product/lg/miniboxspecial3.jpg'),
(NULL,20,'img/product/sm/miniboxspecial4.jpg','img/product/md/miniboxspecial4.jpg','img/product/lg/miniboxspecial4.jpg'),
(NULL,21,'img/product/sm/miniboxminxin1.jpg','img/product/md/miniboxminxin1.jpg','img/product/lg/miniboxminxin1.jpg'),
(NULL,21,'img/product/sm/miniboxminxin2.jpg','img/product/md/miniboxminxin2.jpg','img/product/lg/miniboxminxin2.jpg'),
(NULL,21,'img/product/sm/miniboxminxin3.jpg','img/product/md/miniboxminxin3.jpg','img/product/lg/miniboxminxin3.jpg'),
(NULL,21,'img/product/sm/miniboxminxin4.jpg','img/product/md/miniboxminxin4.jpg','img/product/lg/miniboxminxin4.jpg'),
(NULL,22,'img/product/sm/miniboxgjsw1.jpg','img/product/md/miniboxgjsw1.jpg','img/product/lg/miniboxgjsw1.jpg'),
(NULL,22,'img/product/sm/miniboxgjsw2.jpg','img/product/md/miniboxgjsw2.jpg','img/product/lg/miniboxgjsw2.jpg'),
(NULL,22,'img/product/sm/miniboxgjsw3.jpg','img/product/md/miniboxgjsw3.jpg','img/product/lg/miniboxgjsw3.jpg'),
(NULL,22,'img/product/sm/miniboxgjsw4.jpg','img/product/md/miniboxgjsw4.jpg','img/product/lg/miniboxgjsw4.jpg'),
(NULL,23,'img/product/sm/miniboxtjjx1.jpg','img/product/md/miniboxtjjx1.jpg','img/product/lg/miniboxtjjx1.jpg'),
(NULL,23,'img/product/sm/miniboxtjjx2.jpg','img/product/md/miniboxtjjx2.jpg','img/product/lg/miniboxtjjx2.jpg'),
(NULL,23,'img/product/sm/miniboxtjjx3.jpg','img/product/md/miniboxtjjx3.jpg','img/product/lg/miniboxtjjx3.jpg'),
(NULL,23,'img/product/sm/miniboxtjjx4.jpg','img/product/md/miniboxtjjx4.jpg','img/product/lg/miniboxtjjx4.jpg'),
(NULL,24,'img/product/sm/miniboxjjxd1.jpg','img/product/md/miniboxjjxd1.jpg','img/product/lg/miniboxjjxd1.jpg'),
(NULL,24,'img/product/sm/miniboxjjxd2.jpg','img/product/md/miniboxjjxd2.jpg','img/product/lg/miniboxjjxd2.jpg'),
(NULL,24,'img/product/sm/miniboxjjxd3.jpg','img/product/md/miniboxjjxd3.jpg','img/product/lg/miniboxjjxd3.jpg'),
(NULL,24,'img/product/sm/miniboxjjxd4.jpg','img/product/md/miniboxjjxd4.jpg','img/product/lg/miniboxjjxd4.jpg'),

(NULL,25,'img/product/sm/bigbeiyjlx1.jpg','img/product/md/bigbeiyjlx1.jpg','img/product/lg/bigbeiyjlx1.jpg'),
(NULL,25,'img/product/sm/bigbeiyjlx2.jpg','img/product/md/bigbeiyjlx2.jpg','img/product/lg/bigbeiyjlx2.jpg'),
(NULL,25,'img/product/sm/bigbeiyjlx3.jpg','img/product/md/bigbeiyjlx3.jpg','img/product/lg/bigbeiyjlx3.jpg'),
(NULL,25,'img/product/sm/bigbeiyjlx4.jpg','img/product/md/bigbeiyjlx4.jpg','img/product/lg/bigbeiyjlx4.jpg'),
(NULL,25,'img/product/sm/bigbeiyjlx5.jpg','img/product/md/bigbeiyjlx5.jpg','img/product/lg/bigbeiyjlx5.jpg'),
(NULL,26,'img/product/sm/bigbeispecial1.jpg','img/product/md/bigbeispecial1.jpg','img/product/lg/bigbeispecial1.jpg'),
(NULL,26,'img/product/sm/bigbeispecial2.jpg','img/product/md/bigbeispecial2.jpg','img/product/lg/bigbeispecial2.jpg'),
(NULL,26,'img/product/sm/bigbeispecial3.jpg','img/product/md/bigbeispecial3.jpg','img/product/lg/bigbeispecial3.jpg'),
(NULL,26,'img/product/sm/bigbeispecial4.jpg','img/product/md/bigbeispecial4.jpg','img/product/lg/bigbeispecial4.jpg'),
(NULL,26,'img/product/sm/bigbeispecial5.jpg','img/product/md/bigbeispecial5.jpg','img/product/lg/bigbeispecial5.jpg'),
(NULL,27,'img/product/sm/bigbeiminxin1.jpg','img/product/md/bigbeiminxin1.jpg','img/product/lg/bigbeiminxin1.jpg'),
(NULL,27,'img/product/sm/bigbeiminxin2.jpg','img/product/md/bigbeiminxin2.jpg','img/product/lg/bigbeiminxin2.jpg'),
(NULL,27,'img/product/sm/bigbeiminxin3.jpg','img/product/md/bigbeiminxin3.jpg','img/product/lg/bigbeiminxin3.jpg'),
(NULL,27,'img/product/sm/bigbeiminxin4.jpg','img/product/md/bigbeiminxin4.jpg','img/product/lg/bigbeiminxin4.jpg'),
(NULL,27,'img/product/sm/bigbeiminxin5.jpg','img/product/md/bigbeiminxin5.jpg','img/product/lg/bigbeiminxin5.jpg'),
(NULL,28,'img/product/sm/bigbeigjsw1.jpg','img/product/md/bigbeigjsw1.jpg','img/product/lg/bigbeigjsw1.jpg'),
(NULL,28,'img/product/sm/bigbeigjsw2.jpg','img/product/md/bigbeigjsw2.jpg','img/product/lg/bigbeigjsw2.jpg'),
(NULL,28,'img/product/sm/bigbeigjsw3.jpg','img/product/md/bigbeigjsw3.jpg','img/product/lg/bigbeigjsw3.jpg'),
(NULL,28,'img/product/sm/bigbeigjsw4.jpg','img/product/md/bigbeigjsw4.jpg','img/product/lg/bigbeigjsw4.jpg'),
(NULL,28,'img/product/sm/bigbeigjsw5.jpg','img/product/md/bigbeigjsw5.jpg','img/product/lg/bigbeigjsw5.jpg'),
(NULL,29,'img/product/sm/bigbeitjjx1.jpg','img/product/md/bigbeitjjx1.jpg','img/product/lg/bigbeitjjx1.jpg'),
(NULL,29,'img/product/sm/bigbeitjjx2.jpg','img/product/md/bigbeitjjx2.jpg','img/product/lg/bigbeitjjx2.jpg'),
(NULL,29,'img/product/sm/bigbeitjjx3.jpg','img/product/md/bigbeitjjx3.jpg','img/product/lg/bigboxtjjx3.jpg'),
(NULL,29,'img/product/sm/bigbeitjjx4.jpg','img/product/md/bigbeitjjx4.jpg','img/product/lg/bigbeitjjx4.jpg'),
(NULL,29,'img/product/sm/bigbeitjjx5.jpg','img/product/md/bigbeitjjx5.jpg','img/product/lg/bigbeitjjx5.jpg'),
(NULL,30,'img/product/sm/bigbeijjxd1.jpg','img/product/md/bigbeijjxd1.jpg','img/product/lg/bigbeijjxd1.jpg'),
(NULL,30,'img/product/sm/bigbeijjxd2.jpg','img/product/md/bigbeijjxd2.jpg','img/product/lg/bigbeijjxd2.jpg'),
(NULL,30,'img/product/sm/bigbeijjxd3.jpg','img/product/md/bigbeijjxd3.jpg','img/product/lg/bigbeijjxd3.jpg'),
(NULL,30,'img/product/sm/bigbeijjxd4.jpg','img/product/md/bigbeijjxd4.jpg','img/product/lg/bigbeijjxd4.jpg'),
(NULL,30,'img/product/sm/bigbeijjxd5.jpg','img/product/md/bigbeijjxd5.jpg','img/product/lg/bigbeijjxd5.jpg'),

(NULL,31,'img/product/sm/midbeiyjlx1.jpg','img/product/md/midbeiyjlx1.jpg','img/product/lg/midbeiyjlx1.jpg'),
(NULL,31,'img/product/sm/midbeiyjlx2.jpg','img/product/md/midbeiyjlx2.jpg','img/product/lg/midbeiyjlx2.jpg'),
(NULL,31,'img/product/sm/midbeiyjlx3.jpg','img/product/md/midbeiyjlx3.jpg','img/product/lg/midbeiyjlx3.jpg'),
(NULL,31,'img/product/sm/midbeiyjlx4.jpg','img/product/md/midbeiyjlx4.jpg','img/product/lg/midbeiyjlx4.jpg'),
(NULL,31,'img/product/sm/midbeiyjlx5.jpg','img/product/md/midbeiyjlx5.jpg','img/product/lg/midbeiyjlx5.jpg'),
(NULL,32,'img/product/sm/midbeispecial1.jpg','img/product/md/midbeispecial1.jpg','img/product/lg/midbeispecial1.jpg'),
(NULL,32,'img/product/sm/midbeispecial2.jpg','img/product/md/midbeispecial2.jpg','img/product/lg/midbeispecial2.jpg'),
(NULL,32,'img/product/sm/midbeispecial3.jpg','img/product/md/midbeispecial3.jpg','img/product/lg/midbeispecial3.jpg'),
(NULL,32,'img/product/sm/midbeispecial4.jpg','img/product/md/midbeispecial4.jpg','img/product/lg/midbeispecial4.jpg'),
(NULL,32,'img/product/sm/midbeispecial5.jpg','img/product/md/midbeispecial5.jpg','img/product/lg/midbeispecial5.jpg'),
(NULL,33,'img/product/sm/midbeiminxin1.jpg','img/product/md/midbeiminxin1.jpg','img/product/lg/midbeiminxin1.jpg'),
(NULL,33,'img/product/sm/midbeiminxin2.jpg','img/product/md/midbeiminxin2.jpg','img/product/lg/midbeiminxin2.jpg'),
(NULL,33,'img/product/sm/midbeiminxin3.jpg','img/product/md/midbeiminxin3.jpg','img/product/lg/midbeiminxin3.jpg'),
(NULL,33,'img/product/sm/midbeiminxin4.jpg','img/product/md/midbeiminxin4.jpg','img/product/lg/midbeiminxin4.jpg'),
(NULL,33,'img/product/sm/midbeiminxin5.jpg','img/product/md/midbeiminxin5.jpg','img/product/lg/midbeiminxin5.jpg'),
(NULL,34,'img/product/sm/midbeigjsw1.jpg','img/product/md/midbeigjsw1.jpg','img/product/lg/midbeigjsw1.jpg'),
(NULL,34,'img/product/sm/midbeigjsw2.jpg','img/product/md/midbeigjsw2.jpg','img/product/lg/midbeigjsw2.jpg'),
(NULL,34,'img/product/sm/midbeigjsw3.jpg','img/product/md/midbeigjsw3.jpg','img/product/lg/midbeigjsw3.jpg'),
(NULL,34,'img/product/sm/midbeigjsw4.jpg','img/product/md/midbeigjsw4.jpg','img/product/lg/midbeigjsw4.jpg'),
(NULL,34,'img/product/sm/midbeigjsw5.jpg','img/product/md/midbeigjsw5.jpg','img/product/lg/midbeigjsw5.jpg'),
(NULL,35,'img/product/sm/midbeitjjx1.jpg','img/product/md/midbeitjjx1.jpg','img/product/lg/midbeitjjx1.jpg'),
(NULL,35,'img/product/sm/midbeitjjx2.jpg','img/product/md/midbeitjjx2.jpg','img/product/lg/midbeitjjx2.jpg'),
(NULL,35,'img/product/sm/midbeitjjx3.jpg','img/product/md/midbeitjjx3.jpg','img/product/lg/midbeitjjx3.jpg'),
(NULL,35,'img/product/sm/midbeitjjx4.jpg','img/product/md/midbeitjjx4.jpg','img/product/lg/midbeitjjx4.jpg'),
(NULL,35,'img/product/sm/midbeitjjx5.jpg','img/product/md/midbeitjjx5.jpg','img/product/lg/midbeitjjx5.jpg'),
(NULL,36,'img/product/sm/midbeijjxd1.jpg','img/product/md/midbeijjxd1.jpg','img/product/lg/midbeijjxd1.jpg'),
(NULL,36,'img/product/sm/midbeijjxd2.jpg','img/product/md/midbeijjxd2.jpg','img/product/lg/midbeijjxd2.jpg'),
(NULL,36,'img/product/sm/midbeijjxd3.jpg','img/product/md/midbeijjxd3.jpg','img/product/lg/midbeijjxd3.jpg'),
(NULL,36,'img/product/sm/midbeijjxd4.jpg','img/product/md/midbeijjxd4.jpg','img/product/lg/midbeijjxd4.jpg'),
(NULL,36,'img/product/sm/midbeijjxd5.jpg','img/product/md/midbeijjxd5.jpg','img/product/lg/midbeijjxd5.jpg'),


(NULL,37,'img/product/sm/bzbeiyjlx1.jpg','img/product/md/bzbeiyjlx1.jpg','img/product/lg/bzbeiyjlx1.jpg'),
(NULL,37,'img/product/sm/bzbeiyjlx2.jpg','img/product/md/bzbeiyjlx2.jpg','img/product/lg/bzbeiyjlx2.jpg'),
(NULL,37,'img/product/sm/bzbeiyjlx3.jpg','img/product/md/bzbeiyjlx3.jpg','img/product/lg/bzbeiyjlx3.jpg'),
(NULL,37,'img/product/sm/bzbeiyjlx4.jpg','img/product/md/bzbeiyjlx4.jpg','img/product/lg/bzbeiyjlx4.jpg'),
(NULL,37,'img/product/sm/bzbeiyjlx5.jpg','img/product/md/bzbeiyjlx5.jpg','img/product/lg/bzbeiyjlx5.jpg'),
(NULL,38,'img/product/sm/bzbeispecial1.jpg','img/product/md/bzbeispecial1.jpg','img/product/lg/bzbeispecial1.jpg'),
(NULL,38,'img/product/sm/bzbeispecial2.jpg','img/product/md/bzbeispecial2.jpg','img/product/lg/bzbeispecial2.jpg'),
(NULL,38,'img/product/sm/bzbeispecial3.jpg','img/product/md/bzbeispecial3.jpg','img/product/lg/bzbeispecial3.jpg'),
(NULL,38,'img/product/sm/bzbeispecial4.jpg','img/product/md/bzbeispecial4.jpg','img/product/lg/bzbeispecial4.jpg'),
(NULL,38,'img/product/sm/bzbeispecial5.jpg','img/product/md/bzbeispecial5.jpg','img/product/lg/bzbeispecial5.jpg'),
(NULL,39,'img/product/sm/bzbeiminxin1.jpg','img/product/md/bzbeiminxin1.jpg','img/product/lg/bzbeiminxin1.jpg'),
(NULL,39,'img/product/sm/bzbeiminxin2.jpg','img/product/md/bzbeiminxin2.jpg','img/product/lg/bzbeiminxin2.jpg'),
(NULL,39,'img/product/sm/bzbeiminxin3.jpg','img/product/md/bzbeiminxin3.jpg','img/product/lg/bzbeiminxin3.jpg'),
(NULL,39,'img/product/sm/bzbeiminxin4.jpg','img/product/md/bzbeiminxin4.jpg','img/product/lg/bzbeiminxin4.jpg'),
(NULL,39,'img/product/sm/bzbeiminxin5.jpg','img/product/md/bzbeiminxin5.jpg','img/product/lg/bzbeiminxin5.jpg'),
(NULL,40,'img/product/sm/bzbeigjsw1.jpg','img/product/md/bzbeigjsw1.jpg','img/product/lg/bzbeigjsw1.jpg'),
(NULL,40,'img/product/sm/bzbeigjsw2.jpg','img/product/md/bzbeigjsw2.jpg','img/product/lg/bzbeigjsw2.jpg'),
(NULL,40,'img/product/sm/bzbeigjsw3.jpg','img/product/md/bzbeigjsw3.jpg','img/product/lg/bzbeigjsw3.jpg'),
(NULL,40,'img/product/sm/bzbeigjsw4.jpg','img/product/md/bzbeigjsw4.jpg','img/product/lg/bzbeigjsw4.jpg'),
(NULL,40,'img/product/sm/bzbeigjsw5.jpg','img/product/md/bzbeigjsw5.jpg','img/product/lg/bzbeigjsw5.jpg'),
(NULL,41,'img/product/sm/bzbeitjjx1.jpg','img/product/md/bzbeitjjx1.jpg','img/product/lg/bzbeitjjx1.jpg'),
(NULL,41,'img/product/sm/bzbeitjjx2.jpg','img/product/md/bzbeitjjx2.jpg','img/product/lg/bzbeitjjx2.jpg'),
(NULL,41,'img/product/sm/bzbeitjjx3.jpg','img/product/md/bzbeitjjx3.jpg','img/product/lg/bzbeitjjx3.jpg'),
(NULL,42,'img/product/sm/bzbeijjxd1.jpg','img/product/md/bzbeijjxd1.jpg','img/product/lg/bzbeijjxd1.jpg'),
(NULL,42,'img/product/sm/bzbeijjxd2.jpg','img/product/md/bzbeijjxd2.jpg','img/product/lg/bzbeijjxd2.jpg'),
(NULL,42,'img/product/sm/bzbeijjxd3.jpg','img/product/md/bzbeijjxd3.jpg','img/product/lg/bzbeijjxd3.jpg'),


(NULL,43,'img/product/sm/minibeiyjlx1.jpg','img/product/md/minibeiyjlx1.jpg','img/product/lg/minibeiyjlx1.jpg'),
(NULL,43,'img/product/sm/minibeiyjlx2.jpg','img/product/md/minibeiyjlx2.jpg','img/product/lg/minibeiyjlx2.jpg'),
(NULL,43,'img/product/sm/minibeiyjlx3.jpg','img/product/md/minibeiyjlx3.jpg','img/product/lg/minibeiyjlx3.jpg'),
(NULL,43,'img/product/sm/minibeiyjlx4.jpg','img/product/md/minibeiyjlx4.jpg','img/product/lg/minibeiyjlx4.jpg'),
(NULL,43,'img/product/sm/minibeiyjlx5.jpg','img/product/md/minibeiyjlx5.jpg','img/product/lg/minibeiyjlx5.jpg'),
(NULL,44,'img/product/sm/minibeispecial1.jpg','img/product/md/minibeispecial1.jpg','img/product/lg/minibeispecial1.jpg'),
(NULL,44,'img/product/sm/minibeispecial2.jpg','img/product/md/minibeispecial2.jpg','img/product/lg/minibeispecial2.jpg'),
(NULL,44,'img/product/sm/minibeispecial3.jpg','img/product/md/minibeispecial3.jpg','img/product/lg/minibeispecial3.jpg'),
(NULL,44,'img/product/sm/minibeispecial4.jpg','img/product/md/minibeispecial4.jpg','img/product/lg/minibeispecial4.jpg'),
(NULL,44,'img/product/sm/minibeispecial5.jpg','img/product/md/minibeispecial5.jpg','img/product/lg/minibeispecial5.jpg'),
(NULL,45,'img/product/sm/minibeiminxin1.jpg','img/product/md/minibeiminxin1.jpg','img/product/lg/minibeiminxin1.jpg'),
(NULL,45,'img/product/sm/minibeiminxin2.jpg','img/product/md/minibeiminxin2.jpg','img/product/lg/minibeiminxin2.jpg'),
(NULL,45,'img/product/sm/minibeiminxin3.jpg','img/product/md/minibeiminxin3.jpg','img/product/lg/minibeiminxin3.jpg'),
(NULL,45,'img/product/sm/minibeiminxin4.jpg','img/product/md/minibeiminxin4.jpg','img/product/lg/minibeiminxin4.jpg'),
(NULL,45,'img/product/sm/minibeiminxin5.jpg','img/product/md/minibeiminxin5.jpg','img/product/lg/minibeiminxin5.jpg'),
(NULL,46,'img/product/sm/minibeigjsw1.jpg','img/product/md/minibeigjsw1.jpg','img/product/lg/minibeigjsw1.jpg'),
(NULL,46,'img/product/sm/minibeigjsw2.jpg','img/product/md/minibeigjsw2.jpg','img/product/lg/minibeigjsw2.jpg'),
(NULL,46,'img/product/sm/minibeigjsw3.jpg','img/product/md/minibeigjsw3.jpg','img/product/lg/minibeigjsw3.jpg'),
(NULL,46,'img/product/sm/minibeigjsw4.jpg','img/product/md/minibeigjsw4.jpg','img/product/lg/minibeigjsw4.jpg'),
(NULL,46,'img/product/sm/minibeigjsw5.jpg','img/product/md/minibeigjsw5.jpg','img/product/lg/minibeigjsw5.jpg'),
(NULL,47,'img/product/sm/minibeitjjx1.jpg','img/product/md/minibeitjjx1.jpg','img/product/lg/minibeitjjx1.jpg'),
(NULL,47,'img/product/sm/minibeitjjx2.jpg','img/product/md/minibeitjjx2.jpg','img/product/lg/minibeitjjx2.jpg'),
(NULL,47,'img/product/sm/minibeitjjx3.jpg','img/product/md/minibeitjjx3.jpg','img/product/lg/minibeitjjx3.jpg'),
(NULL,47,'img/product/sm/minibeitjjx4.jpg','img/product/md/minibeitjjx4.jpg','img/product/lg/minibeitjjx4.jpg'),
(NULL,47,'img/product/sm/minibeitjjx5.jpg','img/product/md/minibeitjjx5.jpg','img/product/lg/minibeitjjx5.jpg'),
(NULL,48,'img/product/sm/minibeijjxd1.jpg','img/product/md/minibeijjxd1.jpg','img/product/lg/minibeijjxd1.jpg'),
(NULL,48,'img/product/sm/minibeijjxd2.jpg','img/product/md/minibeijjxd2.jpg','img/product/lg/minibeijjxd2.jpg'),
(NULL,48,'img/product/sm/minibeijjxd3.jpg','img/product/md/minibeijjxd3.jpg','img/product/lg/minibeijjxd3.jpg'),
(NULL,48,'img/product/sm/minibeijjxd4.jpg','img/product/md/minibeijjxd4.jpg','img/product/lg/minibeijjxd4.jpg'),
(NULL,48,'img/product/sm/minibeijjxd5.jpg','img/product/md/minibeijjxd5.jpg','img/product/lg/minibeijjxd5.jpg'),

(NULL,49,'img/product/sm/rebxhl1.jpg','img/product/md/rebxhl1.jpg','img/product/lg/rebxhl1.jpg'),
(NULL,49,'img/product/sm/rebxhl2.jpg','img/product/md/rebxhl2.jpg','img/product/lg/rebxhl2.jpg'),
(NULL,49,'img/product/sm/rebxhl3.jpg','img/product/md/rebxhl3.jpg','img/product/lg/rebxhl3.jpg'),
(NULL,50,'img/product/sm/hongxin1.jpg','img/product/md/hongxin1.jpg','img/product/lg/hongxin1.jpg'),
(NULL,50,'img/product/sm/hongxin2.jpg','img/product/md/hongxin2.jpg','img/product/lg/hongxin2.jpg'),
(NULL,50,'img/product/sm/hongxin3.jpg','img/product/md/hongxin3.jpg','img/product/lg/hongxin3.jpg'),
(NULL,51,'img/product/sm/lanmei1.jpg','img/product/md/lanmei1.jpg','img/product/lg/lanmei1.jpg'),
(NULL,51,'img/product/sm/lanmei2.jpg','img/product/md/lanmei2.jpg','img/product/lg/lanmei2.jpg'),
(NULL,51,'img/product/sm/lanmei3.jpg','img/product/md/lanmei3.jpg','img/product/lg/lanmei3.jpg'),
(NULL,52,'img/product/sm/chengzi1.jpg','img/product/md/chengzi1.jpg','img/product/lg/chengzi1.jpg'),
(NULL,52,'img/product/sm/chengzi2.jpg','img/product/md/chengzi2.jpg','img/product/lg/chengzi2.jpg'),
(NULL,52,'img/product/sm/chengzi3.jpg','img/product/md/chengzi3.jpg','img/product/lg/chengzi3.jpg'),
(NULL,53,'img/product/sm/zlht1.jpg','img/product/md/zlht1.jpg','img/product/lg/zlht1.jpg'),
(NULL,53,'img/product/sm/zlht2.jpg','img/product/md/zlht2.jpg','img/product/lg/zlht2.jpg'),
(NULL,53,'img/product/sm/zlht3.jpg','img/product/md/zlht3.jpg','img/product/lg/zlht3.jpg'),
(NULL,54,'img/product/sm/zlht1.jpg','img/product/md/zlht1.jpg','img/product/lg/zlht1.jpg'),
(NULL,54,'img/product/sm/zlht2.jpg','img/product/md/zlht2.jpg','img/product/lg/zlht2.jpg'),
(NULL,54,'img/product/sm/zlht3.jpg','img/product/md/zlht3.jpg','img/product/lg/zlht3.jpg'),
(NULL,55,'img/product/sm/liulian1.jpg','img/product/md/zlht1.jpg','img/product/lg/zlht1.jpg'),
(NULL,56,'img/product/sm/tailiulian1.jpg','img/product/md/tailiulian1.jpg','img/product/lg/tailiulian1.jpg'),
(NULL,56,'img/product/sm/tailiulian2.jpg','img/product/md/tailiulian2.jpg','img/product/lg/tailiulian2.jpg'),
(NULL,56,'img/product/sm/tailiulian3.jpg','img/product/md/tailiulian3.jpg','img/product/lg/tailiulian3.jpg'),
(NULL,57,'img/product/sm/zlclz1.jpg','img/product/md/zlclz1.jpg','img/product/lg/zlclz1.jpg'),
(NULL,57,'img/product/sm/zlclz2.jpg','img/product/md/zlclz2.jpg','img/product/lg/zlclz2.jpg'),
(NULL,57,'img/product/sm/zlclz3.jpg','img/product/md/zlclz3.jpg','img/product/lg/zlclz3.jpg'),
(NULL,58,'img/product/sm/qyg1.jpg','img/product/md/qyg1.jpg','img/product/lg/qyg1.jpg'),
(NULL,58,'img/product/sm/qyg2.jpg','img/product/md/qyg2.jpg','img/product/lg/qyg2.jpg'),
(NULL,58,'img/product/sm/qyg3.jpg','img/product/md/qyg3.jpg','img/product/lg/qyg3.jpg'),
(NULL,59,'img/product/sm/qyg1.jpg','img/product/md/qyg1.jpg','img/product/lg/qyg1.jpg'),
(NULL,59,'img/product/sm/qyg2.jpg','img/product/md/qyg2.jpg','img/product/lg/qyg2.jpg'),
(NULL,59,'img/product/sm/qyg3.jpg','img/product/md/qyg3.jpg','img/product/lg/qyg3.jpg'),
(NULL,60,'img/product/sm/sunqyg1.jpg','img/product/md/sunqyg1.jpg','img/product/lg/sunqyg1.jpg'),
(NULL,60,'img/product/sm/sunqyg2.jpg','img/product/md/sunqyg2.jpg','img/product/lg/sunqyg2.jpg'),
(NULL,60,'img/product/sm/sunqyg3.jpg','img/product/md/sunqyg3.jpg','img/product/lg/sunqyg3.jpg'),
(NULL,61,'img/product/sm/sun1qyg1.jpg','img/product/md/sun1qyg1.jpg','img/product/lg/sun1qyg1.jpg'),
(NULL,61,'img/product/sm/sun1qyg2.jpg','img/product/md/sun1qyg2.jpg','img/product/lg/sun1qyg2.jpg'),
(NULL,61,'img/product/sm/sun1qyg3.jpg','img/product/md/sun1qyg3.jpg','img/product/lg/sun1qyg3.jpg'),
(NULL,62,'img/product/sm/sun2qyg1.jpg','img/product/md/sun2qyg1.jpg','img/product/lg/sun2qyg1.jpg'),
(NULL,62,'img/product/sm/sun2qyg2.jpg','img/product/md/sun2qyg2.jpg','img/product/lg/sun2qyg2.jpg'),
(NULL,62,'img/product/sm/sun2qyg3.jpg','img/product/md/sun2qyg3.jpg','img/product/lg/sun2qyg3.jpg'),
(NULL,63,'img/product/sm/tiangua1.jpg','img/product/md/tiangua1.jpg','img/product/lg/tiangua1.jpg'),
(NULL,63,'img/product/sm/tiangua2.jpg','img/product/md/tiangua2.jpg','img/product/lg/tiangua2.jpg'),
(NULL,63,'img/product/sm/tiangua3.jpg','img/product/md/tiangua3.jpg','img/product/lg/tiangua3.jpg'),
(NULL,64,'img/product/sm/tiangua1.jpg','img/product/md/tiangua1.jpg','img/product/lg/tiangua1.jpg'),
(NULL,64,'img/product/sm/tiangua2.jpg','img/product/md/tiangua2.jpg','img/product/lg/tiangua2.jpg'),
(NULL,64,'img/product/sm/tiangua3.jpg','img/product/md/tiangua3.jpg','img/product/lg/tiangua3.jpg'),
(NULL,65,'img/product/sm/sdtiangua1.jpg','img/product/md/sdtiangua1.jpg','img/product/lg/sdtiangua1.jpg'),
(NULL,65,'img/product/sm/sdtiangua2.jpg','img/product/md/sdtiangua2.jpg','img/product/lg/sdtiangua2.jpg'),
(NULL,65,'img/product/sm/sdtiangua3.jpg','img/product/md/sdtiangua3.jpg','img/product/lg/sdtiangua3.jpg'),
(NULL,66,'img/product/sm/mugua1.jpg','img/product/md/mugua1.jpg','img/product/lg/mugua1.jpg'),
(NULL,66,'img/product/sm/mugua2.jpg','img/product/md/mugua2.jpg','img/product/lg/mugua2.jpg'),
(NULL,66,'img/product/sm/mugua3.jpg','img/product/md/mugua3.jpg','img/product/lg/mugua3.jpg'),
(NULL,67,'img/product/sm/sdapple1.jpg','img/product/md/sdapple1.jpg','img/product/lg/sdapple1.jpg'),
(NULL,67,'img/product/sm/sdapple2.jpg','img/product/md/sdapple2.jpg','img/product/lg/sdapple2.jpg'),
(NULL,67,'img/product/sm/sdapple3.jpg','img/product/md/sdapple3.jpg','img/product/lg/sdapple3.jpg'),
(NULL,68,'img/product/sm/mgapple1.jpg','img/product/md/mgapple1.jpg','img/product/lg/mgapple1.jpg'),
(NULL,68,'img/product/sm/mgapple2.jpg','img/product/md/mgapple2.jpg','img/product/lg/mgapple2.jpg'),
(NULL,68,'img/product/sm/mgapple3.jpg','img/product/md/mgapple3.jpg','img/product/lg/mgapple3.jpg');

/*用户信息*/
CREATE TABLE gk_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32),
	upwd VARCHAR(32),
	email VARCHAR(64),
	phone VARCHAR(16),
	/*avatar VARCHAR(128), 头像图片路径*/
	user_name VARCHAR(32),#用户名
	gender INT            #性别  0-女 1-男
);
/*用户信息插入数据*/
INSERT INTO gk_user VALUES
(1,'dingding','123456','ding@qq.com','13574432165','丁伟','1'),
(2,'meimei','123456','mei@qq.com','13574432165','张美','0'),
(3,'dongdong','123456','dong@qq.com','13574432165','李东','1'),
(4,'lili','123456','li@qq.com','13574432165','刘丽','0');

/**收货地址信息**/
CREATE TABLE gk_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                #用户编号
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  fixedphone VARCHAR(16),     #固定电话
  postcode CHAR(6),           #邮编
  tag VARCHAR(16),            #标签名

  is_default BOOLEAN          #是否为当前用户的默认收货地址
);

/**购物车条目**/
CREATE TABLE gk_shoppingcart_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,      #用户编号
  product_id INT,   #商品编号
  pic VARCHAR(128), #商品图片
  title VARCHAR(128),#商品标题
  price DECIMAL(10,2),         #商品价格
  href VARCHAR(128),
  count INT,        #购买数量
  is_checked BOOLEAN#是否已勾选，确定购买
  /*foreign key(user_id) references gk_user(uid)*/
);
/**购物车插入数据**/
INSERT INTO gk_shoppingcart_item VALUES
(NULL,1,1,'img/product/lg/superboxyjlx1.jpg','超级果盒：应季流行',25,'gk.product.details.html?lid=1',1,true),
(NULL,2,1,'img/product/lg/threeboxyjlx1.jpg','三分果盒：应季流行',14,'gk.product.details.html?lid=7',1,true);
/**用户订单**/
CREATE TABLE gk_order(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  address_id INT,
  status INT,             #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
  order_time BIGINT,      #下单时间
  pay_time BIGINT,        #付款时间
  deliver_time BIGINT,    #发货时间
  received_time BIGINT    #签收时间
)AUTO_INCREMENT=10000000;

/**用户订单**/
CREATE TABLE gk_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  product_id INT,         #产品编号
  count INT               #购买数量
);
/*首页商品*/
CREATE TABLE gk_index_product(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(64),
	pic VARCHAR(64),
	price	DECIMAL(10,2),
	href VARCHAR(128),
	zlfenge TINYINT,
	chguobei TINYINT,
	jkshuiguo TINYINT,
	gcshuiguo TINYINT
);
/*首页商品插入数据*/
INSERT INTO gk_index_product VALUES
#专利分格
(NULL,'迷你果盒：特别推荐','img/index/miniboxspecial1.jpg',7,'gk.product.details.html?lid=20',1,0,0,0),
(NULL,'三分果盒：应季流行','img/index/threeboxyjlx1.jpg',14,'gk.product.details.html?lid=7',1,0,0,0),
(NULL,'迷你果盒：高级赏味','img/index/miniboxgjsw1.jpg',10,'gk.product.details.html?lid=22',1,0,0,0),
(NULL,'三分果盒：特别推荐','img/index/threeboxspecial1.jpg',17,'gk.product.details.html?lid=8',1,0,0,0),
(NULL,'三分果盒：明星主打','img/index/threeboxminxin1.jpg',19,'gk.product.details.html?lid=9',1,0,0,0),
(NULL,'迷你果盒：应季流行','img/index/miniboxyjlx1.jpg',6,'gk.product.details.html?lid=19',1,0,0,0),
#超级果盒
(NULL,'超级果盒：应季流行','img/index/superboxyjlx1.jpg',25,'gk.product.details.html?lid=1',1,0,0,0),
(NULL,'超级果盒：特别推荐','img/index/superboxspecial1.jpg',27,'gk.product.details.html?lid=2',1,0,0,0),
(NULL,'超级果盒：明星主打','img/index/superboxminxin1.jpg',29,'gk.product.details.html?lid=3',1,0,0,0),
(NULL,'超级果盒：高级赏味','img/index/superboxgjsw1.jpg',35,'gk.product.details.html?lid=4',1,0,0,0),
(NULL,'超级果盒：特级精选','img/index/superboxtjjx1.jpg',39,'gk.product.details.html?lid=5',1,0,0,0),
(NULL,'超级果盒：季节限定','img/index/superboxjjxd1.jpg',32,'gk.product.details.html?lid=6',1,0,0,0),
#三分果盒
(NULL,'三分果盒：应季流行','img/index/threeboxyjlx1.jpg',14,'gk.product.details.html?lid=7',1,0,0,0),
(NULL,'三分果盒：特别推荐','img/index/threeboxspecial1.jpg',17,'gk.product.details.html?lid=8',1,0,0,0),
(NULL,'三分果盒：明星主打','img/index/threeboxminxin1.jpg',19,'gk.product.details.html?lid=9',1,0,0,0),
(NULL,'三分果盒：高级赏味','img/index/threeboxgjsw1.jpg',22,'gk.product.details.html?lid=10',1,0,0,0),
(NULL,'三分果盒：特级精选','img/index/threeboxtjjx1.jpg',27,'gk.product.details.html?lid=11',1,0,0,0),
(NULL,'三分果盒：季节限定','img/index/threeboxjjxd1.jpg',21,'gk.product.details.html?lid=12',1,0,0,0),
#二分果盒
(NULL,'二分果盒：应季流行','img/index/twoboxyjlx1.jpg',9,'gk.product.details.html?lid=13',1,0,0,0),
(NULL,'二分果盒：特别推荐','img/index/twoboxspecial1.jpg',10,'gk.product.details.html?lid=14',1,0,0,0),
(NULL,'二分果盒：明星主打','img/index/twoboxminxin1.jpg',12,'gk.product.details.html?lid=15',1,0,0,0),
(NULL,'二分果盒：高级赏味','img/index/twoboxgjsw1.jpg',15,'gk.product.details.html?lid=16',1,0,0,0),
(NULL,'二分果盒：特级精选','img/index/twoboxtjjx1.jpg',19,'gk.product.details.html?lid=17',1,0,0,0),
(NULL,'二分果盒：季节限定','img/index/twoboxjjxd1.jpg',13,'gk.product.details.html?lid=18',1,0,0,0),
#迷你果盒
(NULL,'迷你果盒：应季流行','img/index/miniboxyjlx1.jpg',6,'gk.product.details.html?lid=19',1,0,0,0),
(NULL,'迷你果盒：特别推荐','img/index/miniboxspecial1.jpg',8,'gk.product.details.html?lid=20',1,0,0,0),
(NULL,'迷你果盒：明星主打','img/index/miniboxminxin1.jpg',13,'gk.product.details.html?lid=21',1,0,0,0),
(NULL,'迷你果盒：高级赏味','img/index/miniboxgjsw1.jpg',9,'gk.product.details.html?lid=22',1,0,0,0),
(NULL,'迷你果盒：特级精选','img/index/miniboxtjjx1.jpg',7,'gk.product.details.html?lid=23',1,0,0,0),
(NULL,'迷你果盒：季节限定','img/index/miniboxjjxd1.jpg',10,'gk.product.details.html?lid=24',1,0,0,0),

#彩虹果杯
(NULL,'中型果杯：应季流行','img/index/midbeiyjlx1.jpg',17,'gk.product.details.html?lid=31',0,1,0,0),
(NULL,'中型果杯：特别推荐','img/index/midbeispecial1.jpg',19,'gk.product.details.html?lid=32',0,1,0,0),
(NULL,'中型果杯：明星主打','img/index/midbeiminxin1.jpg',20,'gk.product.details.html?lid=33',0,1,0,0),
(NULL,'中型果杯：高级赏味','img/index/midbeigjsw1.jpg',25,'gk.product.details.html?lid=34',0,1,0,0),
(NULL,'中型果杯：特级精选','img/index/midbeitjjx1.jpg',28,'gk.product.details.html?lid=35',0,1,0,0),
(NULL,'中型果杯：季节限定','img/index/midbeijjxd1.jpg',23,'gk.product.details.html?lid=36',0,1,0,0),
#大型果杯
(NULL,'大型果杯：应季流行','img/index/bigbeiyjlx1.jpg',22,'gk.product.details.html?lid=25',0,1,0,0),
(NULL,'大型果杯：特别推荐','img/index/bigbeispecial1.jpg',24,'gk.product.details.html?lid=26',0,1,0,0),
(NULL,'大型果杯：明星主打','img/index/bigbeiminxin1.jpg',25,'gk.product.details.html?lid=27',0,1,0,0),
(NULL,'大型果杯：高级赏味','img/index/bigbeigjsw1.jpg',31,'gk.product.details.html?lid=28',0,1,0,0),
(NULL,'大型果杯：特级精选','img/index/bigbeitjjx1.jpg',35,'gk.product.details.html?lid=29',0,1,0,0),
(NULL,'大型果杯：季节限定','img/index/bigbeijjxd1.jpg',29,'gk.product.details.html?lid=30',0,1,0,0),
#中型果杯
(NULL,'中型果杯：应季流行','img/index/midbeiyjlx1.jpg',17,'gk.product.details.html?lid=31',0,1,0,0),
(NULL,'中型果杯：特别推荐','img/index/midbeispecial1.jpg',19,'gk.product.details.html?lid=32',0,1,0,0),
(NULL,'中型果杯：明星主打','img/index/midbeiminxin1.jpg',20,'gk.product.details.html?lid=33',0,1,0,0),
(NULL,'中型果杯：高级赏味','img/index/midbeigjsw1.jpg',25,'gk.product.details.html?lid=34',0,1,0,0),
(NULL,'中型果杯：特级精选','img/index/midbeitjjx1.jpg',28,'gk.product.details.html?lid=35',0,1,0,0),
(NULL,'中型果杯：季节限定','img/index/midbeijjxd1.jpg',23,'gk.product.details.html?lid=36',0,1,0,0),
#标准果杯
(NULL,'标准果杯：应季流行','img/index/bzbeiyjlx1.jpg',12,'gk.product.details.html?lid=37',0,1,0,0),
(NULL,'标准果杯：特别推荐','img/index/bzbeispecial1.jpg',14,'gk.product.details.html?lid=38',0,1,0,0),
(NULL,'标准果杯：明星主打','img/index/bzbeiminxin1.jpg',16,'gk.product.details.html?lid=39',0,1,0,0),
(NULL,'标准果杯：高级赏味','img/index/bzbeigjsw1.jpg',19,'gk.product.details.html?lid=40',0,1,0,0),
(NULL,'标准果杯：特级精选','img/index/bzbeitjjx1.jpg',22,'gk.product.details.html?lid=41',0,1,0,0),
(NULL,'标准果杯：季节限定','img/index/bzbeijjxd1.jpg',18,'gk.product.details.html?lid=42',0,1,0,0),
#迷你果杯
(NULL,'迷你果杯：应季流行','img/index/minibeiyjlx1.jpg',9,'gk.product.details.html?lid=43',0,1,0,0),
(NULL,'迷你果杯：特别推荐','img/index/minibeispecial1.jpg',12,'gk.product.details.html?lid=44',0,1,0,0),
(NULL,'迷你果杯：明星主打','img/index/minibeiminxin1.jpg',14,'gk.product.details.html?lid=45',0,1,0,0),
(NULL,'迷你果杯：高级赏味','img/index/minibeigjsw1.jpg',10,'gk.product.details.html?lid=46',0,1,0,0),
(NULL,'迷你果杯：特级精选','img/index/minibeitjjx1.jpg',28,'gk.product.details.html?lid=47',0,1,0,0),
(NULL,'迷你果杯：季节限定','img/index/minibeijjxd1.jpg',27,'gk.product.details.html?lid=48',0,1,0,0),

#进口水果
(NULL,'智利进口车厘子4斤','img/index/zlclz1.jpg',258,'gk.product.details.html?lid=57',0,0,1,0),
(NULL,'马来西亚猫山王','img/index/liulian1.jpg',239,'gk.product.details.html?lid=55',0,0,1,0),
(NULL,'越南白心火龙果2个','img/index/rebxhl1.jpg',19.9,'gk.product.details.html?lid=49',0,0,1,0),
(NULL,'越南红心火龙果3个','img/index/hongxin1.jpg',35,'gk.product.details.html?lid=50',0,0,1,0),
(NULL,'精选蓝莓2盒(约125g/盒)(北京)','img/index/lanmei1.jpg',56,'gk.product.details.html?lid=51',0,0,1,0),
(NULL,'泰国金枕头榴莲6-7斤(约1-2个)(北京)','img/index/tailiulian1.jpg',158,'gk.product.details.html?lid=56',0,0,1,0),
#热带水果
(NULL,'越南白心火龙果2个','img/index/rebxhl1.jpg',19.9,'gk.product.details.html?lid=49',0,0,1,0),
(NULL,'越南红心火龙果3个','img/index/hongxin1.jpg',35,'gk.product.details.html?lid=50',0,0,1,0),
(NULL,'精选蓝莓2盒(约125g/盒)(北京)','img/index/lanmei1.jpg',56,'gk.product.details.html?lid=51',0,0,1,0),
#冷冻榴莲
(NULL,'马来西亚猫山王','img/index/liulian1.jpg',239,'gk.product.details.html?lid=55',0,0,1,0),
(NULL,'泰国金枕头榴莲6-7斤(约1-2个)(北京)','img/index/tailiulian1.jpg',158,'gk.product.details.html?lid=56',0,0,1,0),
#车厘子
(NULL,'智利进口车厘子4斤','img/index/zlclz1.jpg',258,'gk.product.details.html?lid=57',0,0,1,0),
#奇异果
(NULL,'Zespri佳沛新西兰甜心绿奇异果12个93-115g/个(北京)','img/index/qyg1.jpg',69,'gk.product.details.html?lid=58',0,0,1,0),
(NULL,'Zespri佳沛新西兰甜心绿奇异果3.3kg原箱(27-36个)','img/index/qyg1.jpg',149,'gk.product.details.html?lid=59',0,0,1,0),
(NULL,'Zespri佳沛新西兰阳光金奇异果4个92-114g/个(北京)','img/index/sun2qyg1.jpg',39,'gk.product.details.html?lid=60',0,0,1,0),

#国产水果
(NULL,'山东章丘景田五号蜜瓜1kg300-500g/个','img/index/tiangua1.jpg',29,'gk.product.details.html?lid=63',0,0,0,1),
(NULL,'山东章丘景田五号蜜瓜2kg300-500g/个','img/index/tiangua1.jpg',39,'gk.product.details.html?lid=64',0,0,0,1),
(NULL,'山东寿光蜜瓜2/个(北京)','img/index/sdtiangua1.jpg',29.8,'gk.product.details.html?lid=65',0,0,0,1),
(NULL,'海南树上熟木瓜1kg约1kg/个','img/index/mugua1.jpg',19.9,'gk.product.details.html?lid=66',0,0,0,1),
#时令水果
(NULL,'山东章丘景田五号蜜瓜1kg300-500g/个','img/index/tiangua1.jpg',29,'gk.product.details.html?lid=63',0,0,0,1),
(NULL,'山东寿光蜜瓜2/个(北京)','img/index/sdtiangua1.jpg',29.8,'gk.product.details.html?lid=65',0,0,0,1),
(NULL,'海南树上熟木瓜1kg约1kg/个','img/index/mugua1.jpg',19.9,'gk.product.details.html?lid=66',0,0,0,1),
#瓜/甜瓜
(NULL,'山东章丘景田五号蜜瓜1kg300-500g/个','img/index/tiangua1.jpg',29,'gk.product.details.html?lid=63',0,0,0,1),
(NULL,'山东寿光蜜瓜2/个(北京)','img/index/sdtiangua1.jpg',29.8,'gk.product.details.html?lid=65',0,0,0,1),
#苹果
(NULL,'山东栖霞红富士8个果径约为80mm','img/index/sdapple1.jpg',29.9,'gk.product.details.html?lid=67',0,0,0,1),
(NULL,'美国安伯露西亚蜜苹果Ambrosia12个约150g/个','img/index/mgapple2.jpg',86,'gk.product.details.html?lid=68',0,0,0,1),
#橙子
(NULL,'新奇士美国晚季脐橙12个约220g/个','img/index/chengzi1.jpg',69,'gk.product.details.html?lid=52',0,0,0,1);

