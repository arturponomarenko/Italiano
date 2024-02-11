//
//  Speaker.swift
//  Italiano
//
//  Created by Artur Ponomarenko on 10.02.2024.
//

import AVFoundation

class Speaker {
    
    var isEnabled = true
    private var speechSynthesizer: AVSpeechSynthesizer!
    
    init() {
        #if !targetEnvironment(simulator)
        speechSynthesizer = AVSpeechSynthesizer()
        speechSynthesizer.usesApplicationAudioSession = false
        #endif
    }
    
    func speech(_ languageItem: LanguageItem) {
        #if !targetEnvironment(simulator)
        guard isEnabled else { return }
        let speechUtterance: AVSpeechUtterance = AVSpeechUtterance(string: languageItem.text)
        switch languageItem.language {
        case .italian:
            speechUtterance.voice = AVSpeechSynthesisVoice(language: "it-IT")
        case .ukrainian:
            speechUtterance.voice = AVSpeechSynthesisVoice(language: "uk-UK")
        }
        speechSynthesizer.speak(speechUtterance)
        #endif
    }
    
    func stop() {
        #if !targetEnvironment(simulator)
        speechSynthesizer.stopSpeaking(at: .immediate)
        #endif
    }
}
