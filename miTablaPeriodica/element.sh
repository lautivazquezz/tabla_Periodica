#!/bin/bash

# Comando para ejecutar consultas SQL
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

# Verificar si hay un argumento proporcionado
if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."
  exit
fi

# Determinar si el argumento es un número, un símbolo o un nombre
if [[ $1 =~ ^[0-9]+$ ]]; then
  CONDITION="e.atomic_number = $1"
elif [[ $1 =~ ^[A-Za-z]{1,2}$ ]]; then
  CONDITION="e.symbol = '$1'"
else
  CONDITION="e.name = '$1'"
fi

# Realizar la consulta a la base de datos
QUERY_RESULT=$($PSQL "
SELECT e.atomic_number, e.name, e.symbol, t.type, p.atomic_mass, p.melting_point_celsius, p.boiling_point_celsius
FROM elements e
JOIN properties p ON e.atomic_number = p.atomic_number
JOIN types t ON p.type_id = t.type_id
WHERE $CONDITION;")

# Verificar si se encontró un resultado
if [[ -z $QUERY_RESULT ]]; then
  echo "I could not find that element in the database."
  exit
fi


# Leer los resultados de la consulta
IFS="|" read ATOMIC_NUMBER NAME SYMBOL TYPE MASS MELTING BOILING <<< "$QUERY_RESULT"

# Condición especial para el elemento Hidrógeno
if [[ $ATOMIC_NUMBER -eq 1 ]]; then
  echo "The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius."
else
  # Mensaje general para otros elementos
  echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
fi