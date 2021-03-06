#language: ru

@tree

Функционал: Практическое задание к модулю 5

Как Пользователь я хочу
в цикле создать 10 элементов справочника Номенклатура
чтобы выполнить задание 

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Создание элементов справочника Номенклатура в цикле
	И Я запоминаю значение выражения '0' в переменную "Итератор"	
	И я делаю 10 раз
		И Я запоминаю значение выражения '$Итератор$ + 1' в переменную "Итератор"
		И Я запоминаю значение выражения '"Новая номенклатура " + $Итератор$' в переменную "ИмяНоменклатуры"
		И я проверяю или создаю для справочника "Items" объекты:
			| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture' | 'Vendor' | 'ItemID' | 'PackageUnit' | 'Description_en'    | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
			| '{"e1cib/data/Catalog.Items?ref=" + СтрЗаменить(New UUID, "-", "")}' | 'False'        |        | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6878' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' |                |          |          | ''            | '$ИмяНоменклатуры$' | ''                 | ''               | ''               |          |          |          |          |         |
	



	