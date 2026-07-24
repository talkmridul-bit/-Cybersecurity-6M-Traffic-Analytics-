library(tidyverse)
data_raw<- read.csv(file.choose())
data_raw
view(data_raw)
final_cyber_data<- data_raw %>% distinct() %>%
  mutate(
    bytes_transferred = as.integer(bytes_transferred)
    
  ) %>% filter(bytes_transferred > 0) %>%
  group_by(protocol,action,log_type) %>%
  summarise(
    Total_Bytes_Transferred = sum(bytes_transferred),
    Total_Websites = n(),
    .groups = 'drop'
  ) %>% arrange(desc(Total_Bytes_Transferred))
final_cyber_data
write.csv(final_cyber_data,'cybersecurity_dataset_data.csv',
          row.names = FALSE)
getwd()
