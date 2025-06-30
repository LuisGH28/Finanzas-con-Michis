# Arquitectura de la Aplicación

## Patrón:

- Clean Architecture (por capas).
- Manejo de estados: Riverpod (o Provider como base)

## Estructura:

├── lib
│   ├── ai_assistant // contendra todo lo asociado al asistente virtual
│   ├── config
│   ├── data // se guardaran las configuraciones para la bd
│   │   ├── database
│   │   └── firebase
│   ├── export // iran las funciones de exportar datos en csv o pdf
│   ├── main.dart
│   ├── models 
│   ├── providers
│   ├── screens 
│   ├── services
│   ├── utils
│   └── widgets

## Navegación 

- Bottom Navigation para Home, Add, Reportes, Objetivos
- Drawer lateral para Configuración, Cuenta, Cerrar Sesión