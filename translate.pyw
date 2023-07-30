
import pyperclip
raw = pyperclip.paste()
t = raw.strip().replace('\n','')

import webbrowser

#mozilla_path="C:\\Program Files\\Mozilla Firefox\\firefox.exe"
#chrome_path = "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
brave_path = "C:\\Program Files\\BraveSoftware\\Brave-Browser\\Application\\brave.exe"
#webbrowser.register('chrome', None,webbrowser.BackgroundBrowser(chrome_path))
#webbrowser.register('firefox', None,webbrowser.BackgroundBrowser(mozilla_path))
webbrowser.register('brave', None,webbrowser.BackgroundBrowser(brave_path))

url = "https://translate.google.com/?sl=en&tl=fa&text={text}"
webbrowser.get('brave').open_new_tab(url.format(text=t))

import time
time.sleep(2)