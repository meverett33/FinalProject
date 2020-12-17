library(shiny)
library(shinydashboard)

dashboardPage(
  dashboardHeader(title = "2018 Exit Polls"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Election", tabName = "election"),
      menuItem("Leadership", tabName = "leadership"),
      menuItem("Supreme Court", tabName = "scotus"),
      menuItem("Foreign Policy", tabName = "fpol"),
      menuItem("Immigration", tabName = "imm"),
      menuItem("Economy", tabName = "econ"),
      menuItem("Social Justice", tabName = "justice"),
      menuItem("Healthcare", tabName = "health"),
      menuItem("Impeachment", tabName = "imp"),
      menuItem("Partisanship", tabName = "part"),
      menuItem("Religious Views", tabName = "relig"),
      menuItem("Gun Control", tabName = "guns")
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(tabName = "election",
              h2("Election"),
              fluidRow(
                box(width=12,
                    status="info",
                    title="In the 2016 election for president, who did you vote for?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("prez")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title="Who would you prefer control the House of Representatives?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("control")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Which concerns you more about this election?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("fraud")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "When did you finally decide for whom to vote in the United States House election?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("house")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Was one reason for your vote for United States House today to express support for Donald Trump, to express opposition to Donald Trump, or Donald Trump was not a factor?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("support")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Is this the first time you have ever voted in a midterm election?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("newvoter")
                )
              )
      ),
      tabItem(tabName = "leadership",
              h2("Leadership"),
              fluidRow(
                box(width=12, 
                    status="info", 
                    title="Do you think things in this country today are generally going in the right direction, or seriously off on the wrong track?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("direction")
                )
              ),
              fluidRow(
                box(width=12, 
                    status="info", 
                    title="How do you feel about the way Donald Trump is handling his job as president?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("trump")
                )
              ),
              fluidRow(
                box(width=12, 
                    status="info", 
                    title="Is your opinion of Nancy Pelosi favorable, or unfavorable?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("pelosi")
                )
              )
      ),
      tabItem(tabName = "scotus",
              h2("Supreme Court"),
              fluidRow(
                box(width=12, 
                    status="info", 
                    title="How do you feel about Brett Kavanaugh's confirmation to the Supreme Court?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("kav")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "What should the Supreme Court do about Roe vs. Wade, the 1973 decision that made abortion legal?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("roe")
                )
              )
      ),
      tabItem(tabName = "fpol",
              h2("Foreign Policy"),
              fluidRow(
                box(width=12,
                    status="info",
                    title="Is Donald Trump's approach to foreign policy making the United States more safe, less safe, or no difference?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("safety")
                )
              )
      ),
      tabItem(tabName = "imm",
              h2("Immigration"),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Are Donald Trump's immigration policies too tough, not tough enough, or about right?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("immigration")
                )
              )
      ),
      tabItem(tabName = "econ",
              h2("Economy"),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Compared to two years ago, is your family's financial situation better, worse, or about the same?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("family")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "How have Donald Trump's trade policies affected the economy in your area?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("trade")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "How have the tax laws passed last year (2017) affected your personal finances?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("tax")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Do you think the condition of the nation's economy is excellent, good, not so good, or poor?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("condition")
                )
              )
      ),
      tabItem(tabName = "justice",
              h2("Social Justice"),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "In general, how do you think things work in the United States today with respect to race?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("race")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "How important is it that more racial and ethnic minorities be elected to public office?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("div")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "How important is it that more women be elected to public office?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("women")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "How serious a problem is sexual harassment in this country today?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("harassment")
                )
              )
      ),
      tabItem(tabName = "health",
              h2("Healthcare"),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Does the health care system in the United States need major changes, minor changes, or no changes at all?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("hcsys")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Which party would better protect health care for people with pre-existing conditions?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("pec")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Which one of these four issues is the most important facing the country?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("topissue")
                )
              )
      ),
      tabItem(tabName = "imp",
              h2("Impeachment and Foreign Election Interference"),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Should Congress impeach Donald Trump and remove him from office?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("impeachment")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Do you think the investigation into Russian interference in the 2016 election is mostly justified, or politically motivated?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("russia")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Do you think the government has done enough to protect this (2018) election from foreign interference?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("interference")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "How do you feel about Robert Mueller's handling of the investigation into Russian interference in the 2016 election?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("mueller")
                )
              )
      ),
      tabItem(tabName = "part",
              h2("Partisanship"),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Politically, do you think Americans are becoming more united, becoming more divided, or staying about the same?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("unity")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Is your opinion of the Democratic Party favorable, or unfavorable?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("dem")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Is your opinion of the Republican Party favorable, or unfavorable?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("gop")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "On most political matters, do you consider yourself liberal, moderate, or conservative?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("lean")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "No matter how you vote, which party do you usually identify with?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("party")
                )
              )
      ),
      tabItem(tabName = "relig",
              h2("Religious Views"),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Would you describe yourself as a born-again or evangelical Christian?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("evangelical")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "How often do you attend religious services?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("services")
                )
              )
      ),
      tabItem(tabName = "guns",
              h2("Gun Control"),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Does anyone in your household own a gun?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("gunhouse")
                )
              ),
              fluidRow(
                box(width=12,
                    status="info",
                    title = "Do you support or oppose stricter gun control measures?",
                    solidHeader = TRUE,
                    collapsible = TRUE,
                    collapsed = TRUE,
                    plotOutput("guncontrol")
                )
              )
      )
    )
  )
)
