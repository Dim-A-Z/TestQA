﻿#language: ru
@ExportScenarios
@IgnoreOnCIMainBuild
@tree

Функционал: Подготовить данные для тестирования Заказа   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Подготовить данные для тестирования Заказа

	// Справочник.Валюты

	И я проверяю или создаю для справочника "Валюты" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НаименованиеОсновнойВалюты' | 'НаименованиеРазменнойВалюты' |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'False'           | '000000001' | 'Рубли'        | 'рубль'                      | 'копейка'                     |

	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'        | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'   | 'Улица'            | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта'       | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710079' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000013' | 'Магазин "Продукты"'  | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '127400' | 'Россия' | 'Москва'  | 'Электрозаводская' | '21'  | '+7(999)568-45-96' | 'smirnov@product.ru'     | '+7(999)568-45-97' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | 'Смирнов А. Г.'  | 55.786113 | 37.70331  |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000009' | 'Животноводство ООО ' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4233' | '125678' | 'Россия' | 'Барнаул' | 'Ленина'           | '2'   | '+7(999)261-79-79' | 'givotnovodstvo@mail.ru' | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | 'Папанов Р. Д.'  |           |           |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'           | ''                                                                       | 'True'      | '000000002' | 'Покупатели'          | ''                                                                   | ''       | ''       | ''        | ''                 | ''    | ''                 | ''                       | ''                 | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'          | ''                                                                   | ''       | ''       | ''        | ''                 | ''    | ''                 | ''                       | ''                 | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |

	// Справочник.Организации

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'False'           | '000000002' | 'ООО "Товары"' | 'True'         |

	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'       |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4233' | 'False'           | '000000005' | 'Алтай'        |

	// Справочник.Склады

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'False'           | '000000003' | 'Средний'      | 'False'          |

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Артикул'  | 'Поставщик'                                                              | 'ФайлКартинки' | 'Вид'                    | 'Штрихкод' | 'Описание'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=a9bc00055d49b45e11dbc8caefc3ed8f' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a100005056c0000811e3f7c0ef680671' | 'False'     | '000000021' | 'Масло'        | 'ПРД-0002' | 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | ''             | 'Enum.ВидыТоваров.Товар' | ''         | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p>Масло сливочное "Продукты с фермы".</p>\n<p><span style=" font-weight: bold;">Вес -</span><span style=" font-weight: bold;"> </span>180 г.</p>\n<p><span style=" font-weight: bold;">Жирность -</span><span style=" font-weight: bold;"> </span>72.5%.</p>\n<p><span style=" font-weight: bold;">Упаковка</span><span style=" font-weight: bold;"> -</span><span style=" font-weight: bold;"> </span>в фольге.</p>\n<p><br></p>\n</body></html>' |          |
		| 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df5' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a100005056c0000811e3f7c0ef680671' | 'False'     | '000000027' | 'Ряженка'      | 'R45'      | 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | ''             | 'Enum.ВидыТоваров.Товар' | ''         | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p>Ряженка "Продукты с фермы".</p>\n<p><br></p>\n<p><span style=" font-weight: bold;">Вес </span>- 350 г.</p>\n<p><span style=" font-weight: bold;">Жирность </span>- 2.5%.</p>\n<p><br></p>\n<p>Может входить в диетическое меню.</p>\n</body></html>'                                                                                                                                                                                             |          |
		| 'e1cib/data/Справочник.Товары?ref=a100005056c0000811e3f7c0ef680671' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'True'      | '000000099' | 'Молочные'     | ''         | ''                                                                       | ''             | ''                       | ''         | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'           | ''                                                                  | 'True'      | '000000011' | 'Продукты'     | ''         | ''                                                                       | ''             | ''                       | ''         | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | ''       |