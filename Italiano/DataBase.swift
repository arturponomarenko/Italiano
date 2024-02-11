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
            ("loro non hanno mangiato", "вони не їли")
        ])
    ]
    
    //    func random() -> LangPair {
    //        data.randomElement()!
    //    }
}
