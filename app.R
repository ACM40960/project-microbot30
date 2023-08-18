library(shiny)
library(keras)
library(base64enc)
library(png)

library(tensorflow)
# Load the model
model <- load_model_tf("model_augmented/")

# Define the UI
ui <- fluidPage(
  # App title 
  titlePanel("Lung Cancer Detection"),
  # Sidebar layout with input and output definitions 
  sidebarLayout(
    # Sidebar panel for inputs
    sidebarPanel(
      # Input: File upload
      fileInput("image_path", label = "Input a PNG image")
    ),
    # Main panel for displaying outputs
    mainPanel(
      #text out
      textOutput(outputId = "prediction"),
      plotOutput(outputId = "image")
    )
  )
)


# Define server logic
server <- function(input, output) {
  #loading the image as png
  image1 <- reactive({
    req(input$image_path)
    readPNG(input$image_path$datapath)
  })
  #loading the image path
  image <- reactive({
    req(input$image_path)
    (input$image_path$datapath)
  })
  
  output$prediction <- renderText({
    #Re-scaling in reshaping to modelrequirement
    img_test_app <- image_load(image(), target_size = c(255, 255), 
                               grayscale = F # Set FALSE if image is RGB
    )
    #convert to array
    x <- image_to_array(img_test_app)
    #reshaping to predict
    x <- array_reshape(x, c(1, dim(x)))
    x <- x/255 # Re-scale image pixel
    class_labels <- c("Adenocarcinoma", "Large cell carcinoma", "Normal CT Scan", "Squamous cell carcinoma")
    #finding the  probability each class
    values=predict(model,x)
    index=which.max( values )
    max_value=round(max(values), digits = 2)*100
    # Randomly select one string from the list
    paste0("The predicted Lung Cancer Type is ", class_labels[index] ," - ",max_value,"%")
  })
  #rendering the uploaded image
  output$image <- renderPlot({
    plot(as.raster(image1()))
  })
  
}

shinyApp(ui, server)