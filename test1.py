# vim test.py
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager
import time

options = Options()
options.add_argument('--headless')
options.add_argument('--no-sandbox')
options.add_argument('--disable-dev-shm-usage')
options.add_argument("user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36")
options.add_argument("--accept-encoding=gzip, deflate, br, zstd")
options.add_argument("--disable-extensions")
options.add_argument("--disable-renderer-backgrounding")
options.add_argument("--disable-background-timer-throttling")
options.add_argument("--disable-backgrounding-occluded-windows")
options.add_argument("--disable-client-side-phishing-detection")
options.add_argument("--disable-popup-blocking")
options.add_argument("--force-dark-mode")
options.add_argument("--disable-composited-antialiasing")
options.add_argument("--disable-low-res-tiling")
options.add_argument("--log-level=3")
options.add_argument("--in-process-gpu")
options.add_argument("--incognito")
options.add_argument("--request-desktop-sites")
options.add_argument("--v8-cache-options=code")
options.add_argument("--enable-features=NetworkServiceInProcess")
options.add_argument("--start-maximized")
options.add_argument("window-size=1048x2022")
options.add_argument("--disable-arc-cpu-restriction")
options.add_argument("--disable-cookie-encryption")
options.add_argument("--force-device-scale-factor=1")
driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()), options=options)

driver.get("https://ifconfig.co/")
time.sleep(3)
driver.save_screenshot("screenShot.png")
print(driver.title)
driver.close()
