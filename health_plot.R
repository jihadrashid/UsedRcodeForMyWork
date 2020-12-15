library(ggplot2)

clr=c('cadetblue','cornsilk4','lightgoldenrod','lightsteelblue1','orchid4')

colnames(pdr_n)=c('Disease','Seasons','c',"Percent")
pdl_n=pdl[c(1:30), ]
pdl_n=gather(pdl_n, key = 'Seasons',value = 'count',-Disease)
pdl_n=pdl_n%>%mutate(count=coalesce(count,0))
pdl_n=pdl_n%>%
  mutate(percent=(count/sum(count))*100)
sum(pdl_n$percent)
p=ggplot(pdr_n, aes(fill=Seasons, y=Percent, x=Disease))+
  labs(y="Percentage of occurrences(%)",x='(a)')+
  geom_bar(position="stack", stat="identity", show.legend = F)+
  scale_fill_manual(values = clr)+
  theme_classic()+
  theme(axis.text.x.bottom = element_text(angle = 90, hjust = 1))
q=ggplot(pdl_n, aes(fill=Seasons, y=count, x=Disease))+
  labs(y=" ", x='(b)')+
  geom_bar(position="stack", stat="identity", show.legend = T)+
  scale_fill_manual(values = clr)+
  theme_classic()+
  theme(axis.text.x.bottom = element_text(angle = 90, hjust = 1))
figure=ggarrange(p,q,nrow=1,ncol=2,
                 font.label = list(size = 1,color = "black", face ="bold", family = "Times New Roman"), legend = "top", common.legend=TRUE)
annotate_figure(figure,
                bottom = text_grob("Diseases", color = "black",
                                   hjust = 1, x = 0.55, size = 11))

