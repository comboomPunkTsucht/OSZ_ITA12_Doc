//
//  OpenAIService.swift
//  ITA 12 Docs OSZimt
//
//  Created by mcpeaps_HD on 15/04/2023.
//

import Foundation
import Alamofire

class OpenAIService {
    private let endpointURL = "https://api.openai.com/v1/chat/completions/"
    func sendMessage(messages: [Message]) async -> OpenAIChatResponse? {
        let openAIMessage = messages.map({OpenAIChatMessage(role: $0.role, content: $0.content)})
        let body = OpenAIChatBody(model: "gpt-3.5-turbo", messeges: openAIMessage)
        let headers: HTTPHeaders = [
            "Authorization": "Bearer \(Constants.OpenAIAPIKey)"
        ]
        return try? await AF.request(endpointURL, method: .post, parameters: body, encoder: .json, headers: headers).serializingDecodable(OpenAIChatResponse.self).value
    }
}


struct OpenAIChatBody: Encodable {
    let model: String
    let messeges: [OpenAIChatMessage]
}


struct OpenAIChatMessage: Codable {
    let role: SenderRole
    let content: String
}

enum SenderRole: String, Codable {
    case system
    case user
    case assistant
}

struct OpenAIChatResponse: Decodable {
    let choices: [OPenAIChatChoice]
}

struct OPenAIChatChoice: Decodable {
    let message: OpenAIChatMessage
}
