﻿#language: ru

@tree

Функционал: при добавлении услуги в Заказ можно указать количество

Как Менеджер по продажам я хочу
указывать количество заказанных услуг в Заказе 
чтобы не заводить одну услугу несколькими строками   

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: при добавлении услуги в Заказ можно указать количество
* Создаем документ для проверки
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000037' | 'Доставка'    |	
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
* Проверяем ввод количества
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5'
	Тогда таблица "Товары" содержит строки:
		| 'Товар'    | 'Количество' |
		| 'Доставка' | '5'          |
* Закрываем окна
	Когда открылось окно 'Заказ (создание) *'
	И Я закрываю окно 'Заказ (создание) *'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button1'
	Тогда открылось окно 'Заказы товаров'
	И Я закрываю окно 'Заказы товаров'