setwd("./data")

# CHAPTER4: BMI ----------------------------------------------------------

BMI1 <- (tibble::tibble(height = rnorm(mean = 68, sd = 3, n = 20),
               weight = rnorm(mean = 160, sd = 20, n = 20)))

BMI2 <- (tibble::tibble(height = rnorm(mean = 68, sd = 3, n = 20),
                        weight = rnorm(mean = 160, sd = 20, n = 20)))

BMI3 <- (tibble::tibble(height = rnorm(mean = 68, sd = 3, n = 20),
                        weight = rnorm(mean = 160, sd = 20, n = 20)))

SubID_Age <- tibble::tibble(subID = 1:20,
                            age = rnorm(n = 20, mean = 30, sd = 3),
                            sex = sample(c("M", "F"), size = 20, replace = T))

write.csv(BMI1, "BMI_1.csv", row.names = F)
write.csv(BMI2, "BMI_2.csv", row.names = F)
write.csv(BMI3, "BMI_3.csv", row.names = F)
write.table(BMI1, "BMI_1.txt", sep = "\t", row.names = F)
write.table(BMI1, "BMI_2.txt", sep = ";", row.names = F)
openxlsx::write.xlsx(as.data.frame(BMI1), "BMI_1.xlsx", row.names = F)
write.csv(SubID_Age, "SubID_Age_Sex.csv", row.names = F)

# CHAPTER5: LONG AND WIDE -------------------------------------------------

data_VO2 <- 
tibble::tibble(SubID = 1:20,
               Time1 = rnorm(n = 20, mean = 30, sd = 3),
               Time2 = rnorm(n = 20, mean = 35, sd = 3),
               Time3 = rnorm(n = 20, mean = 40, sd = 3), 
               Time4 = rnorm(n = 20, mean = 45, sd = 3))

write.csv(data_VO2, "data_VO2.csv", row.names = F)

data_VO2_long <- tidyr::pivot_longer(data = data_VO2, 
                         cols = c("Time1", "Time2", "Time3", "Time4"), 
                         names_to = "Time", 
                         values_to = "VO2_max")

write.csv(data_VO2_long, "data_VO2_long.csv", row.names = F)



