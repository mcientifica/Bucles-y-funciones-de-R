# Ejercicios de IF -------------------------------------------------------------
# 1. Básico
num1 <- 10
num2 <- 20

if (num1 > num2) {
  cat("1. El primer número es mayor.")
} else if (num2 > num1) {
  cat("1. El segundo número es mayor.")
} else {
  cat("1. Ambos números son iguales.")
}

# 2. Condicionales Anidados
edad <- 24
color <- "verde"

if (edad <= 40) {
  if (color == "verde") {
    cat("2. inicial")
  } else {
    cat("2. intermedio")
  }
} else {
  cat("2. master")
}

# 3. Operadores Lógicos
numero <- 42

if (numero > 0) {
  cat("3. El número es positivo.")
} else if (numero < 0) {
  cat("3. El número es negativo.")
} else {
  cat("3. El número es cero.")
}

# 4. Múltiples Condiciones
num1 <- 10
num2 <- 20
num3 <- 20

if (num1 == num2 | num1 == num3 | num2 == num3) {
  cat("4. Al menos dos números son iguales.")
} else {
  cat("4. No hay números iguales.")
}

# 5. Condiciones con Strings
nombre <- "Juan"

if (grepl("a", nombre, ignore.case = TRUE)) {
  cat("5. El nombre contiene la letra 'a' o 'A'.")
} else {
  cat("5. El nombre no contiene la letra 'a' o 'A'.")
}

# 6. Condiciones con Vectores
vector_numeros <- c(3, 7, -2, 5, 0)

if (any(vector_numeros < 0)) {
  cat("6. El vector contiene al menos un número negativo.")
} else {
  cat("6. Todos los números del vector son no negativos.")
}

# 7. Condiciones Complejas
seccion1 <- 80
seccion2 <- 90
seccion3 <- 75

promedio <- (seccion1 + seccion2 + seccion3) / 3

if (seccion1 >= 70 & seccion2 >= 70 & seccion3 >= 70) {
  if (promedio >= 80) {
    cat("7. ¡El estudiante aprueba el examen con una calificación excelente!")
  } else {
    cat("7. ¡El estudiante aprueba el examen!")
  }
} else {
  cat("7. El estudiante no aprueba el examen.")
}

# Ejercicios de FOR ------------------------------------------------------------
# 1. Bucle Simple
for (i in 1:5) {
  cat(i, " ")
}

# 2. Bucle con Vectores
nombres <- c("Juan", "María", "Carlos", "Laura", "Pedro")
for (nombre in nombres) {
  cat(nombre, " (Longitud:", nchar(nombre), ")  ")
}

# 3. Bucle con Suma Acumulativa
suma <- 0
for (i in 1:10) {
  suma <- suma + i
}
cat("Suma:", suma)

# 4. Bucle con Condicional
for (i in 1:10) {
  if (i %% 2 == 0) {
    cat(i, "(par)  ")
  } else {
    cat(i, "(impar)  ")
  }
}

# 5. Bucle Anidado
for (i in 1:5) {
  for (j in 1:5) {
    cat(i, " * ", j, " = ",i * j, "\n")
  }
  cat("\n")
}

# 6. Bucle con Suma Condicional
suma_pares <- 0
for (i in 1:20) {
  if (i %% 2 == 0) {
    suma_pares <- suma_pares + i
  }
}
cat("Suma de pares:", suma_pares)


# Ejercicios de WHILE ----------------------------------------------------------
# 1. Bucle Simple
contador <- 1
while (contador <= 5) {
  print(contador)
  contador <- contador + 1
}

# 2. Bucle con Condicional
contador_pares <- 1
while (contador_pares <= 10) {
  if (contador_pares %% 2 == 0) {
    cat(contador_pares, " ")
  }
  contador_pares <- contador_pares + 1
}

# 3. Bucle con Suma Acumulativa
suma_acumulativa_while <- 0
numero_while <- 1

while (numero_while <= 10) {
  suma_acumulativa_while <- suma_acumulativa_while + numero_while
  numero_while <- numero_while + 1
}
cat("\nSuma acumulativa:", suma_acumulativa_while)

# 4. Bucle con Condiciones Combinadas
contador_multiplos <- 1

while (contador_multiplos <= 100) {
  if (contador_multiplos %% 3 == 0 & contador_multiplos %% 5 == 0) {
    cat(contador_multiplos, " ")
  }
  contador_multiplos <- contador_multiplos + 1
}

# 5. Bucle con Cambio de Condición
numero_cuadrado <- 1

while (numero_cuadrado^2 <= 100) {
  cat(numero_cuadrado^2, "\t")
  numero_cuadrado <- numero_cuadrado + 1
}

# Ejercicios de FUNCTION -------------------------------------------------------
# 1. Función Básica
sumar_dos_numeros <- function(a, b) {
  suma <- a + b
  return(suma)
}
resultado_suma_funcion <- sumar_dos_numeros(5, 7)
cat("Resultado de la suma utilizando función:", resultado_suma_funcion, "\n")

# 2. Función con Argumentos Predeterminados
calcular_area_circulo <- function(radio = 3) {
  area <- pi * radio^2
  return(area)
}
resultado_area_circulo <- calcular_area_circulo()
cat("23. Área del círculo con radio predeterminado:", resultado_area_circulo, "\n")

# 3. Función con Bucle Interno
calcular_suma_naturales <- function(n) {
  suma <- 0
  for (i in 1:n) {
    suma <- suma + i
  }
  return(suma)
}
resultado_suma_naturales <- calcular_suma_naturales(10)
cat("Suma de los primeros 10 números naturales utilizando función:", resultado_suma_naturales, "\n")

# 4. Longitud de palabras

vector <- c("hola", "naranja", "pala", "manzana", "locomotora", "ornitorrinco")

max_longitud <- function(vector) {
  max_char <- 0
  for(i in vector){
    if(nchar(i) > max_char) {
      max_char <- nchar(i)
      palabra <- i
    }
  }
  return(palabra)
}

cat("Palabra más larga: ", max_longitud(vector))

# 5. Cuadrado de vectores
calcular_suma_cuadrados <- function(vector) {
  suma <- 0
  for (numero in vector) {
    suma <- suma + numero^2
  }
  return(suma)
}
resultado_suma_cuadrados_funcion <- calcular_suma_cuadrados(c(2, 4, 6, 8))
cat("Suma de los cuadrados de los números en la lista utilizando función:", resultado_suma_cuadrados_funcion, "\n")

# 6. Dataframe con nombres y edad

nombres <- c("Juan", "María", "Carlos", "Laura", "Pedro", "Ana", "David", "Elena", "José", "Sofía",
             "Miguel", "Isabel", "Javier", "Carmen", "Alejandro", "Beatriz", "Francisco", "Luis", "Raquel", "Roberto",
             "Verónica", "Diego", "Silvia", "Manuel", "Patricia", "Gabriel", "Rocío", "Antonio", "Martina", "Daniel",
             "Victoria", "Rafael", "Eva", "Alberto", "Lucía", "Fernando", "Natalia", "Adrián", "Paula", "Emilio", "Clara",
             "Óscar", "Nerea", "Héctor", "Alicia", "Iván", "Lourdes")
edades <- sample(22:60, 47, replace = TRUE)

df <- data.frame(Nombre = nombres, Edad = edades)

mayores <- function(df) {
  df <- df[df["Edad"] > 50, "Nombre"]
  return(df)
}
mayores(df)

# 7. Duplicar data frame

df <- data.frame(
  col_1 = sample(1:100, 20, replace = TRUE),
  col_2 = sample(1:100, 20, replace = TRUE),
  col_3 = sample(1:100, 20, replace = TRUE)
)

duplicar <- function(df) {
  col <- 1
  for(i in df) {
    df[col] <- df[col] * 2
    col <- col + 1
  }
  return(df)
}

duplicar(df)

