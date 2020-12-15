library(ggplot2)
library(gridExtra)
library(ggpubr)

windowsFonts(Times=windowsFont("Times New Roman"))

p=ggplot(res_tbl)+
  geom_line(aes(x=Year, y=p, col='steelblue'), show.legend = F)+
  labs(title = 'Barishal',x='',y='')+
  geom_line(aes(x=Year, y=r, col='darkred'), show.legend = F)+
  theme(text=element_text(family='Times', face='plain', size=12))+
  theme_classic()

q=ggplot(res_tbl)+
  geom_line(aes(x=Year, y=p, col='steelblue'), show.legend = F)+
  labs(title = "Cox's Bazar",x='',y='')+
  geom_line(aes(x=Year, y=r, col='darkred'), show.legend = F)+
  theme(text=element_text(size=12,  family="Times", face='plain'))+
  theme_classic()

r=ggplot(res_tbl)+
  geom_line(aes(x=Year, y=p, col='steelblue'), show.legend = F)+
  labs(title = 'Chattagram',x='',y='')+
  geom_line(aes(x=Year, y=r, col='darkred'), show.legend = F)+
  theme(text=element_text(size=12,  family="Times", face='plain'))+
  theme_classic()

s=ggplot(res_tbl)+
  geom_line(aes(x=Year, y=p, col='steelblue'), show.legend = F)+
  labs(title = 'Hatiya',x='',y='')+
  geom_line(aes(x=Year, y=r, col='darkred'), show.legend = F)+
  theme(text=element_text(size=12,  family="Times", face='plain'))+
  theme_classic()

t=ggplot(res_tbl)+
  geom_line(aes(x=Year, y=p, col='steelblue'), show.legend = F)+
  labs(title = 'Khepupara',x='',y='')+
  geom_line(aes(x=Year, y=r, col='darkred'), show.legend = F)+
  theme(text=element_text(size=12,  family="Times", face='plain'))+
  theme_classic()

u=ggplot(res_tbl)+
  geom_line(aes(x=Year, y=p, col='steelblue'), show.legend = F)+
  labs(title = 'Mongla',x='',y='')+
  geom_line(aes(x=Year, y=r, col='darkred'), show.legend = F)+
  theme(text=element_text(size=12,  family="Times", face='plain'))+
  theme_classic()

v=ggplot(res_tbl)+
  geom_line(aes(x=Year, y=p, col='steelblue'), show.legend = F)+
  labs(title = 'Satkhira',x='Year',y='Z Value')+
  geom_line(aes(x=Year, y=r, col='darkred'), show.legend = F)+
  theme(text=element_text(size=12,  family="Times", face='plain'))+
  theme_classic()

w=ggplot(res_tbl)+
  geom_line(aes(x=Year, y=p, col='steelblue'), show.legend = F)+
  labs(title = 'Teknaf',x='',y='')+
  geom_line(aes(x=Year, y=r, col='darkred'), show.legend = F)+
  theme(text=element_text(size=12,  family="Times", face='plain'))+
  theme_classic()

ggarrange(p,q,r,s,t,u,v,w,nrow=4,ncol=2)

library(pdftools)
fig <- pdf_render_page("D:/SIR/Refugee/Graph/Rplot01.pdf", page = 1, dpi = 400)
jpeg::writeJPEG(fig, "D:/SIR/Refugee/Graph/Rain_Seq.jpeg")
