library("tidyverse")
library("dplyr")
sleep
promedio <- mean(sleep$extra)
sleep %>%
  ggplot()+
  aes(x=ID, y=extra, label=group, color=extra)+
  geom_point(size=2)+
  geom_text(nudge_x=0.2)+
  xlab("Número de identificación de los estudiantes")+
  ylab("Horas de sueño")+
  ggtitle("Tiempo de sueño extra por estudiante al fin del curso escolar")+
  scale_color_continuous(name="Horas")+
  geom_hline(yintercept=promedio)+
  theme_bw()
