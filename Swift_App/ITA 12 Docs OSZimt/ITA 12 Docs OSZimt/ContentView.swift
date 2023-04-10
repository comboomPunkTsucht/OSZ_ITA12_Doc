//
//  ContentView.swift
//  ITA 12 Docs OSZimt
//
//  Created by mcpeaps_HD on 29/03/2023.
//
// how to add navigationbuttons to the code above and can you add it to the code below?
// BLACKBOX AUTOCOMPLETION


import WebKit
import SwiftUI

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
                        .frame(width: 20.0)
                }
            OSZimtView()
                .tabItem {
                    Text("OSZ IMT Website")
                    Image(systemName: "graduationcap.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 20.0)
                }
        }

            
    }
    
}
struct WebView: UIViewRepresentable {
    @Binding var webView: WKWebView
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        webView.load(request)
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

struct ClassSideView: View {
    @State private var webView = WKWebView()
    let startURL = URL(string: "https://ita12docoszimt.serveblog.net/")!
    var body: some View {
        VStack{
            WebView(webView: $webView, request: URLRequest(url: startURL))
            HStack {
                            Spacer()
                            Button(action: goBack) {
                                Image(systemName: "arrowshape.turn.up.left.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("AccentColor"))
                                    .frame(width: 20.0)
                            }
                            .keyboardShortcut("ö", modifiers: .command)
                            
                            Button(action: goForward) {
                                Image(systemName: "arrowshape.turn.up.right.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("AccentColor"))
                                    .frame(width: 20.0)
                            }
                            .keyboardShortcut("ä", modifiers: .command)
                            
                            Button(action: goHome) {
                                Image(systemName: "house.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("AccentColor"))
                                    .frame(width: 20.0)
                            }
                            .keyboardShortcut("t", modifiers: .command)
                            
                            Button(action: reload) {
                                Image(systemName: "arrow.clockwise.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("AccentColor"))
                                    .frame(width: 20.0)
                            }
                            .keyboardShortcut("r", modifiers: .command)

                        }
                        .aspectRatio(contentMode: .fit)
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
        var body: some View {
            VStack{
                WebView(webView: $webView, request: URLRequest(url: startURL))
                HStack {
                                Spacer()
                                Button(action: goBack) {
                                    Image(systemName: "arrowshape.turn.up.left.circle")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(Color("AccentColor"))
                                        .frame(width: 20.0)
                                }
                                .keyboardShortcut("ö", modifiers: .command)
                                
                                Button(action: goForward) {
                                    Image(systemName: "arrowshape.turn.up.right.circle")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(Color("AccentColor"))
                                        .frame(width: 20.0)
                                }
                                .keyboardShortcut("ä", modifiers: .command)
                                
                                Button(action: goHome) {
                                    Image(systemName: "house.circle")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(Color("AccentColor"))
                                        .frame(width: 20.0)
                                }
                                .keyboardShortcut("t", modifiers: .command)
                                
                                Button(action: reload) {
                                    Image(systemName: "arrow.clockwise.circle")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(Color("AccentColor"))
                                        .frame(width: 20.0)
                                }
                                .keyboardShortcut("r", modifiers: .command)

                            }
                            .aspectRatio(contentMode: .fit)
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
    var body: some View {
        VStack{
            WebView(webView: $webView, request: URLRequest(url: startURL))
            HStack {
                            Spacer()
                            Button(action: goBack) {
                                Image(systemName: "arrowshape.turn.up.left.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("AccentColor"))
                                    .frame(width: 20.0)
                            }
                            .keyboardShortcut("ö", modifiers: .command)
                            
                            Button(action: goForward) {
                                Image(systemName: "arrowshape.turn.up.right.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("AccentColor"))
                                    .frame(width: 20.0)
                            }
                            .keyboardShortcut("ä", modifiers: .command)
                            
                            Button(action: goHome) {
                                Image(systemName: "house.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("AccentColor"))
                                    .frame(width: 20.0)
                            }
                            .keyboardShortcut("t", modifiers: .command)
                            
                            Button(action: reload) {
                                Image(systemName: "arrow.clockwise.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("AccentColor"))
                                    .frame(width: 20.0)
                            }
                            .keyboardShortcut("r", modifiers: .command)

                        }
                        .aspectRatio(contentMode: .fit)
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
    var body: some View {
        VStack{
            WebView(webView: $webView, request: URLRequest(url: startURL))
            HStack {
                            Spacer()
                            Button(action: goBack) {
                                Image(systemName: "arrowshape.turn.up.left.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("AccentColor"))
                                    .frame(width: 20.0)
                            }
                            .keyboardShortcut("ö", modifiers: .command)
                            
                            Button(action: goForward) {
                                Image(systemName: "arrowshape.turn.up.right.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("AccentColor"))
                                    .frame(width: 20.0)
                            }
                            .keyboardShortcut("ä", modifiers: .command)
                            
                            Button(action: goHome) {
                                Image(systemName: "house.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("AccentColor"))
                                    .frame(width: 20.0)
                            }
                            .keyboardShortcut("t", modifiers: .command)
                            
                            Button(action: reload) {
                                Image(systemName: "arrow.clockwise.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color("AccentColor"))
                                    .frame(width: 20.0)
                            }
                            .keyboardShortcut("r", modifiers: .command)

                        }
                        .aspectRatio(contentMode: .fit)
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
            .previewDevice("iPad Pro (12.9-inch) (6th generation) (16GB)")
    }
}
#endif



