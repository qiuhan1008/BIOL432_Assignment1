#1.A vector with a set of 100 species names, 
#randomly selected from a vector of 5 species names of your choosing.
organism <- rep(c("Vicugna pacos", "Anolis carolinensis", "Dasypus novemcinctus",
                  "Otolemur garnettii", "Pan troglodytes"), 20)
organism = paste0('"', organism, '"')

#2.A vector of 100 values for Limb_width, 
#randomly selected using a distribution of your choice that makes sense 
#for the width of limbs (e.g. no negative or zero values).
Limb_width <- rnorm(100, mean = 4.2, sd = 1)

#3.A vector of 100 values for Limb_length, 
#again randomly selected from a distribution of your choosing, 
#but the numbers must make sense.
Limb_length <- rnorm(100, mean = 35, sd = 10)

#4.A vector of 100 values for Observer, 
#randomly selected from a vector of 3 names (you can use any names you like).
Observer <- rep(c("Qiuhan Zhang", "Matthew Meow", "Lu Xixi"), 
                times = c(34,33,33))
Observer = paste0('"', Observer, '"')

#Combine all of the vectors into a data.frame or 
#tibble object and export to a CSV file called measurements.csv
data1 <- data.frame(organism, Limb_width, Limb_length, Observer)
data1
write.csv(data1, "measurements.csv", row.names=FALSE)



