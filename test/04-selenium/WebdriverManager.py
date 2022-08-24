from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager

class WebdriverManager(object):

    def __init__(self):
        None

    def get_driver_path(self, browser_name):
        if browser_name.lower() == 'chrome':
            driver_path = ChromeDriverManager().install()
        elif browser_name.lower() == 'firefox':
            driver_path = GeckoDriverManager().install()
        print(driver_path)
        return  driver_path
