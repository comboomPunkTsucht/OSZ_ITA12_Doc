import tkinter as tk
import webbrowser
import re
import youtube_dl
import vlc

startseite = "https://ita12docoszimt.serveblog.net/"

def play_youtube_video(video_id):
    ydl_opts = {
        'format': 'best',
    }

    with youtube_dl.YoutubeDL(ydl_opts) as ydl:
        info_dict = ydl.extract_info(f'https://www.youtube.com/watch?v={video_id}', download=False)
        video_url = info_dict.get("url", None)

        if video_url:
            player = vlc.MediaPlayer(video_url)
            player.play()

def youtube_search(query):
    url = "https://www.youtube.com/results?search_query=" + query
    webbrowser.open(url)

def bing_search(query):
    url = "https://www.bing.com/search?q=" + query
    webbrowser.open(url)

def search_button_clicked():
    search_query = search_entry.get()

    if search_query.startswith("!yt:"):
        youtube_query = search_query[4:].strip()
        youtube_search(youtube_query)
    else:
        bing_search(search_query)

def main():
    root = tk.Tk()
    root.title("Webbrowser")

    # GUI-Elemente erstellen
    search_label = tk.Label(root, text="Suche:")
    search_label.pack()

    search_entry = tk.Entry(root, width=30)
    search_entry.pack()

    search_button = tk.Button(root, text="Suchen", command=search_button_clicked)
    search_button.pack()

    root.mainloop()

if __name__ == "__main__":
    # Startseite öffnen (nicht angezeigt)
    webbrowser.open(startseite, new=0)

    main()
