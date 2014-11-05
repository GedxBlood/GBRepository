﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WaybillsPrintPage.aspx.cs" Inherits="Traffic.Web_Forms.WaybillsPrint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1">
        <div style="display: table; margin: 0px auto;">
            	<span style="text-align:center; font-weight:bold;">Путевой лист № <input type="text" name="waybillNumber" style="width:70px;"></span>
            	<span style="margin-left:250px;"><input type="date" name="waybillDate" placeholder="ГГГГ-ММ-ДД" style="width:150px;"></span>
            </div>
	<div style="width:40%; float:left; margin-top:30px;">
            	<br />
<span style="display:block; text-align:center;"></span>                <hr>
                <span style="text-align:center; width:100%; display:block; font-size:11px;">наименование перевозчика (штамп)</span>
                
                <table class="show" width="100%" style="margin-top:30px;">
                	<tr class="header">
                    	<td colspan="3">Автомобиль, прицеп, полуприцеп</td>
                    </tr>
                    <tr class="header">
                    	<td>Марка автомобиля, прицепа, полуприцепа | Регистрационный знак</td>
                        <td>Гаражный номер</td>
                    </tr>
                    <tr>
                   		<td>
                            <select name="registrationNumberTransport">
                                <option value="not">Не выбрано</option>
                                                            </select>
                        </td>
                        <td>
                            
                        </td>
                    </tr>
                    <tr>
                   		<td>
                            <select name="registrationNumberTrailer">
                                <option value="not">Не выбрано</option>
                                                            </select>
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
                <table class="show" width="100%" style="margin-top:1px;">
                    <tr class="header">
                    	<td colspan="4">Водитель</td>
                    </tr>
                    <tr class="header">
                    	<td>Фамилия, инициалы | табельный номер, класс</td>
                        <td>Номер водительского удостоверения</td>
                        <td>Водитель по состоянию здоровья  допущен<br>Подпись (штамп)</td>
                    </tr>
                    <tr>
                        <td width="50%">
                            <select name="registrationNumberEmployee">
                                <option value="not">Не выбрано</option>
                                                            </select>
                        </td>
                        <td>&nbsp;
                            
                        </td>
                    </tr>
                </table>
            </div>
            <div style="width:58%; float:right; ">
            	<table class="show" width="100%">
                	<tr class="header"> 
                    	<td colspan="7">Работа водителя и автомобиля</td>
                    </tr>
                    <tr class="header">
                    	<td rowspan="2">Операция</td>
                        <td rowspan="2">Показания спидометра</td>
                        <td colspan="2">Дата (год-месяц-число), время (ч, мин)</td>
                        <td rowspan="2">Нулевой пробег, км</td>
                        <td colspan="2">Время работы, ч</td>
                    </tr>
                    <tr class="header">
                    	<td>по графику</td>
                        <td>фактически</td>
                        <td>двигателя</td>
                        <td>спецобору-<br>дования</td>
                    </tr>
                    <tr>
                    	<td class="header">Выезд на линию</td>
                        <td><input type="number" name="speedometerON"></td>
                        <td><input type="date" placeholder="ГГГГ-ММ-ДД" name="dateGrafficON" /><br>
                        	<input type="time" placeholder="ЧЧ:ММ" name="timeGrafficON" /></td>
                        <td><input type="date" placeholder="ГГГГ-ММ-ДД" name="dateFactON" /><br>
                        	<input type="time" placeholder="ЧЧ:ММ" name="timeFactON" /></td>
                        <td><!--<input type="number" name="zeroMileageON">--></td>
						<td><!--<input type="number" name="workTimeEngineON">--></td>
                        <td><!--<input type="number" name="workTimeEquipmentON">--></td>
                    </tr>
                    <tr>
                    	<td class="header">Возвращение с линии</td>
                        <td><input type="number" name="speedometerOFF"></td>
                        <td><input type="date" placeholder="ГГГГ-ММ-ДД" name="dateGrafficOFF" /><br>
                        	<input type="time" placeholder="ЧЧ:ММ" name="timeGrafficOFF" /></td>
                        <td><input type="date" placeholder="ГГГГ-ММ-ДД" name="dateFactOFF" /><br>
                        	<input type="time" placeholder="ЧЧ:ММ" name="timeFactOFF" /></td>
                        <td><input type="number" name="zeroMileageOFF"></td>
						<td><input type="number" name="workTimeEngineOFF"></td>
                        <td><input type="number" name="workTimeEquipmentOFF"></td>
                    </tr>
                </table>
                <table class="show" width="100%" style="margin-top:20px;">
                	<tr class="header">
                    	<td colspan="5">Движение топливно-смазочных материалов (ТСМ)</td>
                    </tr>
                    <tr class="header">
                    	<td colspan="2" width="60%">Заправка ТСМ</td>
                        <td colspan="3">Остаток ТСМ, л</td>
                    </tr>
                    <tr class="header">
                    	<td>дата</td>
                        <td>марка ТСМ</td>
                        <td>количество, л</td>
                        <td>при выезде</td>
                        <td>при воз-<br>вращении</td>
                    </tr>
                    <tr>
                    	<td><input type="date" name="fuelDate1" placeholder="ГГГГ-ММ-ДД"></td>
                        <td><input type="text" name="fuelMark1"></td>
                        <td><input type="number" name="fuelKol1"></td>
                        <td rowspan="2"><input type="number" name="fuelKolLeaving"></td>
                        <td rowspan="2"><input type="number" name="fuelKolArriving"></td>
                    </tr>
                    <tr>
                    	<td><input type="date" name="fuelDate2" placeholder="ГГГГ-ММ-ДД"></td>
                        <td><input type="text" name="fuelMark2"></td>
                        <td><input type="number" name="fuelKol2"></td>
                    </tr>
                    <tr>
                    	<td><input type="date" name="fuelDate3" placeholder="ГГГГ-ММ-ДД"></td>
                        <td><input type="text" name="fuelMark3"></td>
                        <td><input type="number" name="fuelKol3"></td>
                        <td class="header" colspan="2">Подписи (штамп)</td>
                    </tr>
                    <tr>
                    	<td><input type="date" name="fuelDate4" placeholder="ГГГГ-ММ-ДД"></td>
                        <td><input type="text" name="fuelMark4"></td>
                        <td><input type="number" name="fuelKol4"></td>
                        <td class="header">механик</td>
                        <td class="header">механик</td>
                    </tr>
                    <tr>
                    	<td><input type="date" name="fuelDate5" placeholder="ГГГГ-ММ-ДД"></td>
                        <td><input type="text" name="fuelMark5"></td>
                        <td><input type="number" name="fuelKol5"></td>
                        <td rowspan="2"></td>
                        <td rowspan="2"></td>
                    </tr>
                    <tr>
                    	<td><input type="date" name="fuelDate6" placeholder="ГГГГ-ММ-ДД"></td>
                        <td><input type="text" name="fuelMark6"></td>
                        <td><input type="number" name="fuelKol6"></td>
                    </tr>
                </table>
                <span style="display:block; text-align:center; margin-top:5px;">Утверждаю,
                <select name="approver">
                	<option value="not">Не выбрано</option>
                                    </select> ________________________</span>
            </div>
            <div style="clear:both;"></div>
            <div>
            	<table class="show" width="100%" style="margin-top:5px;" id="p_scents">
                	<tr class="header">
                    	<td colspan="9">Задание водителю (цель: доставка груза получателю) согласно приказу №
            	<span style="text-align:center; font-weight:bold;"><input type="text" name="orderNumber" style="width:70px;"></span> от 
            	<span style="margin-left:10px;"><input type="date" name="waybillDate11" style="width:150px;" placeholder="ГГГГ-ММ-ДД"></span>
                        </td>
                    </tr>
                    <tr class="header">
                    	<td rowspan="2" width="15%">Заказчик</td>
                        <td colspan="2">Дата, время</td>
                        <td rowspan="2">Пункт отправления(адрес места погрузки)</td>
                        <td rowspan="2">Пункт назначения(адрес места разгрузки)</td>
                        <td rowspan="2">Расстояние, км</td>
                        <td rowspan="2">Наименование груза</td>
                        <td rowspan="2">Вес груза, т</td>
                        <td rowspan="2">Количество поездок с грузом, ч</td>
                     </tr>
                     <tr class="header">
                        <td>прибытия</td>
                        <td>убытия</td>
                    </tr>
                    <tr>
                    	 <td>
                            <select name="client1">
                                <option value="not">Не выбрано</option>
                                <option value="15">Белорусско-Российский университет</option><option value="16">Тестовая организация 2</option>                            </select>
                        </td>
                        <td>
                        	<input type="date" name="dateArrive1" placeholder="ГГГГ-ММ-ДД" /><br />
                            <input type="time" name="timeArrive1" placeholder="ЧЧ:ММ" />
                        </td>
                        <td>
                        	<input type="date" name="dateLeaving1" placeholder="ГГГГ-ММ-ДД" /><br />
                            <input type="time" name="timeLeaving1" placeholder="ЧЧ:ММ" />
                        </td>
                        <td>
                        	<input type="text" name="punctLeaving1" />
                        </td>
                         <td>
                        	<input type="text" name="punctArrive1" />
                        </td>
                        <td>
                        	<input type="number" name="routeMileage1" />
                        </td>
                        <td>
                        	<input type="text" name="load1" />
                        </td>
                        <td>
                        	<input type="number" name="weight1" />
                        </td>
                        <td>
                        	<input type="number" name="loadTime1" />
                        </td>
                    </tr>
                  </table>
                  <div class="btn" id="addScnt">Добавить строку</div>
            	  <div class="btn" id="remScnt">Убрать строку</div>
             </div>
</form>
</body>
</html>