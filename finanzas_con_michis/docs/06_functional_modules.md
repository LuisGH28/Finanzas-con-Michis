# Funcionalidad de los modulos

1. HomeScreen:
   Este fragmento presentara las siguientes funcionalidades:
   - Nombre de la app con el logo o imagen de un michi.
   - Titulo: Resumen de gastos.
   - La cantidad de dinero restante.
   - Lista de los gastos más "fuertes".
   - Gráfica de como se van dividiendo los gastos.
   - Boton flotante que permite la interacción al asistente de ia.
   - Boton para descargar el estado (Excel o PDF).
   - Menu de los fragmentos (Inicio, Agregar, Metas).
2. AddExpense:
   Este fragmento presentara las siguientes funciones:
   - Imagen.
   - Titulo "Agregar gasto".
   - Input para agregar la cantidad del gasto.
   - Titulo "Categoría"
   - Input para agregar el nombre
   - Botón de guardado.
3. Goals:
   Este fragmento incluira lo siguiente:
   - Imagen.
   - Titulo.
   - Listas de las metas, esta lista incluira lo siguiente:
   - Imagen.
   - Nombre de la meta.
   - Barra para mostrar el progreso de la meta
   - Al dar clic dentro una de las metas, se mostrara otro fragmento con la siguiente información:
     - Imagen.
     - Titulo de la meta.
     - Fecha de la creación.
     - Cantidad de la meta.
     - Nota.
     - Estatus, la cual tendra lo siguientes valores:
       - Iniciada.
       - Mitad.
       - Terminada.
       - Cancelar.
     - Tendra un boton que permita editar el cual permitira lo siguiente:
       - Cambiar la imagen de la meta.
       - Cambiar el nombre de la meta.
       - Cambiar la cantidad de la meta.
       - Cambiar la nota.
       - Dos botones (Guardar o Descartar).
     - En caso de que no exista alguna meta, tendra un boton que diga "Agregar meta", el cual mandara a un fragmento con lo siguiente:
       - Pedira una Imagen (tendra una definida).
       - Nombre de la meta.
       - Cantidad de la meta.
       - Nota (Sera opcional).
       - Boton de guardado.
