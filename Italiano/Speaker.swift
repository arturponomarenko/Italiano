//
//  Speaker.swift
//  Italiano
//
//  Created by Artur Ponomarenko on 10.02.2024.
//

import AVFoundation

class Speaker {
    
    var isEnabled = true
    let speechSynthesizer = AVSpeechSynthesizer()
    
    init() {
        speechSynthesizer.usesApplicationAudioSession = false
    }
    
    func speech(_ text: String, language: Language) {
        guard isEnabled else { return }
        let speechUtterance: AVSpeechUtterance = AVSpeechUtterance(string: text)
//        speechUtterance.rate = AVSpeechUtteranceMaximumSpeechRate / 1.9
        switch language {
        case .italian:
            speechUtterance.voice = AVSpeechSynthesisVoice(language: "it-IT")
        case .ukrainian:
            speechUtterance.voice = AVSpeechSynthesisVoice(language: "uk-UK")
        }
        speechSynthesizer.speak(speechUtterance)
    }
    
    func stop() {
        speechSynthesizer.stopSpeaking(at: .immediate)
    }
    
    
}
