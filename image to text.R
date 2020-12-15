
library(tesseract)
eng <- tesseract("eng")
text <- tesseract::ocr("D:/Jerrico/model.png", engine = eng)
first=(cat(text))
print(first, target = "D:/Jerrico/first_example.docx")
