//Уколов Владимир Никитич
Процедура ОбработкаПолученияПолейПредставления(Поля, СтандартнаяОбработка)
	СтандартнаяОбработка = Ложь;
	Поля.Добавить("Наименование");
	Поля.Добавить("Родитель");
	Поля.Добавить("ЭтоГруппа"); 
	Поля.Добавить("ВидНоменклатуры");
КонецПроцедуры

Процедура ОбработкаПолученияПредставления(Данные, Представление, СтандартнаяОбработка)
	Если НЕ Данные.ЭтоГруппа И Данные.ВидНоменклатуры = Перечисления.ВидНоменклатуры.Товар Тогда
		СтандартнаяОбработка = Ложь;
		Представление = СтрШаблон("%1(%2)", Данные.Наименование, Данные.Родитель); 
	КонецЕсли;
КонецПроцедуры
