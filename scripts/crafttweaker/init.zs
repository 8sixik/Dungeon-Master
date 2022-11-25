/*
    Эти скрипты созданы и предназначены для использования в Select Mode и других
    модпаках, курируемых Saudade Studio. Вы можете использовать эти скрипты для ознакомления и
    обучения, но не для копирования и вставки и утверждения как своих собственных.
*/
init();

public function init() as void {
   playerin_1();
   tickevent_1();
   selectdificult();

   if(selectlang.ru){
        ru_info();
   }
   if(selectlang.en){
        en_info();
   }

}

//  <item:enigmaticlegacy:enigmatic_amulet>.withTag({AssignedColor: 0.4 as float, Inscription: "8sixik" as string})