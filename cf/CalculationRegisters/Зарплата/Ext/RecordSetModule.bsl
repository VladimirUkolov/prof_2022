﻿//Уколов Владимир Никитич
Процедура Рассчитать() Экспорт 

	Для Каждого Движение Из ЭтотОбъект Цикл
		
		Если Движение.ВидРасчета = ПланыВидовРасчета.НачисленияИУдержания.Ставка Тогда 
			ТаблицаГрафикаПоФакту = Движение.ПолучитьДанныеГрафика(ВидПериодаРегистраРасчета.ФактическийПериодДействия);
			ФактЧасов = ТаблицаГрафикаПоФакту.Итог("КоличествоЧасов");
			Движение.Сумма = ФактЧасов*Движение.ПараметрРасчета;
		КонецЕсли;
		
	КонецЦикла;

КонецПроцедуры
