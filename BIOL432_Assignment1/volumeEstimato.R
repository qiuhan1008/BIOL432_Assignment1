#load dplyr 
library("dplyr") 

#check data
head(data1)
tail(data1)
class(data1)
str(data1)

#Create new variable volume by using the formula
#volume = pi * limb width^2 * limb length
data1 <- data1 %>%
  mutate(limb_volume = pi * ((data1$Limb_width/2)^2)
         * data1$Limb_length)

data1

# write as csv
write.csv(data1, "measurements.csv", row.names=FALSE)



