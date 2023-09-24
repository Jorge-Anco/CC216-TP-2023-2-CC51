
hotel_data <- read.csv("D:\\Upc\\Funda Data Science\\hotel_bookings.csv",stringsAsFactors = FALSE, header = TRUE, sep = ",")



# a. ¿Cuántas reservas se realizan por tipo de hotel? o ¿Qué tipo de hotel prefiere la gente?
reservas_por_tipo_de_hotel <- hotel_data %>%
  group_by(hotel) %>%
  summarise(total_reservas = n())

# b. ¿Está aumentando la demanda con el tiempo?
demanda_con_el_tiempo <- hotel_data %>%
  group_by(arrival_date_year) %>%
  summarise(total_reservas = n())

# c. ¿Cuándo se producen las temporadas de reservas: alta, media y baja?
temporadas_reservas <- hotel_data %>%
  group_by(arrival_date_month) %>%
  summarize(total_reservas = n())


# Definir umbrales para categorizar las temporadas
umbral_alta <- 9000 
umbral_media <- 6000

# Asignar las categorías de temporada
temporadas_reservas <- temporadas_reservas %>%
  mutate(temporada = case_when(
    total_reservas >= umbral_alta ~ "Alta",
    total_reservas >= umbral_media ~ "Media",
    TRUE ~ "Baja"
  ))

# d. ¿Cuándo es menor la demanda de reservas?
mes_menor_demanda <- temporadas_reservas %>%
  filter(total_reservas == min(total_reservas))

# e. ¿Cuántas reservas incluyen niños y/o bebés?
reservas_con_ninos_bebes <- hotel_data %>%
  filter(children > 0 | babies > 0) %>%
  summarise(total_reservas = n())

# f. ¿Es importante contar con espacios de estacionamiento?
importancia_estacionamiento <- hotel_data %>%
  group_by(required_car_parking_spaces) %>%
  summarise(total_reservas = n())

# g. ¿En qué meses del año se producen más cancelaciones de reservas?
cancelaciones_x_mes <- hotel_data %>%
  filter(is_canceled == 1) %>%
  group_by(arrival_date_month) %>%
  summarize(total_cancelaciones = n())

View(reservas_por_tipo_de_hotel)
View(demanda_con_el_tiempo)
View(temporadas_reservas)
View(mes_menor_demanda)
View(reservas_con_ninos_bebes)
View(importancia_estacionamiento)
View(cancelaciones_x_mes)
