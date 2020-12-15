#required libraries
library(ggplot2)
library(gridExtra)
library(ggpubr)
#changing default font
windowsFonts(Times=windowsFont("Times New Roman"))




#plotting a table with of two column as Year and P
ggplot(diff9)+
  geom_line(aes(x=Time, y=UHI, col='steelblue'), show.legend = F)+
  labs(title = 'Name',x='',y='')+
  geom_line(aes(x=Year, y=r, col='darkred'), show.legend = F)+
  theme(text=element_text(family='Times', face='plain', size=12))+
  theme_classic()
#export graph as pdf to increase resolution

#for increasing resolution
library(pdftools)

fig <- pdf_render_page("D:/SIR/Refugee/Graph/Rplot01.pdf", page = 1, dpi = 300)
jpeg::writeJPEG(fig, "D:/SIR/Refugee/Graph/Rain_Seq.jpeg")
