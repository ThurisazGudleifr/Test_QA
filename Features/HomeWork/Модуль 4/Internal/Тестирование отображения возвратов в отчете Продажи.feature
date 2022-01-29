﻿#language: ru

@tree

Функционал: Тестирование отображения возвратов в отчете Продажи

Как Тестировщик я хочу
протестировать отображение возвратов в отчете Продажи
чтобы выполнить практическое задание

Контекст:
	И Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
Сценарий: Создание документов возврата
	И Экспорт основных данных
	И Создание документов Возврат товаров от покупателя и Возврат от розничного покупателя 

Сценарий: Тестирование отображения возвратов в отчете Продажи
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Тогда открылось окно 'D2001 Продажи'
	И в табличном документе 'Result' я перехожу к ячейке "R1C1"
	И я нажимаю на кнопку с именем 'FormGenerate'
	И я жду когда в табличном документе "Result" заполнится ячейка "R8C2" в течение 20 секунд	 
	И в табличном документе 'Result' я перехожу к ячейке "R8C2"
	И в табличном документе 'Result' я делаю двойной клик на текущей ячейке
	Тогда открылось окно 'Выбор поля'
	И в таблице "Source" я перехожу к строке:
		| 'Доступные поля' |
		| 'Регистратор'    |
	И в таблице "Source" я выбираю текущую строку
	Тогда открылось окно 'D2001 Продажи (Расшифровка)'
	И я жду, что в табличном документе "Result" ячейка "R5C1:R6C1" станет равна "Регистратор" в течение 20 секунд
	Тогда табличный документ "Result" содержит строки по шаблону:
		| 'Регистратор'                        | 'Итого'      | ''      | ''                  | ''             |
		| ''                                   | 'Количество' | 'Сумма' | 'Сумма без налогов' | 'Сумма скидки' |
		| 'Возврат от розничного покупателя *' | '*'          | '*'     | '*'                 | '*'            |
		| 'Возврат товаров от покупателя *'    | '*'          | '*'     | '*'                 | '*'            |
	И я закрываю все окна клиентского приложения
	



					

		