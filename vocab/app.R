library(shiny)
library(shinyMobile)
library(apexcharter)

# packages <- c("shiny", "shinyMobile", "apexcharter")
# installed_packages <- rownames(installed.packages())
# for (pkg in packages) {
#   library(pkg, character.only = TRUE)
# }

poll <- data.frame(
  answer = c("Yes", "No"),
  n = c(254, 238)
)

word_data <- readRDS("word_data.rds")

shinyApp(
  ui = f7Page(
    options = list(
      dark = "auto",
      filled = FALSE,
      theme = "auto",
      color = "teal",
      iosTranslucentBars = TRUE
    ),
    title = "My app",
    f7TabLayout(
      panels = tagList(
        f7Panel(
          title = "Left Panel",
          side = "left",
          f7PanelMenu(
            inset = TRUE,
            outline = TRUE,
            f7PanelItem(
              tabName = "tabset-Tab1",
              title = "To Tab 1",
              icon = f7Icon("folder"),
              active = TRUE
            ),
            f7PanelItem(
              tabName = "tabset-Tab2",
              title = "To Tab 2",
              icon = f7Icon("keyboard")
            ),
            f7PanelItem(
              tabName = "tabset-Tab3",
              title = "To Tab 3",
              icon = f7Icon("layers_alt")
            )
          ),
          effect = "floating"
        )
      ),
      navbar = f7Navbar(
        title = "Vocab Builder by rana2hin",
        hairline = TRUE,
        leftPanel = TRUE,
        rightPanel = FALSE,
        bigger = T,
        transparent = T,
        animate = T
      ),
      f7Tabs(
        animated = TRUE,
        id = "tabset",
        f7Tab(
          title = "Learn",
          tabName = "Tab1",
          icon = f7Icon("folder"),
          active = TRUE,
          # Updated f7SmartSelect for selecting groups
          f7SmartSelect(
            inputId = "selected_group",
            label = "Select Group(s)",
            choices = unique(word_data$groups),
            selected = word_data$groups[1],
            multiple = TRUE,
            openIn = "popup",
            searchbar = TRUE
          ),
          # Dynamic UI output for the cards
          uiOutput("cards")
        ),
        f7Tab(
          title = "Tab 2",
          tabName = "Tab2",
          icon = f7Icon("keyboard"),
          f7Card(
            outline = TRUE,
            raised = TRUE,
            divider = TRUE,
            title = "Card header",
            apexchartOutput("scatter")
          )
        ),
        f7Tab(
          title = "Tab 3",
          tabName = "Tab3",
          icon = f7Icon("layers_alt"),
          f7Card(
            outline = TRUE,
            raised = TRUE,
            divider = TRUE,
            title = "Card header",
            apexchartOutput("pie")
          )
        )
      )
    )
  ),
  server = function(input, output, session) {
    # Filter data based on the selected group(s)
    filtered_data <- reactive({
      if (is.null(input$selected_group) || length(input$selected_group) == 0) {
        word_data
      } else {
        subset(word_data, groups %in% input$selected_group)
      }
    })
    
    # Dynamically generate cards for each row in filtered_data
    output$cards <- renderUI({
      tagList(
        lapply(seq_len(nrow(filtered_data())), function(i) {
          f7ExpandableCard(
            id = paste0("card", i),
            title = filtered_data()$word[i],
            image = "https://i.pinimg.com/originals/73/38/6e/73386e0513d4c02a4fbb814cadfba655.jpg",
            filtered_data()$bangla[i],
            hr(),
            filtered_data()$eng[i],
            br(),
            filtered_data()$eng_2[i]
          )
        })
      )
    })
    
    output$pie <- renderApexchart({
      apex(data = poll,
           type = "pie",
           mapping = aes(x = answer, y = n))
    })
    
    output$scatter <- renderApexchart({
      apex(
        data = mtcars,
        type = "scatter",
        mapping = aes(x = wt, y = mpg, fill = cyl)
      )
    })
  }
)