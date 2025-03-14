+++ date = '2025-03-11T10:19:41-08:00' 
draft = false 
title = 'Práctica #1 Elementos Básicos de los Lenguajes de Programación' 
+++
# *PARADIGMAS DE LA PROGRAMACIÓN*
# Elementos Fundamentales de los Lenguajes de Programación

En esta práctica, el objetivo es familiarizarse con los elementos fundamentales de los lenguajes de programación, los cuales son esenciales para entender cómo funcionan los programas y cómo los lenguajes permiten que los programadores creen soluciones a problemas complejos.

## 1. Nombres
Los nombres son identificadores utilizados para referirse a variables, funciones, clases, entre otros elementos en un programa. Son importantes porque permiten al programador trabajar con abstracciones en lugar de manejar directamente los datos.

## 2. Objetos
En lenguajes orientados a objetos, los objetos son entidades que combinan datos y métodos (comportamientos). Los objetos se crean a partir de clases y pueden representar cosas del mundo real o conceptos abstractos.

## 3. Entornos (Ambientes)
El entorno es el contexto en el cual se ejecuta un programa. Define cómo se relacionan los nombres y los valores durante la ejecución de un programa. Un entorno puede incluir variables globales y locales, funciones, y estructuras de datos.

## 4. Bloques
Un bloque es un conjunto de instrucciones que se agrupan y se ejecutan como una unidad. Los bloques se usan a menudo para delimitar el alcance de variables y para estructurar código en funciones, condicionales y bucles.

## 5. Alcance (Scope)
El alcance se refiere a la visibilidad y el tiempo de vida de las variables y funciones dentro de un programa. Puede ser local (dentro de una función o bloque) o global (accesible desde cualquier parte del programa).

## 6. Administración de Memoria
La administración de memoria se refiere a cómo el programa reserva y libera memoria durante su ejecución. En muchos lenguajes, esto incluye el uso de variables y estructuras de datos, y algunos lenguajes (como C) requieren la gestión manual de la memoria, mientras que otros (como Python o Java) usan recolección de basura automática.

## 7. Expresiones
Una expresión es cualquier combinación de valores, variables, operadores y funciones que el lenguaje evalúa para producir un resultado.

## 8. Comandos
Un comando o instrucción es una acción que el programa debe ejecutar. Los comandos pueden incluir asignaciones de valores a variables, llamadas a funciones, bucles, entre otros.

## 9. Secuencia
La secuencia es el orden en el que se ejecutan las instrucciones de un programa. La ejecución secuencial es una característica básica de los programas, donde las instrucciones se ejecutan una tras otra, a menos que algo cambie ese flujo (como un condicional o bucle).

## 10. Selección (Condicionales)
La selección o condicionales permiten que un programa tome decisiones basadas en ciertas condiciones. Se usa para ejecutar código dependiendo del valor de una expresión lógica.

## 11. Iteración (Bucles)
La iteración permite que una parte del código se ejecute repetidamente hasta que se cumpla una condición. Los bucles más comunes son for y while.

## 12. Recursión
La recursión es una técnica donde una función se llama a sí misma para resolver un problema. Es útil cuando un problema se puede descomponer en subproblemas más pequeños del mismo tipo.

## 13. Subprogramas (Funciones y Procedimientos)
Un subprograma es una unidad de código reutilizable que puede ser invocada desde diferentes partes de un programa. Las funciones devuelven un valor, mientras que los procedimientos (o funciones void) no lo hacen.

## 14. Tipos de Datos
Los tipos de datos definen qué tipo de valores puede almacenar una variable y qué operaciones se pueden realizar sobre ellos. Los tipos básicos incluyen:
- Enteros (int)
- Flotantes (float)
- Cadenas de texto (string)
- Booleanos (bool)

Además, hay tipos de datos más complejos como listas, tuplas, diccionarios, y clases.

## Análisis del código biblioteca.c

### Nombres y Variables
**Variables globales:**
- `static_var`: Variable estática (almacenada en el segmento de datos)
- `bss_var`: Variable BSS (variable global no inicializada)

**Variables locales (en main):**
- `library`: Puntero a la estructura de libros
- `members`: Puntero a la estructura de miembros
- `bookCount`, `memberCount`: Contadores
- `choice`: Variable para el menú

### Objetos y Estructuras de Datos
- `book_t`: Estructura que representa un libro
- `member_t`: Estructura que representa un miembro
- `genre_t`: Enumeración para los géneros de libros

### Entornos y Bloques
- El bloque principal del programa está en la función `main()`
- Cada función define su propio entorno local
- Bloques de control como `if`, `while`, `for` y `switch` crean sus propios ámbitos

### Alcance (Scope)
- Alcance global: Variables declaradas fuera de cualquier función (`static_var`, `bss_var`)
- Alcance local: Variables declaradas dentro de funciones
- Parámetros formales: Variables que reciben valores de llamadas (como `library` en `displayBooks`)

### Administración de Memoria
- **Heap**: 
  - `malloc()` para asignar memoria dinámica (libros, miembros)
  - `realloc()` para redimensionar memoria (libros prestados)
  - `free()` para liberar memoria
  - Control de memoria con `incrementHeapAllocations()` y `incrementHeapDeallocations()`
- **Stack**: Variables locales y parámetros
- **Segmento de datos**: Variables estáticas como `static_var`
- **BSS**: Variables globales no inicializadas como `bss_var`

### Expresiones
- Aritméticas: `(*count)++`, `current->issued_count--`
- Lógicas: `if (bookFound && memberFound)`
- Relacionales: `if (current->id == bookID)`

### Comandos
- Asignación: `choice = 0`, `*library = new_book`
- Llamadas a función: `addBook(&library, &bookCount)`
- Entrada/salida: `printf()`, `scanf()`

### Secuencia
- Ejecución secuencial de instrucciones en cada función
- Flujo secuencial en el menú principal

### Selección
- `if-else`: Usado en varias funciones para control de flujo
- `switch-case`: Usado en el menú principal y en `genreToString()`

### Iteración
- `while`: Usado para recorrer listas enlazadas (`current = current->next`)
- `for`: Usado para iterar sobre arrays (`for (int i = 0; i < memberFound->issued_count; i++)`)
- `do-while`: Usado en el menú principal

### Recursión
- `displayBooksRecursive()`: Función recursiva para mostrar libros

### Subprogramas
- Funciones para operaciones específicas: `addBook()`, `displayBooks()`, etc.
- Funciones auxiliares: `findBookById()`, `genreToString()`
- Funciones para manejo de archivos: `saveLibraryToFile()`, `loadLibraryFromFile()`

### Tipos de Datos
- **Primitivos**: `int`, `char`
- **Estructurados**: `struct _book`, `struct _member`
- **Enumeraciones**: `genre_t`
- **Punteros**: `book_t *`, `member_t *`
- **Arrays**: `char title[100]`, `int *issued_books`

## Análisis del código memory_management.c

### Nombres y Variables
**Variables globales:**
- `heap_allocations`: Contador de asignaciones en el heap
- `heap_deallocations`: Contador de liberaciones en el heap
- `stack_allocations`: Contador de asignaciones en la pila
- `stack_deallocations`: Contador de liberaciones en la pila
- `heap_memory_records`: Puntero a una lista enlazada de registros de memoria

### Objetos y Estructuras de Datos
- `MemoryRecord`: Estructura que representa un registro de memoria asignada en el heap
  - `pointer`: Puntero a la memoria asignada
  - `size`: Tamaño de la memoria asignada
  - `next`: Puntero al siguiente registro

### Entornos y Bloques
- Bloques condicionales con `#if MEMORY_MANAGEMENT_DISPLAY` para compilación condicional
- Bloques de funciones que definen ámbitos locales

### Alcance (Scope)
- Alcance global: Variables declaradas fuera de cualquier función (`heap_allocations`, `heap_deallocations`, etc.)
- Alcance local: Variables declaradas dentro de funciones (como `record` en `addMemoryRecord`)
- Parámetros formales: (`pointer`, `size` en las funciones)

### Administración de Memoria
- **Heap**: 
  - `malloc()` para asignar memoria para los registros
  - `free()` para liberar registros
  - Sistema de seguimiento de asignaciones y liberaciones de memoria
- **Metadatos de memoria**: Estructura para seguir la asignación de memoria

### Expresiones
- Aritméticas: `heap_allocations++`
- Asignación: `record->pointer = pointer`
- Acceso a miembros: `current->pointer`, `current->size`

### Comandos
- Asignación: `record->next = heap_memory_records`
- Llamadas a función: `malloc()`, `free()`
- Salida: `printf()` (dentro de bloques condicionales)

### Secuencia
- Ejecución secuencial de instrucciones en cada función
- Secuencia lógica en el seguimiento de la memoria

### Selección
- `if`: Para encontrar un registro de memoria que coincida (`if ((*current)->pointer == pointer)`)
- Compilación condicional con `#if MEMORY_MANAGEMENT_DISPLAY`

### Iteración
- `while`: Para recorrer la lista enlazada de registros de memoria (`while (*current)`, `while (current)`)

### Subprogramas
- `addMemoryRecord()`: Añade un nuevo registro de memoria
- `removeMemoryRecord()`: Elimina un registro de memoria
- `displayMemoryUsage()`: Muestra información sobre el uso de memoria
- `incrementHeapAllocations()`: Incrementa el contador de asignaciones en el heap
- `incrementHeapDeallocations()`: Incrementa el contador de liberaciones en el heap
- `incrementStackAllocations()`: Incrementa el contador de asignaciones en la pila
- `incrementStackDeallocations()`: Incrementa el contador de liberaciones en la pila

### Tipos de Datos
- **Primitivos**: `int`, `size_t`
- **Estructurados**: `struct MemoryRecord`
- **Punteros**: `void *`, `MemoryRecord *`
- **Punteros a punteros**: `MemoryRecord **current`

## Análisis del código memory_management.h

### Nombres y Variables
**Variables externas:**
- `heap_allocations`: Contador de asignaciones en el heap (declarada como externa)
- `heap_deallocations`: Contador de liberaciones en el heap (declarada como externa)
- `stack_allocations`: Contador de asignaciones en la pila (declarada como externa)
- `stack_deallocations`: Contador de liberaciones en la pila (declarada como externa)

### Entornos y Bloques
- Bloques de compilación condicional (`#ifndef`, `#if`, `#else`, `#endif`)

### Selección
- Compilación condicional con `#if MEMORY_MANAGEMENT_DISPLAY`
- Guarda de inclusión con `#ifndef MEMORY_MANAGEMENT_H`

### Subprogramas
- Declaraciones de funciones cuando MEMORY_MANAGEMENT_DISPLAY está activado:
  - `displayMemoryUsage()`
  - `incrementHeapAllocations()`
  - `incrementHeapDeallocations()`
  - `incrementStackAllocations()`
  - `incrementStackDeallocations()`
- Macros de sustitución vacías cuando MEMORY_MANAGEMENT_DISPLAY está desactivado

### Tipos de Datos
- **Utilización de tipos básicos**: `void *`, `size_t`

## Conclusión
Estos conceptos son esenciales para entender cómo los lenguajes de programación permiten a los desarrolladores construir programas eficientes y bien estructurados. Cada uno de estos elementos desempeña un papel específico en el comportamiento y la organización del código.