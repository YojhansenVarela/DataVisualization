##----------------------------------------------------------------------------##
##--------------------- Universidad Atonoma de Zacatecas ---------------------##
##--------------------- Proyecto de servisio social --------------------------##
##--------------------- Yojhansen Omar Varela Arellano -----------------------##
##----------------------------------------------------------------------------##
library(shinydashboard)
library(shiny)
library(plotly)
library(openxlsx)
library(dplyr)
library(fmsb)
library(shinyWidgets)

Datos = read.xlsx("www/BaseDatos/Encuesta_Respuestas.xlsx")

ui <- navbarPage(useShinydashboard(),
                 
                 tabPanel(title = "Socioeconomic determinants, knowledge about oral health care, quality of life and caries",
                          #header = list(title = "holi"),
                          fluidRow(
                            valueBoxOutput("a",width = 2),
                            valueBoxOutput("b",width = 2),
                            valueBoxOutput("c",width = 8)),
                          
                          fluidRow(
                            box(title = "Demographic Data", background = "teal",
                                width = 4, collapsible = T,
                                plotlyOutput("Dem_Plot")),
                            box(title = "Location", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("Loca_Plot")),
                            box(title = "Regional Classification", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("Region_Plot"))),
                          
                          fluidRow(
                            box(title = "Occupation", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("Ocu_Plot")),
                            box(title = "Economic Data", background = "teal",
                                width = 8, collapsible = T,
                                plotlyOutput("Econ_Plot"))),
                          
                          fluidRow(
                            box(title = "Housing Data", background = "teal",                                             
                                width = 12, collapsible = T,
                                plotlyOutput("DatosCasa_Plot"))),
                          
                          fluidRow(
                            box(title = "Quality of Life", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("CalidadVida_Plot")),
                            box(title = "Quality of Life", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("CalidadVidaPerso_Plot")),
                            box(title = "Public Education", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("Educa_Plot"))),
                          
                          fluidRow(
                            box(title = "Home Services", background = "teal",                                             
                                width = 6, collapsible = T,
                                plotlyOutput("HomServ_Plot")),
                            box(title = "Public Services", background = "teal",                                             
                                width = 6, collapsible = T,
                                plotlyOutput("ServPubli_Plot"))),
                          
                          fluidRow(
                            box(title = "Public Health Services", background = "teal",                                             
                                width = 12, collapsible = T,
                                plotlyOutput("PubHealthServ_Plot"))),
                          
                          fluidRow(
                            box(title = "Public Health Services", background = "teal",                                             
                                width = 12, collapsible = T,
                                plotlyOutput("PubHealthServ2_Plot"))),
                          
                          fluidRow(
                            box(title = "Public Health Institutions: Dental Service", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("PubHealthSerDental_Plot")),
                            box(title = "Public Health Institutions: Dental Service", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("PubDentalqual_Plot")),
                            box(title = "Public Health Institutions: Dental Service", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("PubDentalserv_Plot"))),
                        
                          fluidRow(
                            box(title = "Private Dental Service", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("PrivDentServ_Plot")),
                            box(title = "Private Dental Service", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("PrivDentQual_Plot")),
                            box(title = "Private Dental Service", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("PrivDentEcono_Plot"))),
                      
                          fluidRow(
                            box(title = "Physical Health", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("Percfisica_Plot")),
                            box(title = "Physical Health", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("Actdep_Plot")),
                            box(title = "Physical Health", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("FigFisica_Plot"))),
                          
                          fluidRow(
                            box(title = "Mental Health", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("Plen_Plot")),
                            box(title = "Mental Health", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("Tratamejorar_Plot")),
                            box(title = "Mental Health", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("Emocion_Plot"))),
                          
                          fluidRow(
                            box(title = "Appearance and Oral Health", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("ApSalbucal_Plot")),
                            box(title = "Appearance and Oral Health", background = "teal",                                             
                                width = 8, collapsible = T,
                                plotlyOutput("InsAtrBucal_Plot"))),
                      
                          fluidRow(
                            box(title = "Chronic Diseases", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("EnfCronic_Plot")),
                            box(title = "Bad Habits", background = "teal",                                             
                                width = 8, collapsible = T,
                                plotlyOutput("MalosHabit_Plot"))),
                          
                          fluidRow(
                            box(title = "Oral Care: Dentist", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("FreqVaDentista_Plot")),
                            box(title = "Oral Care: Dentist", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("MiedoAnsiDent_Plot")),
                            box(title = "Oral Care: Dentist", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("TranqConsDent_Plot"))),
                          
                          fluidRow(
                            box(title = "Oral Diseases", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("EnfBuc_Plot")),
                            box(title = "Dental Prosthesis", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("ProtesisDent_Plot")),
                            box(title = "Knowledge of Oral Health", background = "teal",                                             
                                width = 4, collapsible = T,
                                plotlyOutput("ConSalBucal_Plot"))),

                          fluidRow(
                            box(title = "Eating Habits",background = "teal",
                                solidHeader = TRUE,
                                width = 6, collapsible = T,
                                plotlyOutput("HabAlimen_Plot")),
                            box(title = "Eating Habits: Customs ", background = "teal",
                                width = 6, collapsible = T,
                                plotlyOutput("Cus_Plot"))),
                        
                          fluidRow(
                            box(title = "Tooth Brushing",background = "teal",
                                solidHeader = TRUE,
                                width = 6, collapsible = T,
                                plotlyOutput("CepDent")),
                            box(title = "Dentist Visits",background = "teal",
                                solidHeader = TRUE,
                                width = 6, collapsible = T,
                                plotlyOutput("VisitDent"))),
                          
                          includeHTML("footer.html"),
                          includeCSS("www/estilos/main.css")),
                 
                 #--------------------------------------------------------------
                 #--------------------------------------------------------------
                 #--------------------------------------------------------------
                 navbarMenu("",
                            tabPanel(title= "Identification Data",
                                     fluidRow(
                                       valueBoxOutput("a1",width = 2),
                                       valueBoxOutput("b1",width = 2),
                                       valueBoxOutput("c1",width = 8)),
                                    
                                      fluidRow(
                                       box(title = "Demographic Data", background = "teal",
                                           width = 4, collapsible = T,
                                           plotlyOutput("Dem_Plot1")),
                                       box(title = "Location", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("Loca_Plot1")),
                                       box(title = "Occupation", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("Ocu_Plot1"))),
                                     
                                     fluidRow(
                                       box(title = "Economic Data", background = "teal",
                                           width = 12, collapsible = T,
                                           plotlyOutput("Econ_Plot1")))),
                            #--------------------------------------------------------------
                            tabPanel(title = "Housing Features(Quality of Life)",
                                     fluidRow(
                                       box(title = "Housing Data", background = "teal",                                             
                                           width = 12, collapsible = T,
                                           plotlyOutput("DatosCasa_Plot1"))),
                                     
                                     fluidRow(
                                       box(title = "Quality of Life", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("CalidadVida_Plot1")),
                                       box(title = "Quality of Life", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("CalidadVidaPerso_Plot1")),
                                       box(title = "Home Services", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("HomServ_Plot1")))),
                            #--------------------------------------------------------------
                            tabPanel(title = "Public Services",
                                     fluidRow(
                                       box(title = "Public Education", background = "teal",                                             
                                           width = 6, collapsible = T,
                                           plotlyOutput("Educa_Plot1")),
                                       box(title = "Regional Classification", background = "teal",                                             
                                           width = 6, collapsible = T,
                                           plotlyOutput("Region_Plot1"))),
                                     
                                     fluidRow(
                                       box(title = "Public Services", background = "teal",                                             
                                           width = 12, collapsible = T,
                                           plotlyOutput("ServPubli_Plot1")))),
                            #--------------------------------------------------------------
                            tabPanel(title = "Health Services",
                                     fluidRow(
                                       box(title = "Public Health Services", background = "teal",                                             
                                           width = 12, collapsible = T,
                                           plotlyOutput("PubHealthServ_Plot1"))),
                                     
                                     fluidRow(
                                       box(title = "Public Health Services", background = "teal",                                             
                                           width = 12, collapsible = T,
                                           plotlyOutput("PubHealthServ2_Plot1"))),
                                     
                                     fluidRow(
                                       box(title = "Public Health Institutions: Dental Service", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("PubHealthSerDental_Plot1")),
                                       box(title = "Public Health Institutions: Dental Service", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("PubDentalqual_Plot1")),
                                       box(title = "Public Health Institutions: Dental Service", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("PubDentalserv_Plot1"))),
                                     
                                     fluidRow(
                                       box(title = "Private Dental Service", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("PrivDentServ_Plot1")),
                                       box(title = "Private Dental Service", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("PrivDentQual_Plot1")),
                                       box(title = "Private Dental Service", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("PrivDentEcono_Plot1")))),
                            #--------------------------------------------------------------
                            tabPanel(title = "Physical and Mental Health",
                                     fluidRow(
                                       box(title = "Physical Health", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("Percfisica_Plot1")),
                                       box(title = "Physical Health", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("Actdep_Plot1")),
                                       box(title = "Physical Health", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("FigFisica_Plot1"))),
                                     
                                     fluidRow(
                                       box(title = "Mental Health", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("Plen_Plot1")),
                                       box(title = "Mental Health", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("Tratamejorar_Plot1")),
                                       box(title = "Mental Health", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("Emocion_Plot1")))),
                            
                            #--------------------------------------------------------------
                            tabPanel(title = "Knowledge about Oral Health and Care",
                                     fluidRow(
                                       box(title = "Appearance and Oral Health", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("ApSalbucal_Plot1")),
                                       box(title = "Appearance and Oral Health", background = "teal",                                             
                                           width = 8, collapsible = T,
                                           plotlyOutput("InsAtrBucal_Plot1"))),
                                     
                                     fluidRow(
                                       box(title = "Oral Care: Dentist", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("FreqVaDentista_Plot1")),
                                       box(title = "Oral Care: Dentist", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("MiedoAnsiDent_Plot1")),
                                       box(title = "Oral Care: Dentist", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("TranqConsDent_Plot1"))),
                                     
                                     fluidRow(
                                       box(title = "Knowledge of Oral Health", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("ConSalBucal_Plot1")),
                                       box(title = "Dental Prosthesis", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("ProtesisDent_Plot1")),
                                       box(title = "Oral Diseases", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("EnfBuc_Plot1"))),
                                     
                                     fluidRow(
                                       box(title = "Dentist Visits",background = "teal",
                                           solidHeader = TRUE,
                                           width = 6, collapsible = T,
                                           plotlyOutput("VisitDent1")),
                                       box(title = "Tooth Brushing",background = "teal",
                                           solidHeader = TRUE,
                                           width = 6, collapsible = T,
                                           plotlyOutput("CepDent1"))),
                                     
                                     fluidRow(
                                       box(title = "Eating Habits",background = "teal",
                                           solidHeader = TRUE,
                                           width = 6, collapsible = T,
                                           plotlyOutput("HabAlimen_Plot1")),
                                       box(title = "Eating Habits: Customs ", background = "teal",
                                           width = 6, collapsible = T,
                                           plotlyOutput("Cus_Plot1"))),
                                     
                                     
                                     fluidRow(
                                       box(title = "Chronic Diseases", background = "teal",                                             
                                           width = 4, collapsible = T,
                                           plotlyOutput("EnfCronic_Plot1")),
                                       box(title = "Bad Habits", background = "teal",                                             
                                           width = 8, collapsible = T,
                                           plotlyOutput("MalosHabit_Plot1")))))
                
)


# Define server logic required to draw a histogram
server <- function(input, output) {
  
  
  output$a <- renderValueBox({
    valueBox(value = nrow(Datos) ,
             subtitle = "Population",
             icon = icon("users"),
             color = "blue")
  })
  
  output$b <- renderValueBox({
    Edd=data.frame(Datos[7])
    names(Edd)=c("Edad")
    
    EdadProm = round(mean(Edd$Edad))
    valueBox(value = EdadProm,
             subtitle = "Average Age",
             #subtitle = EdadProm,
             icon = icon(name = "calendar"),
             color = "blue")
    
  })
  
  output$c <- renderValueBox({
    EdoCivil<-data.frame(table(Datos[8]))
    valueBox(value = paste0("Married: ",EdoCivil$Freq[1],
                            " | ",
                            "Single: ",EdoCivil$Freq[3],
                            " | ",
                            " Divorced: ",EdoCivil$Freq[2],
                            " | ",
                            "Others: ",EdoCivil$Freq[4]
    ),
    #subtitle = table(Datos$`3.-¿Cuál es su estado civil? [Respuesta]`),
    subtitle = "Marital Status",
    
    
    
    icon = icon("fa-duotone fa-ring",lib = "font-awesome" ),
    color = "blue")
    
  })
  
  
  output$Dem_Plot <- renderPlotly({
    Hombres<- data.frame(filter(Datos,Datos[6] == "Masculino"))
    Mujeres<- data.frame(filter(Datos,Datos[6] == "Femenino"))
    names(Hombres)[7]="Edad"
    names(Mujeres)[7]="Edad"
    plot_ly(alpha=0.7,
            data = Mujeres,
            name = "Female",
            x = ~Edad,
            type = "histogram",
            nbinsx = 20,
            marker = list(color = "rgba(255, 45, 160, 0.7)",
                          line = list(color = "rgb(255, 45, 160)",
                                      width = 2))) %>%
      
      add_trace(data = Hombres,
                name = "Male",
                x = ~Edad,
                marker = list(color = "rgba(45, 160, 255, 0.7)",
                              line = list(color = "rgb(45, 160, 255)",
                                          width = 2))) %>%
      
      layout(hoverlabel = list(
        font = list(color ='rgb(0,0,0)')),
        barmode ="overlay",
        #bargap=0.1,
        xaxis = list(title = "Age"))
    
  })
  
  output$HabAlimen_Plot <- renderPlotly({
    AlimentosCaliricos<- table(Datos[106])
    AguaNatural<-table(Datos[107])
    BebidasDulces<-table(Datos[108])
    Embutidos<-table(Datos[109])
    Verduras<-table(Datos[110])
    Fruta<-table(Datos[111])
    Lacteos<-table(Datos[112])
    CarneRoja<-table(Datos[113])
    CarneBlanca<-table(Datos[114])
    Leguminosa<-table(Datos[115])
    Sal<-table(Datos[116])
    ComidaRapida<-table(Datos[119])
    
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = AlimentosCaliricos,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'High calorie food',
      fillcolor=rgb(255/255, 255/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(200/255, 200/255, 0/255, alpha = 1),
                    symbol = "pentagon") 
      
    )%>%add_trace(
      r = AguaNatural,
      theta = c(#'Never','Hardly ever',
        'Rarely','Seldom',  
        'Occasionally', 'Sometimes','Often','Frequently',
        'Generally','Usually','Always'),
      name = 'Natural water',
      fillcolor=rgb(0/255, 120/255, 255/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 90/255, 200/255, alpha = 1)) 
      
    )%>%add_trace(
      r = BebidasDulces,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually'),#'Always'),
      name = 'Sweet drinks',
      fillcolor=rgb(175/255, 0/255, 255/255, alpha = 0.8),
      marker = list(color = rgb(140/255, 0/255, 200/255, alpha = 1))
      
    )%>%add_trace(
      r = Embutidos,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Sausages',
      fillcolor=rgb(255/255, 90/255, 90/255, alpha = 0.8),
      marker = list(color = rgb(200/255, 70/255, 70/255, alpha = 1))
      
    )%>%add_trace(
      r = Verduras,
      theta = c('Never',#'Hardly ever',
                'Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Vegetables',
      fillcolor=rgb(0/255, 255/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 200/255, 0/255, alpha = 1))
      
    )%>%add_trace(
      r = Fruta,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Fruits',
      fillcolor=rgb(5/255, 35/255, 85/255, alpha = 0.8),
      marker = list(color = rgb(4/255, 20/255, 60/255, alpha = 1))
      
    )%>%add_trace(
      r = Lacteos,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Dairy',
      fillcolor=rgb(0/255, 245/255, 255/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 190/255, 200/255, alpha = 1))
      
    )%>%add_trace(
      r = CarneRoja,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Red meat',
      fillcolor=rgb(0/255, 0/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(90/255, 90/255, 90/255, alpha = 1))
      
    )%>%add_trace(
      r = CarneBlanca,
      theta = c(#'Never',
        'Hardly ever','Rarely','Seldom',  
        'Occasionally', 'Sometimes','Often','Frequently',
        'Generally','Usually','Always'),
      name = 'White met',
      fillcolor=rgb(0/255, 255/255, 115/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 200/255, 90/255, alpha = 1))
      
    )%>%add_trace(
      r = Leguminosa,
      theta = c('Never',#'Hardly ever',
                'Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Legumes',
      fillcolor=rgb(252/255, 101/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(252/255, 101/255, 0/255, alpha = 1))
      
    )%>%add_trace(
      r = Sal,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Salt',
      
      fillcolor=rgb(84/255,139/255,84/255,0.8, alpha = 0.8),
      marker = list(color = rgb(50/255, 83/255, 50/255, alpha = 1))
    )%>%add_trace(
      r = ComidaRapida,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually'),#'Always'),
      name = 'Fast food',
      fillcolor=rgb(252/255, 0/255, 84/255, alpha = 0.8),
      marker = list(color = rgb(200/255, 0/255, 60/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Types of food eaten during the day",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.45, xanchor = 'center', yanchor =  'top'),
      margin=list(t=50),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(AlimentosCaliricos,AguaNatural,BebidasDulces,
                          Embutidos,Verduras,Fruta,Lacteos,
                          CarneRoja,CarneBlanca,Leguminosa,
                          Sal,ComidaRapida))
        )
      )
    )
  })
  
  
  output$Cus_Plot <- renderPlotly({
    TresComidas<-table(Datos[117])
    Colaciones<-table(Datos[118])
    ComeFamilia<-table(Datos[120])
    ComeVeTV<-table(Datos[121])
    HorariosAlim<-table(Datos[122])
    
    
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = TresComidas,
      theta = c('Never',#'Hardly ever',
                'Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Eats three times a day',
      fillcolor=rgb(255/255, 0/255, 65/255, alpha = 0.8),
      marker = list(color = rgb(200/255, 0/255, 50/255, alpha = 1))  
      
    )%>%add_trace(
      r = Colaciones,
      theta = c('Never',#'Hardly ever',
                'Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Eats snacks between meals',
      fillcolor=rgb(252/255, 101/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(200/255, 80/255, 0/255, alpha = 1))
      
    )%>%add_trace(
      r = ComeFamilia,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Eats as a family',
      fillcolor=rgb(5/255, 165/255, 190/255, alpha = 0.8),
      marker = list(color = rgb(4/255, 130/255, 150/255, alpha = 1))
      
    )%>%add_trace(
      r = ComeVeTV,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Eats while watching TV',
      fillcolor=rgb(120/255, 110/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(90/255, 80/255, 0/255, alpha = 1))
      
    )%>%add_trace(
      r = HorariosAlim,
      theta = c('Never',#'Hardly ever',
                'Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Has meal times',
      fillcolor=rgb(175/255, 0/255, 255/255, alpha = 0.8),
      marker = list(color = rgb(140/255, 0/255, 200/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Customs related to food",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.45, xanchor = 'center', yanchor =  'top'),
      margin=list(t=50),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(TresComidas,Colaciones,ComeFamilia,
                          ComeVeTV,HorariosAlim))
        )
      )
    )
    
  })
  
  
  output$Econ_Plot <- renderPlotly({
    
    Dinero <- c(' $700-1200', '$1400-2400', '$2800-4800','More than $5000')
    yquin <- c(5, 14, 34, 43)
    ymen<- c(5, 24, 37,32)
    Ayo<-c('No','Yes')
    AyoFrq<-c(87,13)
    
    
    Quince<-data.frame(Dinero,yquin)
    Mensual<- data.frame(Dinero,ymen)
    Apoyo<- data.frame(Ayo,AyoFrq)
    
    
    
    
    IngresosQin<- plot_ly(Quince, x = ~Dinero, y = ~yquin,
                          type = 'bar',
                          name = "Biweekly Income",
                          marker = list(color = 'rgba(30,170,30,0.8)',
                                        line = list(color = 'rgb(18,102,18)',
                                                    width = 1)))%>%
      
      layout( hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    
    EgresosMen<- plot_ly(Mensual, x = ~Dinero, y = ~ymen, type = 'bar',
                         name = "Monthly expenses",
                         marker = list(color = 'rgba(255,50,50,0.8)',
                                       line = list(color = 'rgb(150,50,50)',
                                                   width = 1)))%>%
      layout(
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    ApoyoExtra<- plot_ly(Apoyo, x = ~Ayo, y = ~AyoFrq, type = 'bar',
                         name = "Economic support",
                         marker = list(color = 'rgba(50,50,255,0.8)',
                                       line = list(color = 'rgb(50,50,255)',
                                                   width = 1)))%>%
      layout(
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    
    
    final <- subplot(IngresosQin,EgresosMen,ApoyoExtra,widths = c(0.4,0.4,0.2),titleY = TRUE, titleX = TRUE, margin = 0.05 )
    
    
    annotations = list( 
      list( 
        x = 0.2,  
        y = 1.0,  
        text = "Biweekly Economic Income (In MXN)",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),  
      list( 
        x = 0.6,  
        y = 1,  
        text = "Monthly Economic Expenses (In MXN) ",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),
      list( 
        x = 0.95,  
        y = 1,  
        text = "Receive Economic Support",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ))
    
    final <- final %>%layout(annotations = annotations) 
    
    
  })
  
  
  output$Loca_Plot <- renderPlotly({
    
    Estado<-data.frame(table(Datos[4]))
    
    plot_ly(Estado, x = ~Var1, y = ~Freq,
            type = 'bar',
            name = "",
            marker = list(color = 'rgba(120,110,0,0.8)',
                          line = list(color = 'rgb(60,55,0)',
                                      width = 1)))%>%
      
      layout( hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        title = '',
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
  })
  
  output$Region_Plot <- renderPlotly({
    region<- data.frame(table(Datos[5]))
    Rlab<-c('Semi-urban','Rural', 'Urban')
    colors <- c('rgba(255,106,106,1)', 'rgba(205,105,200,1)', 'rgba(205,16,118,1)')
    
    plot_ly(region, labels = Rlab, values = ~Freq, type = 'pie',
            textposition = 's',
            textinfo = 'label+percent',
            insidetextfont = list(color = '#FFFFFF'),
            hoverinfo = 'text',
            text = ~paste( Freq,' ',Rlab ,' people'),
            marker = list(colors = colors,
                          line = list(color = '#FFFFFF', width = 1)))%>% 
      #The 'pull' attribute can also be used to create space between the sectors
      #showlegend = FALSE)%>% 
      layout(hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        title = '',
        xaxis = list(showgrid = T, zeroline = FALSE, showticklabels = FALSE),
        yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
    
    
    
  })
  
  output$Ocu_Plot <- renderPlotly({
    
    #ocupacion<- data.frame(table(Datos[10]))
    x<-c('Study', 'Study, Work', 'Work',
         'Work, Retired',' Retired'
    )
    y<-c(34,13,46,1,2)
    
    
    ocupacion <- data.frame(x, y)
    
    #The default order will be alphabetized unless specified as below:
    ocupacion$x <- factor(ocupacion$x, levels = ocupacion[["x"]])
    
    
    plot_ly(ocupacion, x = ~x, y = ~y,
            type = 'bar',
            name = "",
            marker = list(color = 'rgba(236,211,0,0.8)',
                          line = list(color = 'rgb(140,125,0)',
                                      width = 1)))%>%
      
      layout( xaxis = list(title = ""),
              yaxis = list(title = ""))
    
  })
  
  #
  output$DatosCasa_Plot <- renderPlotly({
    
    Cas<-data.frame(table(Datos[24]))
    Habit<- data.frame(table(Datos[23]))
    Integ<- data.frame(table(Datos[22])) 
    
    
    Caslab<-c('Borrowed ','Owned','Rented')
    
    Casa<- plot_ly(Cas, x = Caslab, y = ~Freq,
                   hovertext = ~paste0(Freq,', ',Caslab,' house'),
                   type = 'bar',
                   name = "Type of house",
                   marker = list(color = 'rgba(23,195,178,0.8)',
                                 line = list(color = 'rgb(13,117,106)',
                                             width = 1)))%>%
      
      layout( hoverlabel = list(
        font = list(color ='rgb(0,0,0)')),
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    
    Habitaciones<- plot_ly(Habit, x = ~Var1, y = ~Freq, type = 'bar',
                           name = "Number of rooms",
                           hovertext = ~paste0(Var1,' Rooms in the house'),
                           marker = list(color = 'rgba(242,100,25,0.8)',
                                         line = list(color = 'rgb(145,60,15)',
                                                     width = 1)))%>%
      layout(
        #hoverlabel = list(
        #  font = list(color ='rgb(255,0,0)')),
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    Integrantes<- plot_ly(Integ, x = ~Var1, y = ~Freq, type = 'bar',
                          name = "Number of people",
                          hovertext = ~paste0(Var1,' People living at home'),
                          marker = list(color = 'rgba(255,99,146,0.8)',
                                        line = list(color = 'rgb(153,59,87)',
                                                    width = 1)))%>%
      layout(
        #hoverlabel = list(
        #  font = list(color ='rgb(0,0,0)')),
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    
    
    final <- subplot(Casa,Habitaciones,Integrantes,widths = c(0.25,0.45,0.3),titleY = TRUE, titleX = TRUE, margin = 0.05 )
    
    
    annotations = list( 
      list( 
        x = 0.1,  
        y = 1.0,  
        text = "Type of house: borrowed, rented, owned",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),  
      list( 
        x = 0.5,  
        y = 1,  
        text = "Number of rooms in the house ",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),
      list( 
        x = 0.9,  
        y = 1,  
        text = "Number of people living at home",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ))
    
    final <- final %>%layout(annotations = annotations) 
    
    
  })
  
  output$CalidadVida_Plot <- renderPlotly({
    
    agua<-table(Datos[25])
    drenaje<-table(Datos[26])
    electricidad<-table(Datos[27])
    
    
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = agua,
      theta = c('Appalling', #'Lousy', 'Very bad', 
                'Bad','Regular', 'Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Running water',
      fillcolor=rgb(1/255, 255/255, 141/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 153/255, 84/255, alpha = 1))  
      
    )%>%add_trace(
      r = drenaje,
      theta = c(#'Appalling', 'Lousy', 'Very bad','Bad',
        'Regular','Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Drainage',
      fillcolor=rgb(255/255, 139/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(153/255, 83/255, 0/255, alpha = 1))
      
      
    )%>%add_trace(
      r = electricidad,
      theta = c(#'Appalling', 'Lousy', 'Very bad', 'Bad','Regular',
        'Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Electricity',
      fillcolor=rgb(140/255, 0/255, 255/255, alpha = 0.8),
      marker = list(color = rgb(84/255, 0/255, 153/255, alpha = 1))
      
    )%>%layout(
      annotations =       list( 
        x = 0.6,  
        y = 1,  
        text = "Consideration of service quality",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(agua,drenaje,electricidad))#,drenaje,electricidad))
        )
      ),
      margin=list(t=50,b=50,l=70,r=70)
    )
    
  })
  
  output$CalidadVidaPerso_Plot <- renderPlotly({
    
    Calper<-table(Datos[80])
    Telefono<-table(Datos[31])
    
    
    
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = Calper,
      theta = c(#'Appalling', 'Lousy', 'Very bad','Bad',
        'Regular','Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Personal Quality of Life',
      fillcolor=rgb(255/255, 215/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(153/255, 129/255, 0/255, alpha = 1))
      
      
      
    )%>%layout(
      title = list(text = "Perception of personal quality of life",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(Calper))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
    
  })
  
  output$HomServ_Plot <- renderPlotly({
    
    Internet<-table(Datos[29])
    Cable<-table(Datos[30])
    Telefono<-table(Datos[31])
    
    
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = Telefono,
      theta = c('Appalling', 'Lousy', 'Very bad', 'Bad','Regular',
                'Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Telephone',
      fillcolor=rgb(76/255, 95/255, 42/255, alpha = 0.8),
      marker = list(color = rgb(45/255, 57/255, 25/255, alpha = 1))
    )%>%add_trace(
      r = Internet,
      theta = c(#'Appalling', 'Lousy', 
        'Very bad', 
        'Bad','Regular', 'Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Internet',
      fillcolor=rgb(214/255, 33/255, 124/255, alpha = 0.8),
      marker = list(color = rgb(128/255, 19/255, 74/255, alpha = 1))  
      
    )%>%add_trace(
      r = Cable,
      theta = c('Appalling', 'Lousy', 'Very bad',#'Bad',
                'Regular','Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Cable',
      fillcolor=rgb(0/255, 152/255, 211/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 91/255, 126/255, alpha = 1))
      
      
      
    )%>%layout(
      title = list(text = "Consideration of service quality",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.45, xanchor = 'center', yanchor =  'top'),
      margin=list(t=50),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(Telefono,Cable,Internet))#,drenaje,electricidad))
        )
      )
    )
    
  })
  output$Educa_Plot <- renderPlotly({
    Educa<- data.frame(table(Datos[38]))
    Elab<-c('No','Yes')
    
    
    colors <- c('rgba(241,69,53,1)', 'rgba(16,124,65,1)')
    tx<-c('2 Without public education institutions','98 With public education institutions')
    
    plot_ly(Educa, labels = Elab, values = ~Freq, type = 'pie',
            textposition = 's',
            textinfo = 'label+percent',
            insidetextfont = list(color = '#FFFFFF'),
            hoverinfo = 'text',
            text = tx,
            marker = list(colors = colors,
                          line = list(color = '#FFFFFF', width = 1)))%>% 
      
      layout(hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        title = '',
        xaxis = list(showgrid = T, zeroline = FALSE, showticklabels = FALSE),
        yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
        annotations =       list( 
          x = 0.5,  
          y = 1,  
          text = "Localities with public education institutions",  
          xref = "paper",  
          yref = "paper",  
          xanchor = "center",  
          yanchor = "bottom",  
          showarrow = FALSE ))
  })
  
  
  output$ServPubli_Plot <- renderPlotly({
    TransporteUrbano<-table(Datos[35])
    Recreacion<-table(Datos[37])
    instEducativas<-table(Datos[39])
    Biblotecas<-table(Datos[40])
    ObrasPublicas<-table(Datos[41])
    
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = TransporteUrbano,
      theta = c('Appalling', 'Lousy', 'Very bad', 'Bad','Regular',
                'Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Urban transport',
      fillcolor=rgb(50/255, 50/255, 50/255, alpha = 0.8),
      marker = list(color = rgb(35/255, 35/255, 35/255, alpha = 1))
    )%>%add_trace(
      r = Recreacion,
      theta = c('Appalling', 'Lousy', 
                'Very bad', 
                'Bad','Regular', 'Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Recreation spaces',
      fillcolor=rgb(127/255, 255/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(76/255, 153/255, 0/255, alpha = 1))  
      
    )%>%add_trace(
      r = Biblotecas,
      theta = c('Appalling', 'Lousy', 'Very bad','Bad',
                'Regular','Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Libraries',
      fillcolor=rgb(0/255, 154/255, 205/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 92/255, 123/255, alpha = 1))
      
    )%>%add_trace(
      r = ObrasPublicas,
      theta = c('Appalling', 'Lousy', 
                'Very bad', 
                'Bad','Regular', 'Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Public works',
      fillcolor=rgb(255/255, 185/255, 15/255, alpha = 0.8),
      marker = list(color = rgb(153/255, 111/255, 9/255, alpha = 1))  
      
    )%>%add_trace(
      r = instEducativas,
      theta = c(#'Appalling', 'Lousy', 'Very bad',
        'Bad',#'Regular',
        'Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Educational institutions',
      fillcolor=rgb(200/255, 0/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(150/255, 0/255, 0/255, alpha = 1))
      
      
    )%>%layout(
      title = list(text = "Consideration of service quality",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.45, xanchor = 'center', yanchor =  'top'),
      margin=list(t=50),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(TransporteUrbano,Recreacion,instEducativas,
                          Biblotecas,ObrasPublicas))
        )
      )
    ) 
  })
  
  output$PubHealthServ_Plot <- renderPlotly({
    
    x<-c('IMMS','IMMS, ISSTE','IMMS, ISSTE , Other','IMMS, ISSTE , SSZ','IMMS, ISSTE , SSZ , Other',
         'IMMS, Other','IMMS, SSZ','ISSTE','ISSTE , Other','ISSTE , SSZ','SSZ','SSZ , Other',
         'Other','None')
    y<-c(22,9,3,18,3,2,4,9,1,2,7,1,14,5)
    
    
    insalud <- data.frame(x, y)
    
    #The default order will be alphabetized unless specified as below:
    insalud$x <- factor(insalud$x, levels = insalud[["x"]])
    
    
    saludinsti<-plot_ly(insalud, x = ~x, y = ~y,
                        type = 'bar',
                        name = "",
                        marker = list(color = 'rgba(127,255,0,0.8)',
                                      line = list(color = 'rgb(76,153,0)',
                                                  width = 1)))%>%
      
      layout( xaxis = list(title = ""),
              yaxis = list(title = ""))
    
    calservsalud<-data.frame(table(Datos[44]))
    
    
    
    xx<-c(
      'Appalling', 'Lousy', 'Very bad','Bad',
      'Regular','Acceptable', 'Good', 'Very good', 
      'Great','Extraordinary', 'Excellent')
    yy<-c(1,1,3,1,7,9,9,24,21,9,4)
    
    
    insalud <- data.frame(xx, yy)
    
    #The default order will be alphabetized unless specified as below:
    insalud$xx <- factor(insalud$xx, levels = insalud[["xx"]])
    
    
    calservsal<-plot_ly(insalud, x = ~xx, y = ~yy,
                        type = 'bar',
                        name = "",
                        marker = list(color = 'rgba(0,255,255,0.8)',
                                      line = list(color = 'rgb(0,153,153)',
                                                  width = 1)))%>%
      
      layout( xaxis = list(title = ""),
              yaxis = list(title = ""),
              showlegend = F)
    
    
    final <- subplot(saludinsti,calservsal,widths = c(0.6,0.4),titleY = TRUE, titleX = TRUE, margin = 0.05 )
    
    
    annotations = list( 
      list( 
        x = 0.3,  
        y = 1.0,  
        text = "Health institutions that exist",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),
      list( 
        x = 0.85,  
        y = 1,  
        text = "Quality of service provided by health institutions",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ))
    
    final <- final %>%layout(annotations = annotations)
    final
  })
  
  ###
  output$PubHealthServ2_Plot <- renderPlotly({
    
    
    Freqs<-data.frame(table(Datos[45]))
    
    xxx<-c(
      'Never','Hardly ever','Rarely','Seldom',  
      'Occasionally', 'Sometimes','Often','Frequently',
      'Generally','Usually')
    yyy<-c(5,10,17,9,5,14,10,9,9,5)
    
    
    Freqs <- data.frame(xxx, yyy)
    
    #The default order will be alphabetized unless specified as below:
    Freqs$xxx <- factor(Freqs$xxx, levels = Freqs[["xxx"]])
    
    
    freqsalu<-plot_ly(Freqs, x = ~xxx, y = ~yyy,
                      type = 'bar',
                      name = "",
                      marker = list(color = 'rgba(46,139,87,0.8)',
                                    line = list(color = 'rgb(27,83,52)',
                                                width = 1)))%>%
      
      layout( xaxis = list(title = ""),
              yaxis = list(title = ""))
    freqsalu  
    
    
    
    
    servsoli<-data.frame(table(Datos[46]))
    
    
    
    xxxx<-c(
      'Curative','Curative, specialized medicine','Curative, Rehabilitation',
      'Specialized medicine','Preventive','Preventive, Curative','Rehabilitation')
    yyyy<-c(32,1,2,5,28,12,6)
    
    
    sersolicitado <- data.frame(xxxx, yyyy)
    
    #The default order will be alphabetized unless specified as below:
    sersolicitado$xxxx <- factor(sersolicitado$xxxx, levels = sersolicitado[["xxxx"]])
    
    
    ss<-plot_ly(sersolicitado, x = ~xxxx, y = ~yyyy,
                type = 'bar',
                name = "",
                marker = list(color = 'rgba(71,60,139,0.8)',
                              line = list(color = 'rgb(42,36,83)',
                                          width = 1)))%>%
      
      layout( xaxis = list(title = ""),
              yaxis = list(title = ""),
              showlegend = F)
    
    final <- subplot(freqsalu,ss,widths = c(0.6,0.4),titleY = TRUE, titleX = TRUE, margin = 0.05 )
    
    
    annotations = list( 
      list( 
        x = 0.3,  
        y = 1.0,  
        text = "Frequency with which you attend the health service",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),
      list( 
        x = 0.8,  
        y = 1,  
        text = "Solicited service",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ))
    
    final <- final %>%layout(annotations = annotations)
    final
  })
  
  output$PubHealthSerDental_Plot <- renderPlotly({
    
    SerDen<- data.frame(table(Datos[49]))
    Dlab<-c('Unknown','No', 'Yes')
    colors <- c('rgba(205,173,0,1)', 'rgba(255,48,48,1)', 'rgba(104,34,139,1)')
    tx<-c('17 People do not know if they have dental service or not','34 people do not have dental service ',
          '39 people have dental service')
    
    sk<-plot_ly(SerDen, labels = Dlab, values = ~Freq, type = 'pie',
                textposition = 's',
                textinfo = 'label+percent',
                insidetextfont = list(color = '#FFFFFF'),
                hoverinfo = 'text',
                text = tx,
                marker = list(colors = colors,
                              line = list(color = '#FFFFFF', width = 1)))%>% 
      #The 'pull' attribute can also be used to create space between the sectors
      #showlegend = FALSE)%>% 
      layout(hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        title = '',
        xaxis = list(showgrid = T, zeroline = FALSE, showticklabels = FALSE),
        yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
        annotations =       list( 
          x = 0.5,  
          y = 1,  
          text = "The Institution Provides dental services",  
          xref = "paper",  
          yref = "paper",  
          xanchor = "center",  
          yanchor = "bottom",  
          showarrow = FALSE ))
  })
  output$PubDentalqual_Plot <- renderPlotly({
    
    denqual<-table(Datos[50])
    
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = denqual,
      theta = c('Appalling', 'Lousy', 'Very bad','Bad',
                'Regular','Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Quality of dental service',
      fillcolor=rgb(255/255, 140/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(153/255, 84/255, 0/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Quality of dental service that receive",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(denqual))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
    
  })
  
  
  output$PubDentalserv_Plot <- renderPlotly({
    
    servsoli<-data.frame(table(Datos[51]))
    xxxx<-c(
      'Curative','Preventive','Preventive, Curative','Preventive, Curative, Rehabilitation',
      'Rehabilitation')
    yyyy<-c(26,20,9,2,4)
    
    
    sersolicitado <- data.frame(xxxx, yyyy)
    
    #The default order will be alphabetized unless specified as below:
    sersolicitado$xxxx <- factor(sersolicitado$xxxx, levels = sersolicitado[["xxxx"]])
    
    
    ss<-plot_ly(sersolicitado, x = ~xxxx, y = ~yyyy,
                type = 'bar',
                name = "",
                marker = list(color = 'rgba(255,20,147,0.8)',
                              line = list(color = 'rgb(153,12,88)',
                                          width = 1)))%>%
      
      layout( title = list(text = "Solicited service",
                           font = list(
                             family = "Open Sans, verdana, arial, sans-serif",
                             size = 12,
                             color = "rgb(68,68,68)"),
                           y = 0.98, 
                           x = 0.5, xanchor = 'center', yanchor =  'top'),
              xaxis = list(title = ""),
              yaxis = list(title = ""))
  })
  
  output$PrivDentServ_Plot <- renderPlotly({
    
    PrivServ<- data.frame(table(Datos[52]))
    Elab<-c('No','Yes')
    
    
    colors <- c('rgba(200,64,64,1)', 'rgba(110,139,61,1)')
    tx<-c('14 Without private dental service','85 With private dental service')
    
    plot_ly(PrivServ, labels = Elab, values = ~Freq, type = 'pie',
            textposition = 's',
            textinfo = 'label+percent',
            insidetextfont = list(color = '#FFFFFF'),
            hoverinfo = 'text',
            text = tx,
            marker = list(colors = colors,
                          line = list(color = '#FFFFFF', width = 1)))%>% 
      
      layout(hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        title = '',
        xaxis = list(showgrid = T, zeroline = FALSE, showticklabels = FALSE),
        yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
        annotations =       list( 
          x = 0.5,  
          y = 1,  
          text = "Localities with private dental service",  
          xref = "paper",  
          yref = "paper",  
          xanchor = "center",  
          yanchor = "bottom",  
          showarrow = FALSE ))
    
    
    
  })
  
  output$PrivDentQual_Plot <- renderPlotly({
    
    privdenqual<-table(Datos[53])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = privdenqual,
      theta = c(#'Appalling', 'Lousy', 'Very bad',
        'Bad','Regular','Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Quality of private dental service',
      fillcolor=rgb(125/255, 255/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(75/255, 153/255, 0/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Quality of private dental service that receive",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(privdenqual))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
  })
  
  output$PrivDentEcono_Plot <- renderPlotly({
    repEco<-table(Datos[54])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = repEco,
      theta = c('Nothing',#'Very little', 
                'Little','Barely', 'Something',
                'Moderately','Measuredly','Considerably', 'Much','Quite' ,'Too much'),
      name = 'Economic repercussion',
      fillcolor=rgb(255/255, 130/255, 80/255, alpha = 0.8),
      marker = list(color = rgb(153/255, 78/255, 48/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Economic repercussion of using a private dental service",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(repEco))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
  })
  
  output$Percfisica_Plot <- renderPlotly({
    
    
    Saludfisica<-table(Datos[55])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = Saludfisica,
      theta = c(#'Appalling', 'Lousy', 'Very bad',
        'Bad','Regular','Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Perception of physical well-being',
      fillcolor=rgb(75/255, 0/255, 130/255, alpha = 0.8),
      marker = list(color = rgb(45/255, 0/255, 78/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Perception of physical well-being",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(Saludfisica))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
  })
  output$Actdep_Plot <- renderPlotly({
    ActFisica<-table(Datos[84])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = ActFisica,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Frequency with which you perform physical activity',
      fillcolor=rgb(255/255, 0/255, 255/255, alpha = 0.8),
      marker = list(color = rgb(153/255, 0/255, 153/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Frequency with which you perform physical activity",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(ActFisica))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
    
  })
  
  output$FigFisica_Plot <- renderPlotly({
    
    
    FiFisi<-table(Datos[84])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = FiFisi,
      theta = c('Appalling', 'Lousy', 'Very bad', 
                'Bad','Regular', 'Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Consideration of physical figure',
      fillcolor=rgb(220/255, 20/255, 60/255, alpha = 0.8),
      marker = list(color = rgb(132/255, 12/255, 36/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Consideration of physical figure",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(FiFisi))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
  })
  
  output$Plen_Plot <- renderPlotly({
    Plen<-table(Datos[64])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = Plen,
      theta = c(#'Appalling', 'Lousy', 'Very bad', 
        'Bad','Regular', 'Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Consideration of fullness',
      fillcolor=rgb(200/255, 200/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(120/255, 120/255, 0/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Consideration of fullness (personal balance, dignity, solidarity)",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(Plen))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
    
  })
  output$Tratamejorar_Plot <- renderPlotly({
    
    
    TratMej<-table(Datos[74])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = TratMej,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Make decisions to improve any aspect of life',
      fillcolor=rgb(250/255, 20/255, 50/255, alpha = 0.8),
      marker = list(color = rgb(150/255, 12/255, 30/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Make decisions to improve any aspect of life",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(TratMej))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
  })
  
  output$Emocion_Plot <- renderPlotly({
    Emocional<-table(Datos[59])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = Emocional,
      theta = c(#'Appalling', 
        'Lousy', 'Very bad', 
        'Bad','Regular', 'Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Consideration of emotional state',
      fillcolor=rgb(0/255, 200/255, 200/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 120/255, 120/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Consideration of emotional state",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(Emocional))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
  })
  
  
  output$ApSalbucal_Plot <- renderPlotly({
    
    ApaBucal<-table(Datos[71])
    Salbuc<-table(Datos[103])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = ApaBucal,
      theta = c('Appalling', 'Lousy', 'Very bad',
                'Bad','Regular','Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Oral appearance',
      fillcolor=rgb(0/255, 10/255, 90/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 6/255, 54/255, alpha = 1))
      
    )%>%add_trace(
      r = Salbuc,
      theta = c('Appalling', 'Lousy', 'Very bad',
                'Bad','Regular','Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Oral health',
      fillcolor=rgb(50/255, 220/255, 145/255, alpha = 0.8),
      marker = list(color = rgb(30/255, 132/255, 87/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Cosidetation of appearance and oral health",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(ApaBucal,Salbuc))
        )
      ),
      margin=list(t=50,b=50,l=70,r=70)
    )
    
  })
  
  output$InsAtrBucal_Plot <- renderPlotly({
    
    IncorBuc<-table(Datos[79])
    IncorformidadDenta<-c(
      'Tooth absence','Colour','Shape','Shape, Color','Shape, Size',
      'Shape, Size, Color','Shape, Size, Color, Use of prostheses',
      'Shape, Size, Color, Use of prosthesis, Dental absence',
      'Shape, Use of prosthesis, Dental absence','Size','Size, Color',
      'Use of prostheses, Dental absence')
    Frecue<-c(4,33,19,7,4,4,1,1,1,6,2,1)
    
    
    AtrIncDent <- data.frame(IncorformidadDenta, Frecue)
    plot_ly(AtrIncDent, x = ~IncorformidadDenta, y = ~Frecue,
            type = 'bar',
            name = "",
            marker = list(color = 'rgba(80,0,40,0.8)',
                          line = list(color = 'rgb(48,0,24)',
                                      width = 1)))%>%
      
      layout( title = list(text = "Disagreement with some attribute of the teeth",
                           font = list(
                             family = "Open Sans, verdana, arial, sans-serif",
                             size = 12,
                             color = "rgb(68,68,68)"),
                           y = 0.98, 
                           x = 0.5, xanchor = 'center', yanchor =  'top'),
              xaxis = list(title = ""),
              yaxis = list(title = ""))
    
    
  })
  output$EnfCronic_Plot <- renderPlotly({
    
    EnfCron<- data.frame(table(Datos[81]))
    Cron<-c('No','Yes')
    CronFrq<-c(86,13)
    
    
    Apoyo<- data.frame(Cron,CronFrq)
    ApoyoExtra<- plot_ly(Apoyo, x = ~Cron, y = ~CronFrq, type = 'bar',
                         name = "",
                         marker = list(color = 'rgba(255,50,0,0.8)',
                                       line = list(color = 'rgb(153,30,0)',
                                                   width = 1)))%>%
      layout(
        title = list(text = "Have any chronic disease",
                     font = list(
                       family = "Open Sans, verdana, arial, sans-serif",
                       size = 12,
                       color = "rgb(68,68,68)"),
                     y = 0.98, 
                     x = 0.5, xanchor = 'center', yanchor =  'top'),
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    ApoyoExtra
    
    
  })
  
  output$MalosHabit_Plot <- renderPlotly({
    lab<-c('No','Yes')
    Fum<-c(91,9)
    Tom<-c(57,43)
    Dro<-c(93,6)
    
    
    
    fuma<-data.frame(lab,Fum)
    toma<-data.frame(lab,Tom)
    droga<-data.frame(lab,Dro)
    
    
    
    
    
    Fumador<- plot_ly(fuma, x = ~lab, y = ~Fum,
                      type = 'bar',
                      name = "Smoke",
                      marker = list(color = 'rgba(240,0,135,0.8)',
                                    line = list(color = 'rgb(144,0,81)',
                                                width = 1)))%>%
      
      layout( hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    
    Tomador<- plot_ly(toma, x = ~lab, y = ~Tom, type = 'bar',
                      name = "Consume alcoholic beverage",
                      marker = list(color = 'rgba(20,150,140,0.8)',
                                    line = list(color = 'rgb(12,90,84)',
                                                width = 1)))%>%
      layout(
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    Drogador<- plot_ly(droga, x = ~lab, y = ~Dro, type = 'bar',
                       name = "Consume drugs",
                       marker = list(color = 'rgba(210,150,40,0.8)',
                                     line = list(color = 'rgb(126,90,24)',
                                                 width = 1)))%>%
      layout(
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    
    
    final <- subplot(Fumador,Tomador,Drogador,widths = c(0.333,0.333,0.334),titleY = TRUE, titleX = TRUE, margin = 0.05 )
    
    
    annotations = list( 
      list( 
        x = 0.1,  
        y = 1.0,  
        text = "Smoke",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),  
      list( 
        x = 0.55,  
        y = 1,  
        text = "Consume any alcoholic beverage",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),
      list( 
        x = 0.9,  
        y = 1,  
        text = "Consume any drugs",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ))
    final <- final %>%layout(annotations = annotations)
  })
  
  output$FreqVaDentista_Plot <- renderPlotly({
    
    FreqVaDent<-table(Datos[88])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = FreqVaDent,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Make decisions to improve any aspect of life',
      fillcolor=rgb(85/255, 110/255, 45/255, alpha = 0.8),
      marker = list(color = rgb(51/255, 66/255, 27/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Frequency with which visit the dentist",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(FreqVaDent))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
  })
  
  output$MiedoAnsiDent_Plot <- renderPlotly({
    
    MiedAnsiDent<-table(Datos[91])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = MiedAnsiDent,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Make decisions to improve any aspect of life',
      fillcolor=rgb(255/255, 200/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(153/255, 120/255, 0/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Going to the dentist generates fear or anxiety",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(MiedAnsiDent))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
  })
  output$TranqConsDent_Plot <- renderPlotly({
    TankDent<-table(Datos[92])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = TankDent,
      theta = c('Nothing',#'Very little', 
                'Little','Barely', 'Something',
                'Moderately','Measuredly','Considerably', 'Much','Quite' ,'Too much'),
      name = 'Economic repercussion',
      fillcolor=rgb(0/255, 10/255, 45/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 6/255, 27/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Tranquility when being in consultation with the dentist",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(TankDent))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
    
  })
  output$EnfBuc_Plot <- renderPlotly({
    
    InfeBuc<- data.frame(table(Datos[98]))
    Inflab<-c('No','Yes')
    
    
    colors <- c('rgba(178,10,0,1)', 'rgba(0,10,45,1)')
    tx<-c('74 Have not had oral infections','25 Have had oral infections')
    
    plot_ly(InfeBuc, labels = Inflab, values = ~Freq, type = 'pie',
            textposition = 's',
            textinfo = 'label+percent',
            insidetextfont = list(color = '#FFFFFF'),
            hoverinfo = 'text',
            text = tx,
            marker = list(colors = colors,
                          line = list(color = '#FFFFFF', width = 1)))%>% 
      
      layout(hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        title = '',
        xaxis = list(showgrid = T, zeroline = FALSE, showticklabels = FALSE),
        yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
        annotations =       list( 
          x = 0.5,  
          y = 1,  
          text = "Infection due to oral disease",  
          xref = "paper",  
          yref = "paper",  
          xanchor = "center",  
          yanchor = "bottom",  
          showarrow = FALSE ))
    
  })
  output$ProtesisDent_Plot <- renderPlotly({
    ProtDent<- data.frame(table(Datos[99]))
    lProtDent<-c('No','Yes')
    
    
    colors <- c('rgba(240,0,135,1)', 'rgba(240,165,0,1)')
    tx<-c('70 Do not use dental prosthesis','23 Use dental prosthesis')
    
    plot_ly(ProtDent, labels = lProtDent, values = ~Freq, type = 'pie',
            textposition = 's',
            textinfo = 'label+percent',
            insidetextfont = list(color = '#FFFFFF'),
            hoverinfo = 'text',
            text = tx,
            marker = list(colors = colors,
                          line = list(color = '#FFFFFF', width = 1)))%>% 
      
      layout(hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        title = '',
        xaxis = list(showgrid = T, zeroline = FALSE, showticklabels = FALSE),
        yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
        annotations =       list( 
          x = 0.5,  
          y = 1,  
          text = "Use of dental prosthesis",  
          xref = "paper",  
          yref = "paper",  
          xanchor = "center",  
          yanchor = "bottom",  
          showarrow = FALSE ))
    
  })
  output$ConSalBucal_Plot <- renderPlotly({
    
    ConCuidBuc<-table(Datos[105])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = ConCuidBuc,
      theta = c('Appalling',# 'Lousy', 
                'Very bad', 
                'Bad','Regular', 'Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Consideration of physical figure',
      fillcolor=rgb(255/255, 95/255, 95/255, alpha = 0.8),
      marker = list(color = rgb(153/255, 57/255, 57/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Consideration of knowledge of oral health care",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(ConCuidBuc))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
    
    
  })
  
  output$CepDent <- renderPlotly({
    CepilladoDentalRecomen<-data.frame(table(Datos[127]))
    Ceplab<-c( 'Once','Twice','Two to three times','Three times')
    CepDenVec<-c(1,8,1,88)
    CepDental <- data.frame(Ceplab, CepDenVec)
    CepDental$Ceplab <- factor(CepDental$Ceplab, levels = CepDental[["Ceplab"]])
    
    
    labHoraCepillarDientes<-c('Before every meal and before sleep','Before every meal','Before sleep')
    HoraCepillarDientesFreq<-c(10,87,2)
    CepDientesHora<-data.frame(labHoraCepillarDientes,HoraCepillarDientesFreq)
    
    VecesLavDientes<- plot_ly(CepDental, x = ~Ceplab, y = ~CepDenVec,
                              type = 'bar',
                              name = "Smoke",
                              marker = list(color = 'rgba(240,0,135,0.8)',
                                            line = list(color = 'rgb(144,0,81)',
                                                        width = 1)))%>%
      
      layout( hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    
    RecoCepDientes<- plot_ly(CepDientesHora, x = ~labHoraCepillarDientes, y = ~HoraCepillarDientesFreq, type = 'bar',
                             name = "Consume alcoholic beverage",
                             marker = list(color = 'rgba(20,150,140,0.8)',
                                           line = list(color = 'rgb(12,90,84)',
                                                       width = 1)))%>%
      layout(
        xaxis = list(title = ""),
        yaxis = list(title = ""),
        showlegend = F)
    
    
    
    final <- subplot(VecesLavDientes,RecoCepDientes,widths = c(0.5,0.5),titleY = TRUE, titleX = TRUE, margin = 0.05 )
    
    
    annotations = list( 
      list( 
        x = 0.22,  
        y = 1.0,  
        text = "Recommended times to brush your teeth",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),  
      list( 
        x = 0.8,  
        y = 1,  
        text = "When is it recommended to brush your teeth?",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ))
    final <- final %>%layout(annotations = annotations)
  })
  
  output$VisitDent <- renderPlotly({
    
    IrDentlab<-c( 'Once a year','Twice a year','Three times a year')
    IrDentFreq<-c(20,53,26)
    IrDen <- data.frame(IrDentlab, IrDentFreq)
    IrDen$IrDentlab <- factor(IrDen$IrDentlab, levels = IrDen[["IrDentlab"]])
    
    
    MasAfecEcolab<-c('Healing (Extraction)','Prevention (such as cleaning)','Rehabilitation (Prosthetics)')
    MasAfecEcofrq<-c(13,13,73)
    MasAfecEco<-data.frame(MasAfecEcolab,MasAfecEcofrq)
    
    IrDentVeces<- plot_ly(IrDen, x = ~IrDentlab, y = ~IrDentFreq,
                          type = 'bar',
                          name = "Smoke",
                          marker = list(color = 'rgba(255,100,0,0.8)',
                                        line = list(color = 'rgb(153,60,0)',
                                                    width = 1)))%>%
      
      layout( hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    
    AfecEcono<- plot_ly(MasAfecEco, x = ~MasAfecEcolab, y = ~MasAfecEcofrq, type = 'bar',
                        name = "Consume alcoholic beverage",
                        marker = list(color = 'rgba(75,255,0,0.8)',
                                      line = list(color = 'rgb(45,153,0)',
                                                  width = 1)))%>%
      layout(
        xaxis = list(title = ""),
        yaxis = list(title = ""),
        showlegend = F)
    
    
    
    final <- subplot(IrDentVeces,AfecEcono,widths = c(0.5,0.5),titleY = TRUE, titleX = TRUE, margin = 0.05 )
    
    
    annotations = list( 
      list( 
        x = 0.23,  
        y = 1.0,  
        text = "Visits to the dentist with a healthy oral health status",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),  
      list( 
        x = 0.85,  
        y = 1,  
        text = "Treatment most affects your economy",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ))
    final <- final %>%layout(annotations = annotations)
  })

#------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------

    output$a1 <- renderValueBox({
    valueBox(value = nrow(Datos) ,
             subtitle = "Population",
             icon = icon("users"),
             color = "blue")
  })
  
  output$b1 <- renderValueBox({
    Edd=data.frame(Datos[7])
    names(Edd)=c("Edad")
    
    EdadProm = round(mean(Edd$Edad))
    valueBox(value = EdadProm,
             subtitle = "Average Age",
             #subtitle = EdadProm,
             icon = icon(name = "calendar"),
             color = "blue")
    
  })
  
  output$c1 <- renderValueBox({
    EdoCivil<-data.frame(table(Datos[8]))
    valueBox(value = paste0("Married: ",EdoCivil$Freq[1],
                            " | ",
                            "Single: ",EdoCivil$Freq[3],
                            " | ",
                            " Divorced: ",EdoCivil$Freq[2],
                            " | ",
                            "Others: ",EdoCivil$Freq[4]
    ),
    #subtitle = table(Datos$`3.-¿Cuál es su estado civil? [Respuesta]`),
    subtitle = "Marital Status",
    
    
    
    icon = icon("fa-duotone fa-ring",lib = "font-awesome" ),
    color = "blue")
    
  })
  
  
  output$Dem_Plot1 <- renderPlotly({
    Hombres<- data.frame(filter(Datos,Datos[6] == "Masculino"))
    Mujeres<- data.frame(filter(Datos,Datos[6] == "Femenino"))
    names(Hombres)[7]="Edad"
    names(Mujeres)[7]="Edad"
    plot_ly(alpha=0.7,
            data = Mujeres,
            name = "Female",
            x = ~Edad,
            type = "histogram",
            nbinsx = 20,
            marker = list(color = "rgba(255, 45, 160, 0.7)",
                          line = list(color = "rgb(255, 45, 160)",
                                      width = 2))) %>%
      
      add_trace(data = Hombres,
                name = "Male",
                x = ~Edad,
                marker = list(color = "rgba(45, 160, 255, 0.7)",
                              line = list(color = "rgb(45, 160, 255)",
                                          width = 2))) %>%
      
      layout(hoverlabel = list(
        font = list(color ='rgb(0,0,0)')),
        barmode ="overlay",
        #bargap=0.1,
        xaxis = list(title = "Age"))
    
  })
  
  output$HabAlimen_Plot1 <- renderPlotly({
    AlimentosCaliricos<- table(Datos[106])
    AguaNatural<-table(Datos[107])
    BebidasDulces<-table(Datos[108])
    Embutidos<-table(Datos[109])
    Verduras<-table(Datos[110])
    Fruta<-table(Datos[111])
    Lacteos<-table(Datos[112])
    CarneRoja<-table(Datos[113])
    CarneBlanca<-table(Datos[114])
    Leguminosa<-table(Datos[115])
    Sal<-table(Datos[116])
    ComidaRapida<-table(Datos[119])
    
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = AlimentosCaliricos,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'High calorie food',
      fillcolor=rgb(255/255, 255/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(200/255, 200/255, 0/255, alpha = 1),
                    symbol = "pentagon") 
      
    )%>%add_trace(
      r = AguaNatural,
      theta = c(#'Never','Hardly ever',
        'Rarely','Seldom',  
        'Occasionally', 'Sometimes','Often','Frequently',
        'Generally','Usually','Always'),
      name = 'Natural water',
      fillcolor=rgb(0/255, 120/255, 255/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 90/255, 200/255, alpha = 1)) 
      
    )%>%add_trace(
      r = BebidasDulces,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually'),#'Always'),
      name = 'Sweet drinks',
      fillcolor=rgb(175/255, 0/255, 255/255, alpha = 0.8),
      marker = list(color = rgb(140/255, 0/255, 200/255, alpha = 1))
      
    )%>%add_trace(
      r = Embutidos,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Sausages',
      fillcolor=rgb(255/255, 90/255, 90/255, alpha = 0.8),
      marker = list(color = rgb(200/255, 70/255, 70/255, alpha = 1))
      
    )%>%add_trace(
      r = Verduras,
      theta = c('Never',#'Hardly ever',
                'Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Vegetables',
      fillcolor=rgb(0/255, 255/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 200/255, 0/255, alpha = 1))
      
    )%>%add_trace(
      r = Fruta,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Fruits',
      fillcolor=rgb(5/255, 35/255, 85/255, alpha = 0.8),
      marker = list(color = rgb(4/255, 20/255, 60/255, alpha = 1))
      
    )%>%add_trace(
      r = Lacteos,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Dairy',
      fillcolor=rgb(0/255, 245/255, 255/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 190/255, 200/255, alpha = 1))
      
    )%>%add_trace(
      r = CarneRoja,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Red meat',
      fillcolor=rgb(0/255, 0/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(90/255, 90/255, 90/255, alpha = 1))
      
    )%>%add_trace(
      r = CarneBlanca,
      theta = c(#'Never',
        'Hardly ever','Rarely','Seldom',  
        'Occasionally', 'Sometimes','Often','Frequently',
        'Generally','Usually','Always'),
      name = 'White met',
      fillcolor=rgb(0/255, 255/255, 115/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 200/255, 90/255, alpha = 1))
      
    )%>%add_trace(
      r = Leguminosa,
      theta = c('Never',#'Hardly ever',
                'Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Legumes',
      fillcolor=rgb(252/255, 101/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(252/255, 101/255, 0/255, alpha = 1))
      
    )%>%add_trace(
      r = Sal,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Salt',
      
      fillcolor=rgb(84/255,139/255,84/255,0.8, alpha = 0.8),
      marker = list(color = rgb(50/255, 83/255, 50/255, alpha = 1))
    )%>%add_trace(
      r = ComidaRapida,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually'),#'Always'),
      name = 'Fast food',
      fillcolor=rgb(252/255, 0/255, 84/255, alpha = 0.8),
      marker = list(color = rgb(200/255, 0/255, 60/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Types of food eaten during the day",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.45, xanchor = 'center', yanchor =  'top'),
      margin=list(t=50),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(AlimentosCaliricos,AguaNatural,BebidasDulces,
                          Embutidos,Verduras,Fruta,Lacteos,
                          CarneRoja,CarneBlanca,Leguminosa,
                          Sal,ComidaRapida))
        )
      )
    )
  })
  
  
  output$Cus_Plot1 <- renderPlotly({
    TresComidas<-table(Datos[117])
    Colaciones<-table(Datos[118])
    ComeFamilia<-table(Datos[120])
    ComeVeTV<-table(Datos[121])
    HorariosAlim<-table(Datos[122])
    
    
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = TresComidas,
      theta = c('Never',#'Hardly ever',
                'Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Eats three times a day',
      fillcolor=rgb(255/255, 0/255, 65/255, alpha = 0.8),
      marker = list(color = rgb(200/255, 0/255, 50/255, alpha = 1))  
      
    )%>%add_trace(
      r = Colaciones,
      theta = c('Never',#'Hardly ever',
                'Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Eats snacks between meals',
      fillcolor=rgb(252/255, 101/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(200/255, 80/255, 0/255, alpha = 1))
      
    )%>%add_trace(
      r = ComeFamilia,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Eats as a family',
      fillcolor=rgb(5/255, 165/255, 190/255, alpha = 0.8),
      marker = list(color = rgb(4/255, 130/255, 150/255, alpha = 1))
      
    )%>%add_trace(
      r = ComeVeTV,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Eats while watching TV',
      fillcolor=rgb(120/255, 110/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(90/255, 80/255, 0/255, alpha = 1))
      
    )%>%add_trace(
      r = HorariosAlim,
      theta = c('Never',#'Hardly ever',
                'Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Has meal times',
      fillcolor=rgb(175/255, 0/255, 255/255, alpha = 0.8),
      marker = list(color = rgb(140/255, 0/255, 200/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Customs related to food",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.45, xanchor = 'center', yanchor =  'top'),
      margin=list(t=50),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(TresComidas,Colaciones,ComeFamilia,
                          ComeVeTV,HorariosAlim))
        )
      )
    )
    
  })
  
  
  output$Econ_Plot1 <- renderPlotly({
    
    Dinero <- c(' $700-1200', '$1400-2400', '$2800-4800','More than $5000')
    yquin <- c(5, 14, 34, 43)
    ymen<- c(5, 24, 37,32)
    Ayo<-c('No','Yes')
    AyoFrq<-c(87,13)
    
    
    Quince<-data.frame(Dinero,yquin)
    Mensual<- data.frame(Dinero,ymen)
    Apoyo<- data.frame(Ayo,AyoFrq)
    
    
    
    
    IngresosQin<- plot_ly(Quince, x = ~Dinero, y = ~yquin,
                          type = 'bar',
                          name = "Biweekly Income",
                          marker = list(color = 'rgba(30,170,30,0.8)',
                                        line = list(color = 'rgb(18,102,18)',
                                                    width = 1)))%>%
      
      layout( hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    
    EgresosMen<- plot_ly(Mensual, x = ~Dinero, y = ~ymen, type = 'bar',
                         name = "Monthly expenses",
                         marker = list(color = 'rgba(255,50,50,0.8)',
                                       line = list(color = 'rgb(150,50,50)',
                                                   width = 1)))%>%
      layout(
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    ApoyoExtra<- plot_ly(Apoyo, x = ~Ayo, y = ~AyoFrq, type = 'bar',
                         name = "Economic support",
                         marker = list(color = 'rgba(50,50,255,0.8)',
                                       line = list(color = 'rgb(50,50,255)',
                                                   width = 1)))%>%
      layout(
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    
    
    final <- subplot(IngresosQin,EgresosMen,ApoyoExtra,widths = c(0.4,0.4,0.2),titleY = TRUE, titleX = TRUE, margin = 0.05 )
    
    
    annotations = list( 
      list( 
        x = 0.2,  
        y = 1.0,  
        text = "Biweekly Economic Income (In MXN)",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),  
      list( 
        x = 0.6,  
        y = 1,  
        text = "Monthly Economic Expenses (In MXN) ",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),
      list( 
        x = 0.95,  
        y = 1,  
        text = "Receive Economic Support",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ))
    
    final <- final %>%layout(annotations = annotations) 
    
    
  })
  
  
  output$Loca_Plot1 <- renderPlotly({
    
    Estado<-data.frame(table(Datos[4]))
    
    plot_ly(Estado, x = ~Var1, y = ~Freq,
            type = 'bar',
            name = "",
            marker = list(color = 'rgba(120,110,0,0.8)',
                          line = list(color = 'rgb(60,55,0)',
                                      width = 1)))%>%
      
      layout( hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        title = '',
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
  })
  
  output$Region_Plot1 <- renderPlotly({
    region<- data.frame(table(Datos[5]))
    View(region)
    Rlab<-c('Semi-urban','Rural', 'Urban')
    colors <- c('rgba(255,106,106,1)', 'rgba(205,105,200,1)', 'rgba(205,16,118,1)')
    
    plot_ly(region, labels = Rlab, values = ~Freq, type = 'pie',
            textposition = 's',
            textinfo = 'label+percent',
            insidetextfont = list(color = '#FFFFFF'),
            hoverinfo = 'text',
            text = ~paste( Freq,' ',Rlab ,' people'),
            marker = list(colors = colors,
                          line = list(color = '#FFFFFF', width = 1)))%>% 
      #The 'pull' attribute can also be used to create space between the sectors
      #showlegend = FALSE)%>% 
      layout(hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        title = '',
        xaxis = list(showgrid = T, zeroline = FALSE, showticklabels = FALSE),
        yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
    
    
    
  })
  
  output$Ocu_Plot1 <- renderPlotly({
    
    #ocupacion<- data.frame(table(Datos[10]))
    x<-c('Study', 'Study, Work', 'Work',
         'Work, Retired',' Retired'
    )
    y<-c(34,13,46,1,2)
    
    
    ocupacion <- data.frame(x, y)
    
    #The default order will be alphabetized unless specified as below:
    ocupacion$x <- factor(ocupacion$x, levels = ocupacion[["x"]])
    
    
    plot_ly(ocupacion, x = ~x, y = ~y,
            type = 'bar',
            name = "",
            marker = list(color = 'rgba(150,0,200,0.8)',
                          line = list(color = 'rgb(90,0,120)',
                                      width = 1)))%>%
      
      layout( xaxis = list(title = ""),
              yaxis = list(title = ""))
    
  })
  
  #
  output$DatosCasa_Plot1 <- renderPlotly({
    
    Cas<-data.frame(table(Datos[24]))
    Habit<- data.frame(table(Datos[23]))
    Integ<- data.frame(table(Datos[22])) 
    
    
    Caslab<-c('Borrowed ','Owned','Rented')
    
    Casa<- plot_ly(Cas, x = Caslab, y = ~Freq,
                   hovertext = ~paste0(Freq,', ',Caslab,' house'),
                   type = 'bar',
                   name = "Type of house",
                   marker = list(color = 'rgba(23,195,178,0.8)',
                                 line = list(color = 'rgb(13,117,106)',
                                             width = 1)))%>%
      
      layout( hoverlabel = list(
        font = list(color ='rgb(0,0,0)')),
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    
    Habitaciones<- plot_ly(Habit, x = ~Var1, y = ~Freq, type = 'bar',
                           name = "Number of rooms",
                           hovertext = ~paste0(Var1,' Rooms in the house'),
                           marker = list(color = 'rgba(242,100,25,0.8)',
                                         line = list(color = 'rgb(145,60,15)',
                                                     width = 1)))%>%
      layout(
        #hoverlabel = list(
        #  font = list(color ='rgb(255,0,0)')),
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    Integrantes<- plot_ly(Integ, x = ~Var1, y = ~Freq, type = 'bar',
                          name = "Number of people",
                          hovertext = ~paste0(Var1,' People living at home'),
                          marker = list(color = 'rgba(255,99,146,0.8)',
                                        line = list(color = 'rgb(153,59,87)',
                                                    width = 1)))%>%
      layout(
        #hoverlabel = list(
        #  font = list(color ='rgb(0,0,0)')),
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    
    
    final <- subplot(Casa,Habitaciones,Integrantes,widths = c(0.25,0.45,0.3),titleY = TRUE, titleX = TRUE, margin = 0.05 )
    
    
    annotations = list( 
      list( 
        x = 0.1,  
        y = 1.0,  
        text = "Type of house: borrowed, rented, owned",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),  
      list( 
        x = 0.5,  
        y = 1,  
        text = "Number of rooms in the house ",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),
      list( 
        x = 0.9,  
        y = 1,  
        text = "Number of people living at home",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ))
    
    final <- final %>%layout(annotations = annotations) 
    
    
  })
  
  output$CalidadVida_Plot1 <- renderPlotly({
    
    agua<-table(Datos[25])
    drenaje<-table(Datos[26])
    electricidad<-table(Datos[27])
    
    
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = agua,
      theta = c('Appalling', #'Lousy', 'Very bad', 
                'Bad','Regular', 'Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Running water',
      fillcolor=rgb(1/255, 255/255, 141/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 153/255, 84/255, alpha = 1))  
      
    )%>%add_trace(
      r = drenaje,
      theta = c(#'Appalling', 'Lousy', 'Very bad','Bad',
        'Regular','Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Drainage',
      fillcolor=rgb(255/255, 139/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(153/255, 83/255, 0/255, alpha = 1))
      
      
    )%>%add_trace(
      r = electricidad,
      theta = c(#'Appalling', 'Lousy', 'Very bad', 'Bad','Regular',
        'Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Electricity',
      fillcolor=rgb(140/255, 0/255, 255/255, alpha = 0.8),
      marker = list(color = rgb(84/255, 0/255, 153/255, alpha = 1))
      
    )%>%layout(
      annotations =       list( 
        x = 0.6,  
        y = 1,  
        text = "Consideration of service quality",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(agua,drenaje,electricidad))#,drenaje,electricidad))
        )
      ),
      margin=list(t=50,b=50,l=70,r=70)
    )
    
  })
  
  output$CalidadVidaPerso_Plot1 <- renderPlotly({
    
    Calper<-table(Datos[80])
    Telefono<-table(Datos[31])
    
    
    
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = Calper,
      theta = c(#'Appalling', 'Lousy', 'Very bad','Bad',
        'Regular','Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Personal Quality of Life',
      fillcolor=rgb(255/255, 215/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(153/255, 129/255, 0/255, alpha = 1))
      
      
      
    )%>%layout(
      title = list(text = "Perception of personal quality of life",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(Calper))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
    
  })
  
  output$HomServ_Plot1 <- renderPlotly({
    
    Internet<-table(Datos[29])
    Cable<-table(Datos[30])
    Telefono<-table(Datos[31])
    
    
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = Telefono,
      theta = c('Appalling', 'Lousy', 'Very bad', 'Bad','Regular',
                'Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Telephone',
      fillcolor=rgb(76/255, 95/255, 42/255, alpha = 0.8),
      marker = list(color = rgb(45/255, 57/255, 25/255, alpha = 1))
    )%>%add_trace(
      r = Internet,
      theta = c(#'Appalling', 'Lousy', 
        'Very bad', 
        'Bad','Regular', 'Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Internet',
      fillcolor=rgb(214/255, 33/255, 124/255, alpha = 0.8),
      marker = list(color = rgb(128/255, 19/255, 74/255, alpha = 1))  
      
    )%>%add_trace(
      r = Cable,
      theta = c('Appalling', 'Lousy', 'Very bad',#'Bad',
                'Regular','Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Cable',
      fillcolor=rgb(0/255, 152/255, 211/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 91/255, 126/255, alpha = 1))
      
      
      
    )%>%layout(
      title = list(text = "Consideration of service quality",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.45, xanchor = 'center', yanchor =  'top'),
      margin=list(t=50),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(Telefono,Cable,Internet))#,drenaje,electricidad))
        )
      )
    )
    
  })
  output$Educa_Plot1 <- renderPlotly({
    Educa<- data.frame(table(Datos[38]))
    Elab<-c('No','Yes')
    
    
    colors <- c('rgba(241,69,53,1)', 'rgba(16,124,65,1)')
    tx<-c('2 Without public education institutions','98 With public education institutions')
    
    plot_ly(Educa, labels = Elab, values = ~Freq, type = 'pie',
            textposition = 's',
            textinfo = 'label+percent',
            insidetextfont = list(color = '#FFFFFF'),
            hoverinfo = 'text',
            text = tx,
            marker = list(colors = colors,
                          line = list(color = '#FFFFFF', width = 1)))%>% 
      
      layout(hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        title = '',
        xaxis = list(showgrid = T, zeroline = FALSE, showticklabels = FALSE),
        yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
        annotations =       list( 
          x = 0.5,  
          y = 1,  
          text = "Localities with public education institutions",  
          xref = "paper",  
          yref = "paper",  
          xanchor = "center",  
          yanchor = "bottom",  
          showarrow = FALSE ))
  })
  
  
  output$ServPubli_Plot1 <- renderPlotly({
    TransporteUrbano<-table(Datos[35])
    Recreacion<-table(Datos[37])
    instEducativas<-table(Datos[39])
    Biblotecas<-table(Datos[40])
    ObrasPublicas<-table(Datos[41])
    
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = TransporteUrbano,
      theta = c('Appalling', 'Lousy', 'Very bad', 'Bad','Regular',
                'Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Urban transport',
      fillcolor=rgb(50/255, 50/255, 50/255, alpha = 0.8),
      marker = list(color = rgb(35/255, 35/255, 35/255, alpha = 1))
    )%>%add_trace(
      r = Recreacion,
      theta = c('Appalling', 'Lousy', 
                'Very bad', 
                'Bad','Regular', 'Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Recreation spaces',
      fillcolor=rgb(127/255, 255/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(76/255, 153/255, 0/255, alpha = 1))  
      
    )%>%add_trace(
      r = Biblotecas,
      theta = c('Appalling', 'Lousy', 'Very bad','Bad',
                'Regular','Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Libraries',
      fillcolor=rgb(0/255, 154/255, 205/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 92/255, 123/255, alpha = 1))
      
    )%>%add_trace(
      r = ObrasPublicas,
      theta = c('Appalling', 'Lousy', 
                'Very bad', 
                'Bad','Regular', 'Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Public works',
      fillcolor=rgb(255/255, 185/255, 15/255, alpha = 0.8),
      marker = list(color = rgb(153/255, 111/255, 9/255, alpha = 1))  
      
    )%>%add_trace(
      r = instEducativas,
      theta = c(#'Appalling', 'Lousy', 'Very bad',
        'Bad',#'Regular',
        'Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Educational institutions',
      fillcolor=rgb(200/255, 0/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(150/255, 0/255, 0/255, alpha = 1))
      
      
    )%>%layout(
      title = list(text = "Consideration of service quality",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.45, xanchor = 'center', yanchor =  'top'),
      margin=list(t=50),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(TransporteUrbano,Recreacion,instEducativas,
                          Biblotecas,ObrasPublicas))
        )
      )
    ) 
  })
  
  output$PubHealthServ_Plot1 <- renderPlotly({
    
    x<-c('IMMS','IMMS, ISSTE','IMMS, ISSTE , Other','IMMS, ISSTE , SSZ','IMMS, ISSTE , SSZ , Other',
         'IMMS, Other','IMMS, SSZ','ISSTE','ISSTE , Other','ISSTE , SSZ','SSZ','SSZ , Other',
         'Other','None')
    y<-c(22,9,3,18,3,2,4,9,1,2,7,1,14,5)
    
    
    insalud <- data.frame(x, y)
    
    #The default order will be alphabetized unless specified as below:
    insalud$x <- factor(insalud$x, levels = insalud[["x"]])
    
    
    saludinsti<-plot_ly(insalud, x = ~x, y = ~y,
                        type = 'bar',
                        name = "",
                        marker = list(color = 'rgba(127,255,0,0.8)',
                                      line = list(color = 'rgb(76,153,0)',
                                                  width = 1)))%>%
      
      layout( xaxis = list(title = ""),
              yaxis = list(title = ""))
    
    calservsalud<-data.frame(table(Datos[44]))
    
    
    
    xx<-c(
      'Appalling', 'Lousy', 'Very bad','Bad',
      'Regular','Acceptable', 'Good', 'Very good', 
      'Great','Extraordinary', 'Excellent')
    yy<-c(1,1,3,1,7,9,9,24,21,9,4)
    
    
    insalud <- data.frame(xx, yy)
    
    #The default order will be alphabetized unless specified as below:
    insalud$xx <- factor(insalud$xx, levels = insalud[["xx"]])
    
    
    calservsal<-plot_ly(insalud, x = ~xx, y = ~yy,
                        type = 'bar',
                        name = "",
                        marker = list(color = 'rgba(0,255,255,0.8)',
                                      line = list(color = 'rgb(0,153,153)',
                                                  width = 1)))%>%
      
      layout( xaxis = list(title = ""),
              yaxis = list(title = ""),
              showlegend = F)
    
    
    final <- subplot(saludinsti,calservsal,widths = c(0.6,0.4),titleY = TRUE, titleX = TRUE, margin = 0.05 )
    
    
    annotations = list( 
      list( 
        x = 0.3,  
        y = 1.0,  
        text = "Health institutions that exist",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),
      list( 
        x = 0.85,  
        y = 1,  
        text = "Quality of service provided by health institutions",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ))
    
    final <- final %>%layout(annotations = annotations)
    final
  })
  
  ###
  output$PubHealthServ2_Plot1 <- renderPlotly({
    
    
    Freqs<-data.frame(table(Datos[45]))
    
    xxx<-c(
      'Never','Hardly ever','Rarely','Seldom',  
      'Occasionally', 'Sometimes','Often','Frequently',
      'Generally','Usually')
    yyy<-c(5,10,17,9,5,14,10,9,9,5)
    
    
    Freqs <- data.frame(xxx, yyy)
    
    #The default order will be alphabetized unless specified as below:
    Freqs$xxx <- factor(Freqs$xxx, levels = Freqs[["xxx"]])
    
    
    freqsalu<-plot_ly(Freqs, x = ~xxx, y = ~yyy,
                      type = 'bar',
                      name = "",
                      marker = list(color = 'rgba(46,139,87,0.8)',
                                    line = list(color = 'rgb(27,83,52)',
                                                width = 1)))%>%
      
      layout( xaxis = list(title = ""),
              yaxis = list(title = ""))
    freqsalu  
    
    
    
    
    servsoli<-data.frame(table(Datos[46]))
    
    
    
    xxxx<-c(
      'Curative','Curative, specialized medicine','Curative, Rehabilitation',
      'Specialized medicine','Preventive','Preventive, Curative','Rehabilitation')
    yyyy<-c(32,1,2,5,28,12,6)
    
    
    sersolicitado <- data.frame(xxxx, yyyy)
    
    #The default order will be alphabetized unless specified as below:
    sersolicitado$xxxx <- factor(sersolicitado$xxxx, levels = sersolicitado[["xxxx"]])
    
    
    ss<-plot_ly(sersolicitado, x = ~xxxx, y = ~yyyy,
                type = 'bar',
                name = "",
                marker = list(color = 'rgba(71,60,139,0.8)',
                              line = list(color = 'rgb(42,36,83)',
                                          width = 1)))%>%
      
      layout( xaxis = list(title = ""),
              yaxis = list(title = ""),
              showlegend = F)
    
    final <- subplot(freqsalu,ss,widths = c(0.6,0.4),titleY = TRUE, titleX = TRUE, margin = 0.05 )
    
    
    annotations = list( 
      list( 
        x = 0.3,  
        y = 1.0,  
        text = "Frequency with which you attend the health service",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),
      list( 
        x = 0.8,  
        y = 1,  
        text = "Solicited service",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ))
    
    final <- final %>%layout(annotations = annotations)
    final
  })
  
  output$PubHealthSerDental_Plot1 <- renderPlotly({
    
    SerDen<- data.frame(table(Datos[49]))
    Dlab<-c('Unknown','No', 'Yes')
    colors <- c('rgba(205,173,0,1)', 'rgba(255,48,48,1)', 'rgba(104,34,139,1)')
    tx<-c('17 People do not know if they have dental service or not','34 people do not have dental service ',
          '39 people have dental service')
    
    sk<-plot_ly(SerDen, labels = Dlab, values = ~Freq, type = 'pie',
                textposition = 's',
                textinfo = 'label+percent',
                insidetextfont = list(color = '#FFFFFF'),
                hoverinfo = 'text',
                text = tx,
                marker = list(colors = colors,
                              line = list(color = '#FFFFFF', width = 1)))%>% 
      #The 'pull' attribute can also be used to create space between the sectors
      #showlegend = FALSE)%>% 
      layout(hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        title = '',
        xaxis = list(showgrid = T, zeroline = FALSE, showticklabels = FALSE),
        yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
        annotations =       list( 
          x = 0.5,  
          y = 1,  
          text = "The Institution Provides dental services",  
          xref = "paper",  
          yref = "paper",  
          xanchor = "center",  
          yanchor = "bottom",  
          showarrow = FALSE ))
  })
  output$PubDentalqual_Plot1 <- renderPlotly({
    
    denqual<-table(Datos[50])
    
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = denqual,
      theta = c('Appalling', 'Lousy', 'Very bad','Bad',
                'Regular','Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Quality of dental service',
      fillcolor=rgb(255/255, 140/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(153/255, 84/255, 0/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Quality of dental service that receive",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(denqual))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
    
  })
  
  
  output$PubDentalserv_Plot1 <- renderPlotly({
    
    servsoli<-data.frame(table(Datos[51]))
    xxxx<-c(
      'Curative','Preventive','Preventive, Curative','Preventive, Curative, Rehabilitation',
      'Rehabilitation')
    yyyy<-c(26,20,9,2,4)
    
    
    sersolicitado <- data.frame(xxxx, yyyy)
    
    #The default order will be alphabetized unless specified as below:
    sersolicitado$xxxx <- factor(sersolicitado$xxxx, levels = sersolicitado[["xxxx"]])
    
    
    ss<-plot_ly(sersolicitado, x = ~xxxx, y = ~yyyy,
                type = 'bar',
                name = "",
                marker = list(color = 'rgba(255,20,147,0.8)',
                              line = list(color = 'rgb(153,12,88)',
                                          width = 1)))%>%
      
      layout( title = list(text = "Solicited service",
                           font = list(
                             family = "Open Sans, verdana, arial, sans-serif",
                             size = 12,
                             color = "rgb(68,68,68)"),
                           y = 0.98, 
                           x = 0.5, xanchor = 'center', yanchor =  'top'),
              xaxis = list(title = ""),
              yaxis = list(title = ""))
  })
  
  output$PrivDentServ_Plot1 <- renderPlotly({
    
    PrivServ<- data.frame(table(Datos[52]))
    Elab<-c('No','Yes')
    
    
    colors <- c('rgba(200,64,64,1)', 'rgba(110,139,61,1)')
    tx<-c('14 Without private dental service','85 With private dental service')
    
    plot_ly(PrivServ, labels = Elab, values = ~Freq, type = 'pie',
            textposition = 's',
            textinfo = 'label+percent',
            insidetextfont = list(color = '#FFFFFF'),
            hoverinfo = 'text',
            text = tx,
            marker = list(colors = colors,
                          line = list(color = '#FFFFFF', width = 1)))%>% 
      
      layout(hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        title = '',
        xaxis = list(showgrid = T, zeroline = FALSE, showticklabels = FALSE),
        yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
        annotations =       list( 
          x = 0.5,  
          y = 1,  
          text = "Localities with private dental service",  
          xref = "paper",  
          yref = "paper",  
          xanchor = "center",  
          yanchor = "bottom",  
          showarrow = FALSE ))
    
    
    
  })
  
  output$PrivDentQual_Plot1 <- renderPlotly({
    
    privdenqual<-table(Datos[53])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = privdenqual,
      theta = c(#'Appalling', 'Lousy', 'Very bad',
        'Bad','Regular','Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Quality of private dental service',
      fillcolor=rgb(125/255, 255/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(75/255, 153/255, 0/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Quality of private dental service that receive",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(privdenqual))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
  })
  
  output$PrivDentEcono_Plot1 <- renderPlotly({
    repEco<-table(Datos[54])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = repEco,
      theta = c('Nothing',#'Very little', 
                'Little','Barely', 'Something',
                'Moderately','Measuredly','Considerably', 'Much','Quite' ,'Too much'),
      name = 'Economic repercussion',
      fillcolor=rgb(255/255, 130/255, 80/255, alpha = 0.8),
      marker = list(color = rgb(153/255, 78/255, 48/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Economic repercussion of using a private dental service",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(repEco))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
  })
  
  output$Percfisica_Plot1 <- renderPlotly({
    
    
    Saludfisica<-table(Datos[55])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = Saludfisica,
      theta = c(#'Appalling', 'Lousy', 'Very bad',
        'Bad','Regular','Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Perception of physical well-being',
      fillcolor=rgb(75/255, 0/255, 130/255, alpha = 0.8),
      marker = list(color = rgb(45/255, 0/255, 78/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Perception of physical well-being",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(Saludfisica))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
  })
  output$Actdep_Plot1 <- renderPlotly({
    ActFisica<-table(Datos[84])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = ActFisica,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Frequency with which you perform physical activity',
      fillcolor=rgb(255/255, 0/255, 255/255, alpha = 0.8),
      marker = list(color = rgb(153/255, 0/255, 153/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Frequency with which you perform physical activity",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(ActFisica))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
    
  })
  
  output$FigFisica_Plot1 <- renderPlotly({
    
    
    FiFisi<-table(Datos[84])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = FiFisi,
      theta = c('Appalling', 'Lousy', 'Very bad', 
                'Bad','Regular', 'Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Consideration of physical figure',
      fillcolor=rgb(220/255, 20/255, 60/255, alpha = 0.8),
      marker = list(color = rgb(132/255, 12/255, 36/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Consideration of physical figure",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(FiFisi))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
  })
  
  output$Plen_Plot1 <- renderPlotly({
    Plen<-table(Datos[64])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = Plen,
      theta = c(#'Appalling', 'Lousy', 'Very bad', 
        'Bad','Regular', 'Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Consideration of fullness',
      fillcolor=rgb(200/255, 200/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(120/255, 120/255, 0/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Consideration of fullness (personal balance, dignity, solidarity)",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(Plen))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
    
  })
  output$Tratamejorar_Plot1 <- renderPlotly({
    
    
    TratMej<-table(Datos[74])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = TratMej,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Make decisions to improve any aspect of life',
      fillcolor=rgb(250/255, 20/255, 50/255, alpha = 0.8),
      marker = list(color = rgb(150/255, 12/255, 30/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Make decisions to improve any aspect of life",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(TratMej))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
  })
  
  output$Emocion_Plot1 <- renderPlotly({
    Emocional<-table(Datos[59])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = Emocional,
      theta = c(#'Appalling', 
        'Lousy', 'Very bad', 
        'Bad','Regular', 'Acceptable', 'Good', 'Very good', 
        'Great','Extraordinary', 'Excellent'),
      name = 'Consideration of emotional state',
      fillcolor=rgb(0/255, 200/255, 200/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 120/255, 120/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Consideration of emotional state",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(Emocional))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
  })
  
  
  output$ApSalbucal_Plot1 <- renderPlotly({
    
    ApaBucal<-table(Datos[71])
    Salbuc<-table(Datos[103])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = ApaBucal,
      theta = c('Appalling', 'Lousy', 'Very bad',
                'Bad','Regular','Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Oral appearance',
      fillcolor=rgb(0/255, 10/255, 90/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 6/255, 54/255, alpha = 1))
      
    )%>%add_trace(
      r = Salbuc,
      theta = c('Appalling', 'Lousy', 'Very bad',
                'Bad','Regular','Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Oral health',
      fillcolor=rgb(50/255, 220/255, 145/255, alpha = 0.8),
      marker = list(color = rgb(30/255, 132/255, 87/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Cosidetation of appearance and oral health",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(ApaBucal,Salbuc))
        )
      ),
      margin=list(t=50,b=50,l=70,r=70)
    )
    
  })
  
  output$InsAtrBucal_Plot1 <- renderPlotly({
    
    IncorBuc<-table(Datos[79])
    IncorformidadDenta<-c(
      'Tooth absence','Colour','Shape','Shape, Color','Shape, Size',
      'Shape, Size, Color','Shape, Size, Color, Use of prostheses',
      'Shape, Size, Color, Use of prosthesis, Dental absence',
      'Shape, Use of prosthesis, Dental absence','Size','Size, Color',
      'Use of prostheses, Dental absence')
    Frecue<-c(4,33,19,7,4,4,1,1,1,6,2,1)
    
    
    AtrIncDent <- data.frame(IncorformidadDenta, Frecue)
    plot_ly(AtrIncDent, x = ~IncorformidadDenta, y = ~Frecue,
            type = 'bar',
            name = "",
            marker = list(color = 'rgba(80,0,40,0.8)',
                          line = list(color = 'rgb(48,0,24)',
                                      width = 1)))%>%
      
      layout( title = list(text = "Disagreement with some attribute of the teeth",
                           font = list(
                             family = "Open Sans, verdana, arial, sans-serif",
                             size = 12,
                             color = "rgb(68,68,68)"),
                           y = 0.98, 
                           x = 0.5, xanchor = 'center', yanchor =  'top'),
              xaxis = list(title = ""),
              yaxis = list(title = ""))
    
    
  })
  output$EnfCronic_Plot1 <- renderPlotly({
    
    EnfCron<- data.frame(table(Datos[81]))
    Cron<-c('No','Yes')
    CronFrq<-c(86,13)
    
    
    Apoyo<- data.frame(Cron,CronFrq)
    ApoyoExtra<- plot_ly(Apoyo, x = ~Cron, y = ~CronFrq, type = 'bar',
                         name = "",
                         marker = list(color = 'rgba(255,50,0,0.8)',
                                       line = list(color = 'rgb(153,30,0)',
                                                   width = 1)))%>%
      layout(
        title = list(text = "Have any chronic disease",
                     font = list(
                       family = "Open Sans, verdana, arial, sans-serif",
                       size = 12,
                       color = "rgb(68,68,68)"),
                     y = 0.98, 
                     x = 0.5, xanchor = 'center', yanchor =  'top'),
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    ApoyoExtra
    
    
  })
  
  output$MalosHabit_Plot1 <- renderPlotly({
    lab<-c('No','Yes')
    Fum<-c(91,9)
    Tom<-c(57,43)
    Dro<-c(93,6)
    
    
    
    fuma<-data.frame(lab,Fum)
    toma<-data.frame(lab,Tom)
    droga<-data.frame(lab,Dro)
    
    
    
    
    
    Fumador<- plot_ly(fuma, x = ~lab, y = ~Fum,
                      type = 'bar',
                      name = "Smoke",
                      marker = list(color = 'rgba(240,0,135,0.8)',
                                    line = list(color = 'rgb(144,0,81)',
                                                width = 1)))%>%
      
      layout( hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    
    Tomador<- plot_ly(toma, x = ~lab, y = ~Tom, type = 'bar',
                      name = "Consume alcoholic beverage",
                      marker = list(color = 'rgba(20,150,140,0.8)',
                                    line = list(color = 'rgb(12,90,84)',
                                                width = 1)))%>%
      layout(
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    Drogador<- plot_ly(droga, x = ~lab, y = ~Dro, type = 'bar',
                       name = "Consume drugs",
                       marker = list(color = 'rgba(210,150,40,0.8)',
                                     line = list(color = 'rgb(126,90,24)',
                                                 width = 1)))%>%
      layout(
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    
    
    final <- subplot(Fumador,Tomador,Drogador,widths = c(0.333,0.333,0.334),titleY = TRUE, titleX = TRUE, margin = 0.05 )
    
    
    annotations = list( 
      list( 
        x = 0.1,  
        y = 1.0,  
        text = "Smoke",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),  
      list( 
        x = 0.55,  
        y = 1,  
        text = "Consume any alcoholic beverage",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),
      list( 
        x = 0.9,  
        y = 1,  
        text = "Consume any drugs",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ))
    final <- final %>%layout(annotations = annotations)
  })
  
  output$FreqVaDentista_Plot1 <- renderPlotly({
    
    FreqVaDent<-table(Datos[88])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = FreqVaDent,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Make decisions to improve any aspect of life',
      fillcolor=rgb(255/255, 0/255, 100/255, alpha = 0.8),
      marker = list(color = rgb(156/255, 0/255, 60/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Frequency with which visit the dentist",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(FreqVaDent))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
  })
  
  output$MiedoAnsiDent_Plot1 <- renderPlotly({
    
    MiedAnsiDent<-table(Datos[91])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = MiedAnsiDent,
      theta = c('Never','Hardly ever','Rarely','Seldom',  
                'Occasionally', 'Sometimes','Often','Frequently',
                'Generally','Usually','Always'),
      name = 'Make decisions to improve any aspect of life',
      fillcolor=rgb(255/255, 200/255, 0/255, alpha = 0.8),
      marker = list(color = rgb(153/255, 120/255, 0/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Going to the dentist generates fear or anxiety",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(MiedAnsiDent))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
  })
  output$TranqConsDent_Plot1 <- renderPlotly({
    TankDent<-table(Datos[92])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = TankDent,
      theta = c('Nothing',#'Very little', 
                'Little','Barely', 'Something',
                'Moderately','Measuredly','Considerably', 'Much','Quite' ,'Too much'),
      name = 'Economic repercussion',
      fillcolor=rgb(0/255, 10/255, 45/255, alpha = 0.8),
      marker = list(color = rgb(0/255, 6/255, 27/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Tranquility when being in consultation with the dentist",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(TankDent))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
    
  })
  output$EnfBuc_Plot1 <- renderPlotly({
    
    InfeBuc<- data.frame(table(Datos[98]))
    Inflab<-c('No','Yes')
    
    
    colors <- c('rgba(178,10,0,1)', 'rgba(0,10,45,1)')
    tx<-c('74 Have not had oral infections','25 Have had oral infections')
    
    plot_ly(InfeBuc, labels = Inflab, values = ~Freq, type = 'pie',
            textposition = 's',
            textinfo = 'label+percent',
            insidetextfont = list(color = '#FFFFFF'),
            hoverinfo = 'text',
            text = tx,
            marker = list(colors = colors,
                          line = list(color = '#FFFFFF', width = 1)))%>% 
      
      layout(hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        title = '',
        xaxis = list(showgrid = T, zeroline = FALSE, showticklabels = FALSE),
        yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
        annotations =       list( 
          x = 0.5,  
          y = 1,  
          text = "Infection due to oral disease",  
          xref = "paper",  
          yref = "paper",  
          xanchor = "center",  
          yanchor = "bottom",  
          showarrow = FALSE ))
    
  })
  output$ProtesisDent_Plot1 <- renderPlotly({
    ProtDent<- data.frame(table(Datos[99]))
    lProtDent<-c('No','Yes')
    
    
    colors <- c('rgba(240,0,135,1)', 'rgba(240,165,0,1)')
    tx<-c('70 Do not use dental prosthesis','23 Use dental prosthesis')
    
    plot_ly(ProtDent, labels = lProtDent, values = ~Freq, type = 'pie',
            textposition = 's',
            textinfo = 'label+percent',
            insidetextfont = list(color = '#FFFFFF'),
            hoverinfo = 'text',
            text = tx,
            marker = list(colors = colors,
                          line = list(color = '#FFFFFF', width = 1)))%>% 
      
      layout(hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        title = '',
        xaxis = list(showgrid = T, zeroline = FALSE, showticklabels = FALSE),
        yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
        annotations =       list( 
          x = 0.5,  
          y = 1,  
          text = "Use of dental prosthesis",  
          xref = "paper",  
          yref = "paper",  
          xanchor = "center",  
          yanchor = "bottom",  
          showarrow = FALSE ))
    
  })
  output$ConSalBucal_Plot1 <- renderPlotly({
    
    ConCuidBuc<-table(Datos[105])
    plot_ly(
      type = 'scatterpolar',
      fill = 'toself',
      mode = 'markers',
      
    )%>%add_trace(
      r = ConCuidBuc,
      theta = c('Appalling',# 'Lousy', 
                'Very bad', 
                'Bad','Regular', 'Acceptable', 'Good', 'Very good', 
                'Great','Extraordinary', 'Excellent'),
      name = 'Consideration of physical figure',
      fillcolor=rgb(255/255, 95/255, 95/255, alpha = 0.8),
      marker = list(color = rgb(153/255, 57/255, 57/255, alpha = 1))
      
    )%>%layout(
      title = list(text = "Consideration of knowledge of oral health care",
                   font = list(
                     family = "Open Sans, verdana, arial, sans-serif",
                     size = 12,
                     color = "rgb(68,68,68)"),
                   y = 0.98, 
                   x = 0.5, xanchor = 'center', yanchor =  'top'),
      polar = list(
        radialaxis = list(
          visible = T,
          range = c(0,max(ConCuidBuc))#,drenaje,electricidad))
        )
      ),
      showlegend = F,
      margin=list(t=50,b=50,l=70,r=70)
    )
    
    
  })
  
  output$CepDent1 <- renderPlotly({
    CepilladoDentalRecomen<-data.frame(table(Datos[127]))
    Ceplab<-c( 'Once','Twice','Two to three times','Three times')
    CepDenVec<-c(1,8,1,88)
    CepDental <- data.frame(Ceplab, CepDenVec)
    CepDental$Ceplab <- factor(CepDental$Ceplab, levels = CepDental[["Ceplab"]])
    
    
    labHoraCepillarDientes<-c('Before every meal and before sleep','Before every meal','Before sleep')
    HoraCepillarDientesFreq<-c(10,87,2)
    CepDientesHora<-data.frame(labHoraCepillarDientes,HoraCepillarDientesFreq)
    
    VecesLavDientes<- plot_ly(CepDental, x = ~Ceplab, y = ~CepDenVec,
                              type = 'bar',
                              name = "Smoke",
                              marker = list(color = 'rgba(240,0,135,0.8)',
                                            line = list(color = 'rgb(144,0,81)',
                                                        width = 1)))%>%
      
      layout( hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    
    RecoCepDientes<- plot_ly(CepDientesHora, x = ~labHoraCepillarDientes, y = ~HoraCepillarDientesFreq, type = 'bar',
                             name = "Consume alcoholic beverage",
                             marker = list(color = 'rgba(20,150,140,0.8)',
                                           line = list(color = 'rgb(12,90,84)',
                                                       width = 1)))%>%
      layout(
        xaxis = list(title = ""),
        yaxis = list(title = ""),
        showlegend = F)
    
    
    
    final <- subplot(VecesLavDientes,RecoCepDientes,widths = c(0.5,0.5),titleY = TRUE, titleX = TRUE, margin = 0.05 )
    
    
    annotations = list( 
      list( 
        x = 0.22,  
        y = 1.0,  
        text = "Recommended times to brush your teeth",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),  
      list( 
        x = 0.8,  
        y = 1,  
        text = "When is it recommended to brush your teeth?",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ))
    final <- final %>%layout(annotations = annotations)
  })
  
  output$VisitDent1 <- renderPlotly({
    
    IrDentlab<-c( 'Once a year','Twice a year','Three times a year')
    IrDentFreq<-c(20,53,26)
    IrDen <- data.frame(IrDentlab, IrDentFreq)
    IrDen$IrDentlab <- factor(IrDen$IrDentlab, levels = IrDen[["IrDentlab"]])
    
    
    MasAfecEcolab<-c('Healing (Extraction)','Prevention (such as cleaning)','Rehabilitation (Prosthetics)')
    MasAfecEcofrq<-c(13,13,73)
    MasAfecEco<-data.frame(MasAfecEcolab,MasAfecEcofrq)
    
    IrDentVeces<- plot_ly(IrDen, x = ~IrDentlab, y = ~IrDentFreq,
                          type = 'bar',
                          name = "Smoke",
                          marker = list(color = 'rgba(255,100,0,0.8)',
                                        line = list(color = 'rgb(153,60,0)',
                                                    width = 1)))%>%
      
      layout( hoverlabel = list(
        font = list(color ='rgb(255,255,255)')),
        xaxis = list(title = ""),
        yaxis = list(title = ""))
    
    
    AfecEcono<- plot_ly(MasAfecEco, x = ~MasAfecEcolab, y = ~MasAfecEcofrq, type = 'bar',
                        name = "Consume alcoholic beverage",
                        marker = list(color = 'rgba(75,255,0,0.8)',
                                      line = list(color = 'rgb(45,153,0)',
                                                  width = 1)))%>%
      layout(
        xaxis = list(title = ""),
        yaxis = list(title = ""),
        showlegend = F)
    
    
    
    final <- subplot(IrDentVeces,AfecEcono,widths = c(0.5,0.5),titleY = TRUE, titleX = TRUE, margin = 0.05 )
    
    
    annotations = list( 
      list( 
        x = 0.23,  
        y = 1.0,  
        text = "Visits to the dentist with a healthy oral health status",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ),  
      list( 
        x = 0.85,  
        y = 1,  
        text = "Treatment most affects your economy",  
        xref = "paper",  
        yref = "paper",  
        xanchor = "center",  
        yanchor = "bottom",  
        showarrow = FALSE 
      ))
    final <- final %>%layout(annotations = annotations)
  })
  
  
}

# Run the application 
shinyApp(ui = ui, server = server)
# Yojhansen Omar Varela Arellano

