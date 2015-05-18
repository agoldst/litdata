# Generate some data for the main report
# See the `source-example` chunk in the main Rmd

# Here we fake up the necessary data

source_results <- data_frame(
    author=c("E.M. Hull", "Elinor Glyn", "Ethel Dell"),
    awesomeness=c(45.3, 31.9, 25.2)
)

# And here we massage it a little

source_results <- source_results %>% 
    # reformat names
    mutate(last=str_extract(author, "\\w+$"),
           first=str_extract(author, "^\\S+")) %>%
    mutate(author=str_c(last, ", ", first)) %>%
    select(-last, -first) %>%
    # alphabetize
    arrange(author)

