library(dplyr)
library(tidyr)
library(ggplot2)
library(ggpubr)

clr1=c('azure3','burlywood4')

Loc1=Loc[1:3]
Loc2=Loc[ ,c(1,4:8)]

Loc1=gather(Loc1, key = 'Gender',value = 'count',-Disease)
Loc2=gather(Loc2, key = 'Age_Group',value = 'count',-Disease)
Loc1=Loc1%>%
  mutate(percent=(count/sum(count))*100)
Loc2=Loc2%>%
  mutate(percent=(count/sum(count))*100)
Loc2$Age_Group=factor(Loc2$Age_Group,levels = c("(0-5)","(6-15)","(16-30)","(31-40)","41+"))
levels(Loc2$Age_Group)[levels(Loc2$Age_Group)=="(0-5)"]="0-5"
levels(Loc2$Age_Group)[levels(Loc2$Age_Group)=="(6-15)"]="6-15"
levels(Loc2$Age_Group)[levels(Loc2$Age_Group)=="(16-30)"]="16-30"
levels(Loc2$Age_Group)[levels(Loc2$Age_Group)=="(31-40)"]="31-40"
levels(Loc2$Age_Group)


p1=ggplot(Loc1, aes(fill=Gender, y=percent, x=Disease))+
  labs(y=" ",x=' ')+
  geom_bar(position="stack", stat="identity", show.legend = T)+
  scale_fill_manual(values = clr1)+
  theme_classic()+
  theme(axis.text.x.bottom = element_text(angle = 90, hjust = 0.5,vjust = 0.5),
        axis.title.x = element_blank())

p2=ggplot(Loc2, aes(fill=Age_Group, y=percent, x=Disease))+
  labs(fill="Age group",y=" ")+
  geom_bar(position="stack", stat="identity", show.legend = T)+
  scale_fill_manual(values = clr) +
  theme_classic()+
  scale_y_reverse()+scale_x_discrete(position = 'top')+
  theme(axis.title.x = element_blank(),axis.text.x = element_blank())

#Loc2$Age_Group=factor(Loc2$Age_Group,levels = c("(0-5)","(6-15)","(16-30)","(31-40)","41+"))
#levels(Loc2$Age_Group)
figure=ggarrange(p1,p2,nrow=2,ncol=1,
                 font.label = list(size = 1,color = "black", face ="bold", family = "Times New Roman"))



local=annotate_figure(figure,
                bottom = text_grob('(b)')
                )

library(grid)
grid.newpage()
grid.draw(cbind(ggplotGrob(refugee), ggplotGrob(local), size = "last"))


pdl_n=gather(pdl_n, key = 'Seasons',value = 'count',-Disease)
pdl_n=pdl_n%>%mutate(count=coalesce(count,0))
pdl_n=pdl_n%>%
  mutate(percent=(count/sum(count))*100)
