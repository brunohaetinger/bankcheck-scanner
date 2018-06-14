import pytesseract as ocr

from PIL import Image
import sys


phrase = ocr.image_to_string(Image.open(sys.argv[1]), lang='eng')
print(phrase)