//
//  ContentView.swift
//  ITA 12 Docs OSZimt
//
//  Created by mcpeaps_HD on 15/04/2023.
//

import WebKit
import SwiftUI
import Foundation

struct ContentView: View {

    var body: some View {
        
        TabView {
            ClassSideView()
                .tabItem{
                    Text("Klassen Wbseite")
                    Image(systemName: "doc.richtext")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 20.0)
                }
            MoodleView()
                .tabItem {
                    Text("Moodle")
                    Image(systemName: "studentdesk")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 20.0)
                }
            TimeTableView()
                .tabItem {
                    Text("Stundenplan")
                    Image(systemName: "info.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40)
                }
            WebUntisView()
                .tabItem {
                    Text("WebUntis")
                    Image(systemName: "info.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40)
                }
            OSZimtView()
                .tabItem {
                    Text("OSZ IMT Website")
                    Image(systemName: "graduationcap.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40)
                }
          ChatGPTView()
                .tabItem {
                    Text("ChatGPT")
                    Image(systemName: "message.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40)
                }
            WWWView()
                  .tabItem {
                      Text("Browse Web")
                      Image(systemName: "globe")
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .foregroundColor(Color("AccentColor"))
                          .frame(width: 40)
                  }
        }.frame(minWidth: 1280,idealWidth: 1920, maxWidth: 7680, minHeight: 720, idealHeight: 1080, maxHeight: 4320)
        

            
    }
            
}

#if os(iOS)
struct WebView: UIViewRepresentable {
    @Binding var webView: WKWebView
    let request: URLRequest
    @Binding var searchText: String

    class Coordinator: NSObject, WKNavigationDelegate {
        let parent: WebView

        init(_ parent: WebView) {
            self.parent = parent
        }

        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            // Aktualisieren Sie hier das Textfeld mit der tatsächlich geladenen URL
            if let url = webView.url {
                if url.absoluteString.hasPrefix("https://ita12docoszimt.serveblog.net/") {
                    parent.searchText = ""
                } else {
                    parent.searchText = url.absoluteString
                }
            }
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIView(context: Context) -> WKWebView {
        // Importieren von Cookies aus Safari
        WKWebsiteDataStore.default().httpCookieStore.getAllCookies { cookies in
            for cookie in cookies {
                webView.configuration.websiteDataStore.httpCookieStore.setCookie(cookie)
            }
        }

        webView.navigationDelegate = context.coordinator
        webView.load(request)
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

#elseif os(macOS)
struct WebView: NSViewRepresentable {
    @Binding var webView: WKWebView
    let request: URLRequest
    @Binding var searchText: String

    class Coordinator: NSObject, WKNavigationDelegate {
        let parent: WebView

        init(_ parent: WebView) {
            self.parent = parent
        }

        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            // Aktualisieren Sie hier das Textfeld mit der tatsächlich geladenen URL
            if let url = webView.url {
                if url.absoluteString.hasPrefix("https://ita12docoszimt.serveblog.net/") {
                    parent.searchText = ""
                } else {
                    parent.searchText = url.absoluteString
                }
            }
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeNSView(context: Context) -> WKWebView {
        // Importieren von Cookies aus Safari
        WKWebsiteDataStore.default().httpCookieStore.getAllCookies { cookies in
            for cookie in cookies {
                webView.configuration.websiteDataStore.httpCookieStore.setCookie(cookie)
            }
        }

        webView.navigationDelegate = context.coordinator
        webView.load(request)
        return webView
    }

    func updateNSView(_ nsView: WKWebView, context: Context) {}
}

#endif


struct ClassSideView: View {
    @State private var webView = WKWebView()
    let startURL = URL(string: "https://ita12docoszimt.serveblog.net/")!
    @State private var searchText = ""
    var body: some View {
        VStack{
            WebView(webView: $webView, request: URLRequest(url: startURL), searchText: $searchText);
            HStack {
                Spacer()
                Button(action: goBack) {
                    Image(systemName: "arrowshape.turn.up.left.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40)
                }
                .keyboardShortcut("ö", modifiers: .command)
                
                Button(action: goForward) {
                    Image(systemName: "arrowshape.turn.up.right.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40)
                }
                .keyboardShortcut("ä", modifiers: .command)
                
                Button(action: goHome) {
                    Image(systemName: "house.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40)
                }
                .keyboardShortcut("ü", modifiers: .command)
                
                Button(action: reload) {
                    Image(systemName: "arrow.clockwise.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40)
                }
                .keyboardShortcut("r", modifiers: .command)
                
            }
            .aspectRatio(contentMode: .fit)
            .frame(height: 40, alignment: .init(horizontal: .trailing, vertical: .center))
        }
    }
        
        
        func goBack() {
            webView.goBack()
        }
        
        func goForward() {
            webView.goForward()
        }
        
        func goHome() {
            webView.load(URLRequest(url: startURL))
        }
        
        func reload() {
            webView.reload()
        }
}
    struct MoodleView: View {
        @State private var webView = WKWebView()
        let startURL = URL(string: "https://moodle.oszimt.de/")!
        @State private var searchText = ""
        var body: some View {
            VStack{
                WebView(webView: $webView, request: URLRequest(url: startURL), searchText: $searchText)
                HStack {
                    Spacer()
                    Button(action: goBack) {
                        Image(systemName: "arrowshape.turn.up.left.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("AccentColor"))
                            .frame(width: 40)
                    }
                    .keyboardShortcut("ö", modifiers: .command)
                    
                    Button(action: goForward) {
                        Image(systemName: "arrowshape.turn.up.right.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("AccentColor"))
                            .frame(width: 40)
                    }
                    .keyboardShortcut("ä", modifiers: .command)
                    
                    Button(action: goHome) {
                        Image(systemName: "house.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("AccentColor"))
                            .frame(width: 40)
                    }
                    .keyboardShortcut("ü", modifiers: .command)
                    
                    Button(action: reload) {
                        Image(systemName: "arrow.clockwise.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("AccentColor"))
                            .frame(width: 40)
                    }
                    .keyboardShortcut("r", modifiers: .command)
                    
                }
                .aspectRatio(contentMode: .fit)
                .frame(height: 40, alignment: .init(horizontal: .trailing, vertical: .center))
            }
        }
            func goBack() {
                webView.goBack()
            }
            
            func goForward() {
                webView.goForward()
            }
            
            func goHome() {
                webView.load(URLRequest(url: startURL))
            }
            
            func reload() {
                webView.reload()
            }
        }
    
        struct TimeTableView: View {
            @State private var webView = WKWebView()
            let startURL = URL(string: "https://mese.webuntis.com/WebUntis/monitor?school=OSZ%20IMT&simple=2&type=1&monitorType=tt&name=ITA%2012")!
            @State private var searchText = ""
            var body: some View {
                VStack{
                    WebView(webView: $webView, request: URLRequest(url: startURL), searchText: $searchText)
                    HStack {
                        Spacer()
                        Button(action: goBack) {
                            Image(systemName: "arrowshape.turn.up.left.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color("AccentColor"))
                                .frame(width: 40)
                        }
                        .keyboardShortcut("ö", modifiers: .command)
                        
                        Button(action: goForward) {
                            Image(systemName: "arrowshape.turn.up.right.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color("AccentColor"))
                                .frame(width: 40)
                        }
                        .keyboardShortcut("ä", modifiers: .command)
                        
                        Button(action: goHome) {
                            Image(systemName: "house.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color("AccentColor"))
                                .frame(width: 40)
                        }
                        .keyboardShortcut("ü", modifiers: .command)
                        
                        Button(action: reload) {
                            Image(systemName: "arrow.clockwise.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color("AccentColor"))
                                .frame(width: 40)
                        }
                        .keyboardShortcut("r", modifiers: .command)
                        
                    }
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 40, alignment: .init(horizontal: .trailing, vertical: .center))
                }
            }
                func goBack() {
                    webView.goBack()
                }
                
                func goForward() {
                    webView.goForward()
                }
                
                func goHome() {
                    webView.load(URLRequest(url: startURL))
                }
                
                func reload() {
                    webView.reload()
                }
            }
        
    struct OSZimtView: View {
        @State private var webView = WKWebView()
        let startURL = URL(string: "https://oszimt.de")!
        @State private var searchText = ""
        var body: some View {
            VStack{
                WebView(webView: $webView, request: URLRequest(url: startURL), searchText: $searchText)
                HStack {
                    Spacer()
                    Button(action: goBack) {
                        Image(systemName: "arrowshape.turn.up.left.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("AccentColor"))
                            .frame(width: 40)
                    }
                    .keyboardShortcut("ö", modifiers: .command)
                    
                    Button(action: goForward) {
                        Image(systemName: "arrowshape.turn.up.right.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("AccentColor"))
                            .frame(width: 40)
                    }
                    .keyboardShortcut("ä", modifiers: .command)
                    
                    Button(action: goHome) {
                        Image(systemName: "house.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("AccentColor"))
                            .frame(width: 40)
                    }
                    .keyboardShortcut("ü", modifiers: .command)
                    
                    Button(action: reload) {
                        Image(systemName: "arrow.clockwise.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("AccentColor"))
                            .frame(width: 40)
                    }
                    .keyboardShortcut("r", modifiers: .command)
                    
                }
                .aspectRatio(contentMode: .fit)
                .frame(height: 40, alignment: .init(horizontal: .trailing, vertical: .center))
            }
            
        }
            func goBack() {
                webView.goBack()
            }
            
            func goForward() {
                webView.goForward()
            }
            
            func goHome() {
                webView.load(URLRequest(url: startURL))
            }
            
            func reload() {
                webView.reload()
            }
        }




struct ChatGPTView: View {
    @State private var webView = WKWebView()
    let startURL = URL(string: "https://chat.openai.com/")!
    @State private var searchText = ""
    var body: some View {
        VStack{
            WebView(webView: $webView, request: URLRequest(url: startURL), searchText: $searchText)
            HStack {
                Spacer()
                Button(action: goBack) {
                    Image(systemName: "arrowshape.turn.up.left.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40)
                }
                .keyboardShortcut("ö", modifiers: .command)
                
                Button(action: goForward) {
                    Image(systemName: "arrowshape.turn.up.right.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40)
                }
                .keyboardShortcut("ä", modifiers: .command)
                
                Button(action: goHome) {
                    Image(systemName: "house.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40)
                }
                .keyboardShortcut("ü", modifiers: .command)
                
                Button(action: reload) {
                    Image(systemName: "arrow.clockwise.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40)
                }
                .keyboardShortcut("r", modifiers: .command)
                
            }
            .aspectRatio(contentMode: .fit)
            .frame(height: 40, alignment: .init(horizontal: .trailing, vertical: .center))
        }
    }
        func goBack() {
            webView.goBack()
        }
        
        func goForward() {
            webView.goForward()
        }
        
        func goHome() {
            webView.load(URLRequest(url: startURL))
        }
        
        func reload() {
            webView.reload()
        }
    }


struct WWWView: View {
    @State private var webView = WKWebView()
    let startURL = URL(string: "https://ita12docoszimt.serveblog.net/")!
    @State private var searchText = ""
    var body: some View {
        VStack{
            WebView(webView: $webView, request: URLRequest(url: startURL), searchText: $searchText)
            HStack {
                TextField("Suche", text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .keyboardType(.URL)
                Button(action: search) {
                    Image(systemName: "magnifyingglass.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40.0)
                }
                .keyboardShortcut(.defaultAction)
                Button(action: goBack) {
                    Image(systemName: "arrowshape.turn.up.left.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40.0)
                }
                .keyboardShortcut("ö", modifiers: .command)
                
                Button(action: goForward) {
                    Image(systemName: "arrowshape.turn.up.right.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40.0)
                }
                .keyboardShortcut("ä", modifiers: .command)
                
                Button(action: goHome) {
                    Image(systemName: "house.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40.0)
                }
                .keyboardShortcut("ü", modifiers: .command)
                
                Button(action: reload) {
                    Image(systemName: "arrow.clockwise.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40.0)
                }
                .keyboardShortcut("r", modifiers: .command)
                
            }
            .aspectRatio(contentMode: .fit)
            .frame(height: 40, alignment: .init(horizontal: .trailing, vertical: .center))
        }
    }
        
        
        func goBack() {
            webView.goBack()
        }
        
        func goForward() {
            webView.goForward()
        }
        
        func goHome() {
            webView.load(URLRequest(url: startURL))
        }
        
        func reload() {
            webView.reload()
        }
    func search() {
        // Check if the search text starts with "!yt:"
        if searchText.hasPrefix("!yt:") {
            // Extract the video ID
            let videoID = searchText.replacingOccurrences(of: "!yt:", with: "")
            // Create the YouTube URL
            let youtubeURL = URL(string: "https://www.youtube.com/watch?v=\(videoID)")
            // Load the YouTube URL in the web view
            webView.load(URLRequest(url: youtubeURL!))
        } else {
            // Check if the search bar is empty (including whitespace)
            if searchText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                // The search bar is empty
                // Perform an action here if the search bar is empty
                // For example:
                print("The search bar is empty")
            } else {
                // The search bar is not empty
                // Perform your normal search function here
                if let urlWithProtocol = addProtocolToURL(searchText) {
                    // If the search text matches a URL, add the protocol and load the URL
                    webView.load(URLRequest(url: urlWithProtocol))
                } else {
                    // Otherwise, perform a Bing search
                    let encodedSearchText = searchText.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
                    if let url = URL(string: "https://www.bing.com/search?q=\(encodedSearchText)") {
                        webView.load(URLRequest(url: url))
                    }
                }
            }
        }
    }

    func addProtocolToURL(_ urlString: String) -> URL? {
        if let url = URL(string: urlString), UIApplication.shared.canOpenURL(url) {
            return url
        } else if urlString.range(of: "^[a-zA-Z0-9]+\\.[a-zA-Z0-9]+\\..+$", options: .regularExpression) != nil {
            let urlWithProtocol = "http://" + urlString
            return URL(string: urlWithProtocol)
        } else if urlString.range(of: "^[a-zA-Z0-9]+\\.[a-zA-Z0-9]+$", options: .regularExpression) != nil {
            let urlWithProtocol = "http://" + urlString
            return URL(string: urlWithProtocol)
        }
        return nil
    }

}

struct WebUntisView: View {
    @State private var webView = WKWebView()
    let startURL = URL(string: "https://mese.webuntis.com/WebUntis/?school=OSZ+IMT#/basic/login")!
    @State private var searchText = ""
    var body: some View {
        VStack{
            WebView(webView: $webView, request: URLRequest(url: startURL), searchText: $searchText)
            HStack {
                Spacer()
                Button(action: goBack) {
                    Image(systemName: "arrowshape.turn.up.left.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40.0)
                }
                .keyboardShortcut("ö", modifiers: .command)
                
                Button(action: goForward) {
                    Image(systemName: "arrowshape.turn.up.right.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40.0)
                }
                .keyboardShortcut("ä", modifiers: .command)
                
                Button(action: goHome) {
                    Image(systemName: "house.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40.0)
                }
                .keyboardShortcut("ü", modifiers: .command)
                
                Button(action: reload) {
                    Image(systemName: "arrow.clockwise.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 40.0)
                }
                .keyboardShortcut("r", modifiers: .command)
                
            }
            .aspectRatio(contentMode: .fit)
            .frame(height: 40, alignment: .init(horizontal: .trailing, vertical: .center))
        }
    }
        func goBack() {
            webView.goBack()
        }
        
        func goForward() {
            webView.goForward()
        }
        
        func goHome() {
            webView.load(URLRequest(url: startURL))
        }
        
        func reload() {
            webView.reload()
        }
    }


#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
#endif
