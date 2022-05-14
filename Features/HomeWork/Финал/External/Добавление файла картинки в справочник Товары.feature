﻿#language: ru

@ExportScenarios
@tree
@IgnoreOnCIMainBuild

Функционал: Проверка возможности добавления файла картинки в справочник Товары

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Добавления файла картинки в справочник Товары

*Подготовка тестовых данных 
 	И загрузка товаров
 
 *Проверка выбора уже загруженного файла картинки
	И Я открываю навигационную ссылку "e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d"
	Когда открылось окно 'Торт (Товар)'
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда открылось окно 'Файлы'
	И таблица "Список" содержит строки:
		| 'Наименование' | 'Код'       |
		| 'Торт '        | '000000012' |
	И в таблице "Список" я перехожу к строке по шаблону
		| 'Наименование' | 'Код'       |
		| 'Торт '        | '000000012' |
	Когда открылось окно 'Файлы'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда элемент формы с именем "ФайлКартинки" стал равен 'Торт '
				
*Проверка загрузки нового файла картинки
	И я нажимаю кнопку очистить у поля с именем "ФайлКартинки"
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда открылось окно 'Файлы'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Файл (создание)'	
	И я выбираю файл "$КаталогПроекта$\Files\itempicture1.png"
	И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'	
	Когда открылось окно 'itempicture1.png (Файл)'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'itempicture1.png (Файл)' в течение 20 секунд
	И таблица "Список" содержит строки:
		| 'Наименование'     | 'Код' |
		| 'itempicture1.png' | '*'   |
	И в таблице "Список" я перехожу к строке по шаблону
			| 'Наименование'     | 'Код' |
			| 'itempicture1.png' | '*'   |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда элемент формы с именем "ФайлКартинки" стал равен 'itempicture1.png'		
	И я закрываю все окна клиентского приложения
