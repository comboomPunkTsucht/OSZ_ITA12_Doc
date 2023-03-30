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
            ClassSideView().keyboardShortcut("1", modifiers: .command)
                .tabItem{
                    Text("Klassen Wbseite")
                    Image(systemName: "doc.richtext")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 20.0)
                }
            MoodleView().keyboardShortcut("2", modifiers: .command)
                .tabItem {
                    Text("Moodle")
                    Image(systemName: "studentdesk")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 20.0)
                }
            TimeTableView().keyboardShortcut("3", modifiers: .command)
                .tabItem {
                    Text("Stundenplan")
                    Image(systemName: "info.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 20.0)
                }
            OSZimtView().keyboardShortcut("4", modifiers: .command)
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
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
    
}

struct ClassSideView: View {
    @State private var webAddress = "https://ita12docoszimt.serveblog.net/"
    var body: some View {
        VStack{
            
            WebView(request: URLRequest(url: URL(string: webAddress)!))
            /*HStack{
                
                Spacer()
                Button(action: {
                    webViewStateModel.pageTitle = webAddress
                    webViewStateModel.goToPage = true
                }, label: {
                    Image(systemName: "house.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 20.0)
                })
                .font(.title)
                Button(action: {
                    webViewStateModel.goBack = true
                }, label: {
                    Image(systemName: "arrow.backward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 20.0)
                })
                Button(action: {
                    webViewStateModel.goForward = true
                }, label: {
                    Image(systemName: "arrow.forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 20.0)
                })
                
            }
            .aspectRatio(contentMode: .fit) */
        }
        
    }
}
    struct MoodleView: View {
        @State private var webAddress = "https://moodle.oszimt.de/"
        var body: some View {
            VStack{
                WebView(request: URLRequest(url: URL(string: webAddress)!)) /*
                HStack{
                    Spacer()
                    Button(action: {
                        webViewStateModel.pageTitle = webAddress
                        webViewStateModel.goToPage = true
                    }, label: {
                        Image(systemName: "house.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("AccentColor"))
                            .frame(width: 20.0)
                    })
                    .font(.title)
                    Button(action: {
                        webViewStateModel.goBack = true
                    }, label: {
                        Image(systemName: "arrow.backward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("AccentColor"))
                            .frame(width: 20.0)
                    })
                    Button(action: {
                        webViewStateModel.goForward = true
                    }, label: {
                        Image(systemName: "arrow.forward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("AccentColor"))
                            .frame(width: 20.0)
                    })
                }
                .aspectRatio(contentMode: .fit) */
            }
        }
    }
    

        

struct TimeTableView: View {
    @State private var webAddress = "https://mese.webuntis.com/WebUntis/monitor?school=OSZ%20IMT&simple=2&type=1&monitorType=tt&name=ITA%2012"
    var body: some View {
        VStack{
            WebView(request: URLRequest(url: URL(string: webAddress)!))
     /*       HStack{
                Spacer()
                Button(action: {
                    webViewStateModel.pageTitle = webAddress
                    webViewStateModel.goToPage = true
                }, label: {
                    Image(systemName: "house.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 20.0)
                })
                .font(.title)
                Button(action: {
                    webViewStateModel.goBack = true
                }, label: {
                    Image(systemName: "arrow.backward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 20.0)
                })
                Button(action: {
                    webViewStateModel.goForward = true
                }, label: {
                    Image(systemName: "arrow.forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 20.0)
                })
            }
            .aspectRatio(contentMode: .fit) */
        }
    }
}
struct OSZimtView: View {
    @State private var webAddress = "https://oszimt.de"
    var body: some View {
        VStack{
            WebView(request: URLRequest(url: URL(string: webAddress)!))
          /*  HStack{
                Spacer()
                Button(action: {
                    webViewStateModel.pageTitle = webAddress
                    webViewStateModel.goToPage = true
                }, label: {
                    Image(systemName: "house.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 20.0)
                })
                .font(.title)
                Button(action: {
                    webViewStateModel.goBack = true
                }, label: {
                    Image(systemName: "arrow.backward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 20.0)
                })
                Button(action: {
                    webViewStateModel.goForward = true
                }, label: {
                    Image(systemName: "arrow.forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 20.0)
                })
            }
            .aspectRatio(contentMode: .fit) */
        }
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



