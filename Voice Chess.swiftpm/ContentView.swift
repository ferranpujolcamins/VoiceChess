import SwiftUI

struct ContentView: View {
    @StateObject var speechRecognizer = SpeechRecognizer()
    var body: some View {
        TextField("...", text: $speechRecognizer.transcript)
            .onAppear { 
                speechRecognizer.reset()
                speechRecognizer.transcribe()
            }
            .onDisappear { 
                speechRecognizer.stopTranscribing()
            }
    }
}
