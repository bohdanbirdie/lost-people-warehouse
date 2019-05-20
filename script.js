const fs = require('fs');
fs.readFile('./located-mssql.sql', (err, data) => {
  const res = data.toString();
  const s = res.split('\n');
  const rr = s.map((e, index)=>{

    if (index % 999 === 0) {
      return e.replace('),', ');') + '\n' + 'INSERT INTO located_area ([id], [country], [region], [area]) VALUES';
    }
    return e;
  })
fs.writeFile('message.sql', rr.join('\n'), (err) => {
  if (err) throw err;
  console.log('The file has been saved!');
});
})


// CREATE TABLE located_countrys (
//   [id] int check ([id] > 0) NOT NULL IDENTITY,
//   [country] varchar(60) NOT NULL,
//   PRIMARY KEY ([id]),
//   CONSTRAINT [country_UNIQUE] UNIQUE  ([country])
// )  ;

// /*!40000 ALTER TABLE `located_countrys` DISABLE KEYS */;
// INSERT INTO located_countrys ([id], [country]) VALUE
// 	(1, "Україна");
// /*!40000 ALTER TABLE `located_countrys` ENABLE KEYS */;


// CREATE TABLE located_region (
//   [id] int check ([id] > 0) NOT NULL IDENTITY,
//   [country] int check ([country] > 0) NOT NULL DEFAULT '1',
//   [region] varchar(60) NOT NULL,
//   PRIMARY KEY ([id])
// )  ;

// CREATE INDEX [fk_countrys] ON located_region ([country]);

// /*!40000 ALTER TABLE `located_region` DISABLE KEYS */;
// INSERT INTO located_region ([id], [country], [region]) VALUES
// 	(1, 1, "Вінницька"),
// 	(2, 1, "Волинська"),
// 	(3, 1, "Дніпропетровська"),
// 	(4, 1, "Донецька"),
// 	(5, 1, "Житомирська"),
// 	(6, 1, "Закарпатська"),
// 	(7, 1, "Запорізька"),
// 	(8, 1, "Івано-Франківська"),
// 	(9, 1, "Київ"),
// 	(10, 1, "Київська"),
// 	(11, 1, "Кіровоградська"),
// 	(12, 1, "Луганська"),
// 	(13, 1, "Львівська"),
// 	(14, 1, "Миколаївська"),
// 	(15, 1, "Одеська"),
// 	(16, 1, "Полтавська"),
// 	(17, 1, "Республіка Крим"),
// 	(18, 1, "Рівненська"),
// 	(19, 1, "Севастополь"),
// 	(20, 1, "Сумська"),
// 	(21, 1, "Тернопільська"),
// 	(22, 1, "Харківська"),
// 	(23, 1, "Херсонська"),
// 	(24, 1, "Хмельницька"),
// 	(25, 1, "Черкаська"),
// 	(26, 1, "Чернівецька"),
// 	(27, 1, "Чернігівська");
// /*!40000 ALTER TABLE `located_region` ENABLE KEYS */;
// CREATE TABLE located_area (
//   [id] int check ([id] > 0) NOT NULL IDENTITY,
//   [country] int check ([country] > 0) NOT NULL,
//   [region] int check ([region] > 0) NOT NULL,
//   [area] varchar(150) NOT NULL,
//   PRIMARY KEY ([id])
// )  ;

// CREATE INDEX [fk_area_c] ON located_area ([country]);
// CREATE INDEX [fk_area_r] ON located_area ([region]);
