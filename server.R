library(shiny)
library(tidyverse)
library(ggplot2)
library(readr)
library(dplyr)

exitPolls <- read_csv("RoperID_31116394-topline.csv")

shinyServer(function(input, output, session) {
  
  output$kav <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "How do you feel about Brett Kavanaugh's confirmation to the Supreme Court?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.5), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Support", "Oppose", "Don't know/Refused"),
                       labels = c("Support", "Oppose", "No answer"))
  })
  
  output$safety <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Is Donald Trump's approach to foreign policy making the United States more safe, less safe, or no difference?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.5), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("More safe", "Less safe", "No difference", "Don't know/Refused"),
                       labels = c("More safe", "Less safe", "No difference", "No answer"))
  })
  
  output$roe <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "What should the Supreme Court do about Roe vs. Wade, the 1973 decision that made abortion legal?...Keep it as is, overturn it"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-2), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Keep it as is", "Overturn it", "Don't know/Refused"),
                       labels = c("Keep it as is", "Overturn it", "No answer"))
  })
  
  output$prez <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "In the 2016 election for president, did you vote for Hillary Clinton, the Democrat, Donald Trump, the Republican, someone else, or you did not vote in the 2016 election for president?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Hillary Clinton, the Democrat", "Donald Trump, the Republican", "Someone else", "You did not vote in the 2016 election for president", "Don't know/Refused"),
                       labels = c("Clinton", "Trump", "Someone else", "Didn't vote", "No answer"))
  })
  
  output$fraud <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Which concerns you more about this (2018) election?...That people who should not be able to vote will cast ballots, that people who should be able to vote will be prevented from voting"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.5), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("That people who should not be able to vote will cast ballots", "That people who should be able to vote will be prevented from voting", "Don't know/Refused"),
                       labels = c("Fraudulent voting", "Voter Suppression", "No answer"))
  })
  
  output$control <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Would you rather see the United States House of Representatives controlled by the Democratic Party, or the Republican Party?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.5), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("The Democratic Party", "The Republican Party", "Don't know/Refused"),
                       labels = c("Democrats", "Republicans", "No answer"))
  })
  
  output$impeachment <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Should Congress impeach Donald Trump and remove him from office?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.5), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Yes", "No", "Don't know/Refused"),
                       labels = c("Yes", "No", "No answer"))
  })
  
  output$immigration <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Are Donald Trump's immigration policies too tough, not tough enough, or about right?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.5), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Too tough", "Not tough enough", "About right", "Don't know/Refused"),
                       labels = c("Too tough", "Not tough enough", "About right", "No answer"))
  })
  
  output$div <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "How important is it that more racial and ethnic minorities be elected to public office?...Very important, somewhat important, not too important, not at all important"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.5), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Very important", "Somewhat important", "Not too important", "Not at all important", "Don't know/Refused"),
                       labels = c("Very important", "Somewhat important", "Not too important", "Not at all important", "No answer"))
  })
  
  output$family <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Compared to two years ago, is your family's financial situation better, worse, or about the same?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.5), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Better", "Worse", "About the same"),
                       labels = c("Better", "Worse", "About the same"))
  })
  
  output$trade <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "How have Donald Trump's trade policies affected the economy in your area?...Helped, hurt, no impact"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.5), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Helped", "Hurt", "No impact", "Don't know/Refused"),
                       labels = c("Helped", "Hurt", "No impact", "No answer"))
  })
  
  output$tax <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "How have the tax laws passed last year (2017) affected your personal finances?...Helped, hurt, no impact"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.5), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Helped", "Hurt", "No impact", "Don't know/Refused"),
                       labels = c("Helped", "Hurt", "No impact", "No answer"))
  })
  
  output$race <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "In general, how do you think things work in the United States today?...Whites are favored over minorities, minorities are favored over whites, no group is favored"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.5), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Whites are favored over minorities", "Minorities are favored over whites", "No group is favored", "Don't know/Refused"),
                       labels = c("Whites are favored over minorities", "Minorities are favored over whites", "No group is favored", "No answer"))
  })
  
  output$women <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "How important is it that more women be elected to public office?...Very important, somewhat important, not too important, not at all important"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.5), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Very important", "Somewhat important", "Not too important", "Not at all important", "Don't know/Refused"),
                       labels = c("Very important", "Somewhat important", "Not too important", "Not at all important", "No answer"))
  })
  
  output$hcsys <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Does the health care system in the United States need major changes, minor changes, or no changes at all?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Major changes", "Minor changes", "No changes at all", "Don't know/Refused"),
                       labels = c("Major changes", "Minor changes", "No changes at all", "No answer"))
  })
  
  output$russia <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Do you think the investigation into Russian interference in the 2016 election is mostly justified, or politically motivated?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Justified", "Politically motivated", "Don't know/Refused"),
                       labels = c("Justified", "Politically motivated", "No answer"))
  })
  
  output$interference <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Do you think the government has done enough to protect this (2018) election from foreign interference?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Yes", "No", "Don't know/Refused"),
                       labels = c("Yes", "No", "No answer"))
  })
  
  output$house <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "When did you finally decide for whom to vote in the United States House election?...Before October, in October, October 31st or later"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Before October", "In October", "October 31st or later", "Don't know/Refused"),
                       labels = c("Before October", "In October", "October 31st or later", "No answer"))
  })
  
  output$unity <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Politically, do you think Americans are becoming more united, becoming more divided, or staying about the same?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Becoming more united", "Becoming more divided", "Staying about the same", "Don't know/Refused"),
                       labels = c("Becoming more united", "Becoming more divided", "Staying about the same", "No answer"))
  })
  
  output$dem <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Is your opinion of the Democratic Party favorable, or unfavorable?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Favorable", "Unfavorable", "Don't know/Refused"),
                       labels = c("Favorable", "Unfavorable", "No answer"))
  })
  
  output$gop <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Is your opinion of the Republican Party favorable, or unfavorable?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Favorable", "Unfavorable", "Don't know/Refused"),
                       labels = c("Favorable", "Unfavorable", "No answer"))
  })
  
  output$lean <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "On most political matters, do you consider yourself liberal, moderate, or conservative?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Liberal", "Moderate", "Conservative", "Don't know/Refused"),
                       labels = c("Liberal", "Moderate", "Conservative", "No answer"))
  })
  
  output$mueller <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "How do you feel about Robert Mueller's handling of the investigation into Russian interference in the 2016 election?...Approve, disapprove"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Approve", "Disapprove", "Don't know/Refused"),
                       labels = c("Approve", "Disapprove", "No answer"))
  })
  
  output$pec <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Which party would better protect health care for people with pre-existing conditions?...The Democratic Party, the Republican Party"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("The Democratic Party", "The Republican Party", "Don't know/Refused"),
                       labels = c("Democrats", "Republicans", "No answer"))
  })
  
  output$party <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "No matter how you vote, do you usually think of yourself as a Democrat, Republican, or Independent/something esle?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Democrat", "Republican", "Independent/Something else", "Don't know/Refused"),
                       labels = c("Democrat", "Republican", "Independent", "No answer"))
  })
  
  output$support <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Was one reason for your vote for United States House today to express support for Donald Trump, to express opposition to Donald Trump, or Donald Trump was not a factor?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("To express support for Donald Trump", "To express opposition to Donald Trump", "Donald Trump was not a factor", "Don't know/Refused"),
                       labels = c("To express support for Donald Trump", "To express opposition to Donald Trump", "Donald Trump was not a factor", "No answer"))
  })
  
  output$evangelical <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Would you describe yourself as a born-again or evangelical Christian?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-2), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Yes", "No"))
  })
  
  output$services <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "How often do you attend religious services?...Once a week or more, a few times a month, a few times a year"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Once a week or more", "A few times a month", "A few times a year", "Never"),
                       labels = c("Once a week or more", "A few times a month", "A few times a year", "Never"))
  })
  
  output$gunhouse <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Does anyone in your household own a gun?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Yes", "No"))
  })
  
  output$guncontrol <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Do you support or oppose stricter gun control measures?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Support", "Oppose", "Don't know/Refused"),
                       labels = c("Support", "Oppose", "No answer"))
  })
  
  output$harassment <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "How serious a problem is sexual harassment in this country today?...Very serious, somewhat serious, not too serious, not at all serious"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Very serious", "Somewhat serious", "Not too serious", "Not at all serious", "Don't know/Refused"),
                       labels = c("Very serious", "Somewhat serious", "Not too serious", "Not at all serious", "No answer"))
  })
  
  output$topissue <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Which one of these four issues is the most important facing the country?...Health care, immigration, the economy, gun policy"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Health care", "Immigration", "The economy", "Gun policy", "Don't know/Refused"),
                       labels = c("Healthcare", "Immigration", "The Economy", "Gun Policy", "No answer"))
  })
  
  output$newvoter <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Is this the first time you have ever voted in a midterm election?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-2), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Yes", "No"))
  })
  
  output$direction <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Do you think things in this country today are generally going in the right direction, or seriously off on the wrong track?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Generally going in the right direction", "Seriously off on the wrong track", "Don't know/Refused"),
                       labels = c("Generally going in the right direction", "Seriously off on the wrong track", "No answer"))
  })
  
  output$trump <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "How do you feel about the way Donald Trump is handling his job as president?...Strongly approve, somewhat approve, somewhat disapprove, strongly disapprove"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Strongly approve", "Somewhat approve", "Somewhat disapprove", "Strongly disapprove", "Don't know/Refused"),
                       labels = c("Strongly approve", "Somewhat approve", "Somewhat disapprove", "Strongly disapprove", "No answer"))
  })
  
  output$pelosi <- renderPlot({
    ggplot(data = exitPolls %>% filter(QuestionTxt == "Is your opinion of Nancy Pelosi favorable, or unfavorable?"), 
           aes(x = RespTxt, y = RespPct)) + 
      geom_bar(stat = "identity", fill = "lightblue", color = "black") +
      geom_text(aes(label = paste0(format(RespPct, digits = 2), "%"), y = RespPct-1.1), color = "black") +
      theme_minimal() +
      labs(x = NULL, y = "Percent") +
      scale_x_discrete(limits = c("Favorable", "Unfavorable", "Don't know/Refused"),
                       labels = c("Favorable", "Unfavorable", "No answer"))
  })
  
  
})
