
  
CREATE TABLE goods(    goods_name    VARCHAR(30),    code    INT,    base_price FLOAT,    current_price FLOAT,    pop_demand FLOAT, PRIMARY KEY (code));

CREATE TABLE building(    id INT,    name VARCHAR(80),    level INT, PRIMARY KEY (id));

CREATE TABLE supply(    goods_id INT,    building_id INT,    max_supply FLOAT,    current_output FLOAT,    level INT, PRIMARY KEY (goods_id, building_id));

CREATE TABLE demand(    goods_id INT,    building_id INT,    max_demand FLOAT,    current_input FLOAT,    level INT,   PRIMARY KEY (goods_id, building_id));
    
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("ammunition", 0, 50, 50, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("small_arms", 1, 60, 60, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("artillery", 2, 70, 122.5, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("tanks", 3, 80, 80, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("aeroplanes", 4, 80, 80, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("manowars", 5, 70, 52.5, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("ironclads", 6, 80, 80, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("grain", 7, 20, 16.317001074135863, 81.23786242990091);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("fish", 8, 20, 19.146152537129527, 113.16922029703623);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("fabric", 9, 20, 11.95032526447292, 23.323101054125285);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("wood", 10, 20, 16.985447521815654, 15.027851445874727);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("groceries", 11, 30, 30, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("clothes", 12, 30, 41.17358496538133, 27.361985151768184);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("furniture", 13, 30, 40.94890814671266, 26.829775395803946);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("paper", 14, 30, 30, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("services", 15, 30, 14.878506287215739, 12.715271666666665);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("transportation", 16, 30, 30, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("electricity", 17, 30, 30, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("clippers", 18, 60, 69.0, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("steamers", 19, 70, 70, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("silk", 20, 40, 40, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("dye", 21, 40, 40, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("sulfur", 22, 50, 50, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("coal", 23, 30, 30, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("iron", 24, 40, 40, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("lead", 25, 40, 40, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("hardwood", 26, 40, 40, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("rubber", 27, 40, 40, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("oil", 28, 40, 40, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("engines", 29, 60, 60, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("steel", 30, 50, 50, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("glass", 31, 40, 40, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("fertilizer", 32, 30, 30, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("tools", 33, 40, 40, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("explosives", 34, 50, 50, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("porcelain", 35, 70, 122.5, 1.3102422619047627);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("meat", 36, 30, 30, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("fruit", 37, 30, 36.27539749635661, 5.548018817705174);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("liquor", 38, 30, 34.426256372651764, 24.00600057995059);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("wine", 39, 50, 43.1735619635597, 6.518499999999999);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("tea", 40, 50, 50, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("coffee", 41, 50, 50, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("sugar", 42, 30, 30, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("tobacco", 43, 40, 44.593827157140915, 29.402303315037052);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("opium", 44, 50, 50, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("automobiles", 45, 100, 100, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("telephones", 46, 70, 70, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("radios", 47, 80, 80, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("luxury_clothes", 48, 60, 105.0, 6.1144638888888885);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("luxury_furniture", 49, 60, 105.0, 1.5286159722222221);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("gold", 50, 100, 100, 0);
INSERT INTO goods(goods_name,code,base_price, current_price, pop_demand) VALUES ("fine_art", 51, 200, 200, 0);
INSERT INTO building(id, name, level) VALUES (911, "building_fishing_wharflevel", 1);
INSERT INTO demand(goods_id, building_id, max_demand, current_input, level) VALUES (18, 911, 5.0, 4.0, 1);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (8, 911, 50.0, 40.0, 1);
INSERT INTO building(id, name, level) VALUES (939, "building_government_administrationlevel", 2);
INSERT INTO building(id, name, level) VALUES (940, "building_shipyardslevel", 1);
INSERT INTO demand(goods_id, building_id, max_demand, current_input, level) VALUES (9, 940, 20.0, 43.163447548774634, 1);
INSERT INTO demand(goods_id, building_id, max_demand, current_input, level) VALUES (10, 940, 40.0, 50.06070894790478, 1);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (5, 940, 15.0, 15.0, 1);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (18, 940, 20.0, 20.0, 1);
INSERT INTO building(id, name, level) VALUES (941, "building_wheat_farmlevel", 1);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (7, 941, 14.94225, 14.94225, 1);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (39, 941, 7.9692, 7.9692, 1);
INSERT INTO building(id, name, level) VALUES (942, "building_fishing_wharflevel", 1);
INSERT INTO demand(goods_id, building_id, max_demand, current_input, level) VALUES (18, 942, 5.0, 4.0, 1);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (8, 942, 50.0, 40.0, 1);
INSERT INTO building(id, name, level) VALUES (943, "building_tobacco_plantationlevel", 1);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (43, 943, 24.9, 24.9, 1);
INSERT INTO building(id, name, level) VALUES (944, "building_logging_camplevel", 2);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (10, 944, 60.0, 60.6, 2);
INSERT INTO building(id, name, level) VALUES (945, "building_cotton_plantationlevel", 2);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (9, 945, 79.67999999999999, 80.4768, 2);
INSERT INTO building(id, name, level) VALUES (946, "building_portlevel", 1);
INSERT INTO demand(goods_id, building_id, max_demand, current_input, level) VALUES (18, 946, 5.0, 4.0, 1);
INSERT INTO building(id, name, level) VALUES (947, "building_barrackslevel", 5);
INSERT INTO demand(goods_id, building_id, max_demand, current_input, level) VALUES (2, 947, 2.5, 0.0, 5);
INSERT INTO building(id, name, level) VALUES (948, "building_naval_baselevel", 2);
INSERT INTO demand(goods_id, building_id, max_demand, current_input, level) VALUES (5, 948, 4.0, 6.0, 2);
INSERT INTO building(id, name, level) VALUES (949, "building_wheat_farmlevel", 1);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (7, 949, 29.88, 29.88, 1);
INSERT INTO building(id, name, level) VALUES (950, "building_fishing_wharflevel", 1);
INSERT INTO demand(goods_id, building_id, max_demand, current_input, level) VALUES (18, 950, 5.0, 4.0, 1);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (8, 950, 50.0, 40.0, 1);
INSERT INTO building(id, name, level) VALUES (951, "building_portlevel", 1);
INSERT INTO demand(goods_id, building_id, max_demand, current_input, level) VALUES (18, 951, 5.0, 4.0, 1);
INSERT INTO building(id, name, level) VALUES (952, "building_barrackslevel", 5);
INSERT INTO demand(goods_id, building_id, max_demand, current_input, level) VALUES (2, 952, 2.5, 0.0, 5);
INSERT INTO building(id, name, level) VALUES (953, "building_naval_baselevel", 3);
INSERT INTO demand(goods_id, building_id, max_demand, current_input, level) VALUES (5, 953, 6.0, 9.0, 3);
INSERT INTO building(id, name, level) VALUES (3018, "building_subsistence_farmslevel", 9);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (7, 3018, 16.18335, 16.18335, 9);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (9, 3018, 3.23667, 3.23667, 9);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (10, 3018, 3.23667, 3.23667, 9);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (12, 3018, 3.23667, 3.23667, 9);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (13, 3018, 3.23667, 3.23667, 9);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (15, 3018, 3.23667, 3.23667, 9);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (38, 3018, 4.53133, 4.53133, 9);
INSERT INTO building(id, name, level) VALUES (3464, "building_subsistence_farmslevel", 21);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (7, 3464, 45.16627, 45.16627, 21);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (9, 3464, 9.03325, 9.03325, 21);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (10, 3464, 9.03325, 9.03325, 21);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (12, 3464, 9.03325, 9.03325, 21);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (13, 3464, 9.03325, 9.03325, 21);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (15, 3464, 9.03325, 9.03325, 21);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (38, 3464, 12.64655, 12.64655, 21);
INSERT INTO building(id, name, level) VALUES (3465, "building_urban_centerlevel", 1);
INSERT INTO demand(goods_id, building_id, max_demand, current_input, level) VALUES (10, 3465, 5.0, 6.257588618488097, 1);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (15, 3465, 25.0, 25.0, 1);
INSERT INTO building(id, name, level) VALUES (3653, "building_subsistence_orchardslevel", 5);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (7, 3653, 1.504, 1.504, 5);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (9, 3653, 0.752, 0.752, 5);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (10, 3653, 2.256, 2.256, 5);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (12, 3653, 1.504, 1.504, 5);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (13, 3653, 1.504, 1.504, 5);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (15, 3653, 1.504, 1.504, 5);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (37, 3653, 4.00064, 4.00064, 5);
INSERT INTO supply(goods_id, building_id, max_supply, current_output, level) VALUES (38, 3653, 2.1056, 2.1056, 5);
INSERT INTO building(id, name, level) VALUES (4019, "building_trade_centerlevel", 6);
INSERT INTO building(id, name, level) VALUES (4342, "building_conscription_centerlevel", 1);
