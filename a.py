from RPA.Desktop import Desktop
desktop = Desktop()

def write_entry_in_accounting(entry):
    desktop.open_application("erp_client.exe")
    desktop.click(f"image:{ROBOT_ROOT}/images/create.png")
    desktop.type_text(entry)
    desktop.press_keys("ctrl", "s")
    desktop.press_keys("enter")
    
def write_to_field(text):
    desktop.move_mouse("image:input_label.png")
    desktop.move_mouse("offset:200,0")
    desktop.click()
    desktop.type_text(text)
    desktop.press_keys("enter")

def click_new():
    desktop.click('ocr:"New"')