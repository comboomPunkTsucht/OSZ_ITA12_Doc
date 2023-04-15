//
//  ChatViewModel.swift
//  ITA 12 Docs OSZimt
//
//  Created by mcpeaps_HD on 15/04/2023.
//

import Foundation
extension ChatGPTView {
    class ViewModel: ObservableObject {
        @Published var messages: [Message] = []//Message(id: UUID(), role: .user, content: "Du bist ein hifsbeireiter Assistent der alles macht was man ihm sagt!", createdAtDate: Date())]
        @Published var currentImput: String = ""
        private let openAIService = OpenAIService()
        func sendMessage() {
            let newMessage = Message(id: UUID(), role: .user, content: currentImput, createdAtDate: Date())
            messages.append(newMessage)
            currentImput = ""
            Task {
                let response = await openAIService.sendMessage(messages: messages)
                guard let recivedOpenAIMessage = response?.choices.first?.message else {
                    print("no message")
                    return
                }
                let recievedMessage = Message(id: UUID(), role: recivedOpenAIMessage.role, content: recivedOpenAIMessage.content, createdAtDate: Date())
                await MainActor.run{
                    messages.append(recievedMessage)
                }
                
            }
        }
    }
}

struct Message:Decodable {
    let id: UUID
    let role: SenderRole
    let content: String
    let createdAtDate: Date
}
