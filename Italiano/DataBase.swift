//
//  DataBase.swift
//  Italiano
//
//  Created by Artur Ponomarenko on 10.02.2024.
//

import SwiftData

class TopicsContainer {
  
  static let data: [(topic: String, [(it: String, uk: String)])] = [
    ("Теперішній час", [
      // parlare
      ("io parlo", "я кажу"),
      ("tu parli", "ти кажеш"),
      ("noi parliamo", "ми кажемо"),
      ("voi parlate", "ви кажете"),
      ("lui parla", "він каже"),
      ("lei parla", "вона каже"),
      ("loro parlano", "вони кажуть"),
      
      ("io non parlo", "я не кажу"),
      ("tu non parli", "ти не кажеш"),
      ("noi non parliamo", "ми не кажемо"),
      ("voi non parlate", "ви не кажете"),
      ("lui non parla", "він не каже"),
      ("lei non parla", "вона не каже"),
      ("loro non parlano", "вони не кажуть"),
      
      // mangiare
      ("io mangio", "я їм"),
      ("tu mangi", "ти їсиш"),
      ("noi mangiamo", "ми їмо"),
      ("voi mangiate", "ви їсте"),
      ("lui mangia", "він їсть"),
      ("lei mangia", "вона їсть"),
      ("loro mangiano", "вони їдять"),
      
      ("io non mangio", "я не їм"),
      ("tu non mangi", "ти не їсиш"),
      ("noi non mangiamo", "ми не їмо"),
      ("voi non mangiate", "ви не їсте"),
      ("lui non mangia", "він не їсть"),
      ("lei non mangia", "вона не їсть"),
      ("loro non mangiano", "вони не їдять"),
      
      // guardare
      ("io guardo", "я дивлюсь"),
      ("tu guardi", "ти дивишся"),
      ("noi guardiamo", "ми дивимось"),
      ("voi guardate", "ви дивимось"),
      ("lui guarda", "він дивиться"),
      ("lei guarda", "вона дивиться"),
      ("loro guardano", "вони дивляться"),
      
      ("io non guardo", "я не дивлюсь"),
      ("tu non guardi", "ти не дивишся"),
      ("noi non guardiamo", "ми не дивимось"),
      ("voi non guardate", "ви не дивимось"),
      ("lui non guarda", "він не дивиться"),
      ("lei non guarda", "вона не дивиться"),
      ("loro non guardano", "вони не дивляться"),
      
      // giocare
      ("io gioco", "я граюсь"),
      ("tu giochi", "ти граєшся"),
      ("noi giochiamo", "ми граємось"),
      ("voi giocate", "ви граєтесь"),
      ("lui gioca", "він грається"),
      ("lei gioca", "вона грається"),
      ("loro giocano", "вони граються"),
      
      ("io non gioco", "я не граюсь"),
      ("tu non gioci", "ти не граєшся"),
      ("noi non giochiamo", "ми не граємось"),
      ("voi non giocate", "ви не граєтесь"),
      ("lui non gioca", "він не грається"),
      ("lei non gioca", "вона не грається"),
      ("loro non giocano", "вони не граються"),
      
      // lavore
      ("io lavoro", "я працюю"),
      ("tu lavori", "ти працюєш"),
      ("noi lavoriamo", "ми працюємо"),
      ("voi lavorate", "ви працюєте"),
      ("lui lavora", "він працює"),
      ("lei lavora", "вона працює"),
      ("loro lavorano", "вони працюють"),
      
      ("io non lavoro", "я не працюю"),
      ("tu non lavori", "ти не працюєш"),
      ("noi non lavoriamo", "ми не працюємо"),
      ("voi non lavorate", "ви не працюєте"),
      ("lui non lavora", "він не працює"),
      ("lei non lavora", "вона не працює"),
      ("loro non lavorano", "вони не працюють"),
      
      // amare
      ("io amo", "я люблю"),
      ("tu ami", "ти любиш"),
      ("noi amiamo", "ми любимо"),
      ("voi amate", "ви любите"),
      ("lui ama", "він любить"),
      ("lei ama", "вона любить"),
      ("loro amano", "вони люблять"),
      
      ("io non amo", "я не люблю"),
      ("tu non ami", "ти не любиш"),
      ("noi non amiamo", "ми не любимо"),
      ("voi non amate", "ви не любите"),
      ("lui non ama", "він не любить"),
      ("lei non ama", "вона не любить"),
      ("loro non amano", "вони не люблять"),
      
      // ascoltate
      ("io ascolto", "я слухаю"),
      ("tu ascolti", "ти слухаєш"),
      ("noi ascoltiamo", "ми слухаємо"),
      ("voi ascoltate", "ви слухаєте"),
      ("lui ascolta", "він слухає"),
      ("lei ascolta", "вона слухає"),
      ("loro ascoltano", "вони слухають"),
      
      ("io non ascolto", "я не слухаю"),
      ("tu non ascolti", "ти не слухаєш"),
      ("noi non ascoltiamo", "ми не слухаємо"),
      ("voi non ascoltate", "ви не слухаєте"),
      ("lui non ascolta", "він не слухає"),
      ("lei non ascolta", "вона не слухає"),
      ("loro non ascoltano", "вони не слухають"),
      
      // imparare
      ("io imparo", "я вчюся"),
      ("tu impari", "ти вчишся"),
      ("noi impariamo", "ми вчимось"),
      ("voi imparate", "ви вчитесь"),
      ("lui impara", "він вчиться"),
      ("lei impara", "вона вчиться"),
      ("loro imparano", "вони вчаться"),
      
      ("io non imparo", "я не вчюся"),
      ("tu non impari", "ти не вчиш"),
      ("noi non impariamo", "ми не вчимось"),
      ("voi non imparate", "ви не вчитесь"),
      ("lui non impara", "він не вчиться"),
      ("lei non impara", "вона не вчиться"),
      ("loro non imparano", "вони не вчаться"),
      
      // abitare
      ("io abito", "я мешкаю"),
      ("tu abiti", "ти мешкаєш"),
      ("noi abitiamo", "ми мешкаємо"),
      ("voi abitate", "ви мешкаєте"),
      ("lui abita", "він мешкає"),
      ("lei abita", "вона мешкає"),
      ("loro abitano", "вони мешкають"),
      
      ("io non abito", "я не мешкаю"),
      ("tu non abiti", "ти не мешкаєш"),
      ("noi non abitiamo", "ми не мешкаємо"),
      ("voi non abitate", "ви не мешкаєте"),
      ("lui non abita", "він не мешкає"),
      ("lei non abita", "вона не мешкає"),
      ("loro non abitano", "вони не мешкають"),
    ]),
    ("Минулий час", [
      // parlare
      ("io ho parlato", "я казав"),
      ("tu hai parlato", "ти казав"),
      ("noi abbiamo parlato", "ми казали"),
      ("voi avete parlato", "ви казали"),
      ("lui ha parlato", "він казав"),
      ("lei ha parlato", "вона казала"),
      ("loro hanno parlato", "вони казали"),
      
      ("io non ho parlato", "я не казав"),
      ("tu non hai parlato", "ти не казав"),
      ("noi non abbiamo parlato", "ми не казали"),
      ("voi non avete parlato", "ви не казали"),
      ("lui non ha parlato", "він не казав"),
      ("lei non ha parlato", "вона не казала"),
      ("loro non hanno parlato", "вони не казали"),
      
      // mangiare
      ("io ho mangiato", "я їв"),
      ("tu hai mangiato", "ти їв"),
      ("noi abbiamo mangiato", "ми їли"),
      ("voi avete mangiato", "ви їли"),
      ("lui ha mangiato", "він їв"),
      ("lei ha mangiato", "вона їла"),
      ("loro hanno mangiato", "вони їли"),
      
      ("io non ho mangiato", "я не їв"),
      ("tu non hai mangiato", "ти не їв"),
      ("noi non abbiamo mangiato", "ми не їли"),
      ("voi non avete mangiato", "ви не їли"),
      ("lui non ha mangiato", "він не їв"),
      ("lei non ha mangiato", "вона не їла"),
      ("loro non hanno mangiato", "вони не їли"),
      
      // guardare
      ("io ho guardato", "я дивився"),
      ("tu hai guardato", "ти дивився"),
      ("noi abbiamo guardato", "ми дивилися"),
      ("voi avete guardato", "ви дивилися"),
      ("lui ha guardato", "він дивився"),
      ("lei ha guardato", "вона дивився"),
      ("loro hanno guardato", "вони дивилися"),
      
      ("io non ho guardato", "я не дивився"),
      ("tu non hai guardato", "ти не дивився"),
      ("noi non abbiamo guardato", "ми не дивилися"),
      ("voi non avete guardato", "ви не дивилися"),
      ("lui non ha guardato", "він не дивився"),
      ("lei non ha guardato", "вона не дивився"),
      ("loro non hanno guardato", "вони не дивилися"),
      
      // giocare
      ("io ho giocato", "я грався"),
      ("tu hai giocato", "ти грався"),
      ("noi abbiamo giocato", "ми гралися"),
      ("voi avete giocato", "ви гралися"),
      ("lui ha giocato", "він грався"),
      ("lei ha giocato", "вона гралась"),
      ("loro hanno giocato", "вони гралися"),
      
      ("io non ho giocato", "я не грався"),
      ("tu non hai giocato", "ти не грався"),
      ("noi non abbiamo giocato", "ми не гралися"),
      ("voi non avete giocato", "ви не гралися"),
      ("lui non ha giocato", "він не грався"),
      ("lei non ha giocato", "вона не гралась"),
      ("loro non hanno giocato", "вони не гралися"),
      
      // lavore
      ("io ho lavorato", "я працював"),
      ("tu hai lavorato", "ти працював"),
      ("noi abbiamo lavorato", "ми працювали"),
      ("voi avete lavorato", "ви працювали"),
      ("lui ha lavorato", "він працював"),
      ("lei ha lavorato", "вона працювала"),
      ("loro hanno lavorato", "вони працювали"),
      
      ("io non ho lavorato", "я не працював"),
      ("tu non hai lavorato", "ти не працював"),
      ("noi non abbiamo lavorato", "ми не працювали"),
      ("voi non avete lavorato", "ви не працювали"),
      ("lui non ha lavorato", "він не працював"),
      ("lei non ha lavorato", "вона не працювала"),
      ("loro non hanno lavorato", "вони не працювали"),
      
      // amare
      ("io ho amato", "я любив"),
      ("tu hai amato", "ти любила"),
      ("noi abbiamo amato", "ми любили"),
      ("voi avete amato", "ви любили"),
      ("lui ha amato", "він любив"),
      ("lei ha amato", "вона любила"),
      ("loro hanno amato", "вони любили"),
      
      ("io non ho amato", "я не любив"),
      ("tu non hai amato", "ти не любила"),
      ("noi non abbiamo amato", "ми не любили"),
      ("voi non avete amato", "ви не любили"),
      ("lui non ha amato", "він не любив"),
      ("lei non ha amato", "вона не любила"),
      ("loro non hanno amato", "вони не любили"),
      
      // ascoltate
      ("io ho ascoltato", "я слухав"),
      ("tu hai ascoltato", "ти слухав"),
      ("noi abbiamo ascoltato", "ми слухали"),
      ("voi avete ascoltato", "ви слухали"),
      ("lui ha ascoltato", "він слухав"),
      ("lei ha ascoltato", "вона слухала"),
      ("loro hanno ascoltato", "вони слухали"),
      
      ("io non ho ascoltato", "я не слухав"),
      ("tu non hai ascoltato", "ти не слухав"),
      ("noi non abbiamo ascoltato", "ми не слухали"),
      ("voi non avete ascoltato", "ви не слухали"),
      ("lui non ha ascoltato", "він не слухав"),
      ("lei non ha ascoltato", "вона не слухала"),
      ("loro non hanno ascoltato", "вони не слухали"),
      
      // imparare
      ("io ho imparato", "я вчився"),
      ("tu hai imparato", "ти вчився"),
      ("noi abbiamo imparato", "ми вчилися"),
      ("voi avete imparato", "ви вчилися"),
      ("lui ha imparato", "він вчився"),
      ("lei ha imparato", "вона вчилася"),
      ("loro hanno imparato", "вони вчилися"),
      
      ("io non ho imparato", "я не вчився"),
      ("tu non hai imparato", "ти не вчився"),
      ("noi non abbiamo imparato", "ми не вчилися"),
      ("voi non avete imparato", "ви не вчилися"),
      ("lui non ha imparato", "він не вчився"),
      ("lei non ha imparato", "вона не вчилася"),
      ("loro non hanno imparato", "вони не вчилися"),
      
      // abitare
      ("io ho abitato", "я мешкав"),
      ("tu hai abitato", "ти мешкав"),
      ("noi abbiamo abitato", "ми мешкали"),
      ("voi avete abitato", "ви мешкали"),
      ("lui ha abitato", "він мешкав"),
      ("lei ha abitato", "вона мешкала"),
      ("loro hanno abitato", "вони мешкали"),
      
      ("io non ho abitato", "я не мешкав"),
      ("tu non hai abitato", "ти не мешкав"),
      ("noi non abbiamo abitato", "ми не мешкали"),
      ("voi non avete abitato", "ви не мешкали"),
      ("lui non ha abitato", "він не мешкав"),
      ("lei non ha abitato", "вона не мешкала"),
      ("loro non hanno abitato", "вони не мешкали"),
    ])
  ]
}
