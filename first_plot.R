filtered_dataset_1 %>%
  mutate(party_sum = if_else(NEW_PARTY_FINAL == 1,
                             repub_total[[1]],
                             dem_total[[1]])) %>%
  mutate(party_usage_percentage = usage_sum / party_sum) %>%
  ggplot(mapping = aes(x = news_outlet,
                       y = party_usage_percentage,
                       fill = NEW_PARTY_FINAL)) +
  geom_col(position = "dodge") +
  theme(axis.text.x = element_text(angle = -90, hjust = 0))