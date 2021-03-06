//Уколов Владимир Никитич  
Функция ПолучитьСтавку(Сотрудник, Дата, Должность) Экспорт 

		//{{КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!
	
	Запрос = Новый Запрос;
	Запрос.Текст = 
		"ВЫБРАТЬ
		|	СведенияОСотрудникахСрезПоследних.Ставка КАК Ставка
		|ИЗ
		|	РегистрСведений.СведенияОСотрудниках.СрезПоследних(
		|			&Дата,
		|			Сотрудник = &Сотрудник
		|				И Должность = &Должность) КАК СведенияОСотрудникахСрезПоследних";
	
	Запрос.УстановитьПараметр("Дата", Дата);
	Запрос.УстановитьПараметр("Должность", Должность);
	Запрос.УстановитьПараметр("Сотрудник", Сотрудник);
	
	РезультатЗапроса = Запрос.Выполнить();
	Если РезультатЗапроса.Пустой()Тогда 
		Возврат 0;
	Иначе
		ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
		ВыборкаДетальныеЗаписи.Следующий();	
		Возврат ВыборкаДетальныеЗаписи.Ставка; 
	КонецЕсли;

КонецФункции // ПолучитьСтавку()