# Sincronizacion de Datos
**Propósito:**  
Sincronizar los datos locales (SQLite) con la nube (Firebase) de forma eficiente y sin pérdida de datos.

**Funcionalidades:**

- Backup automático cuando hay conexión.
    
- Opción manual de “sincronizar ahora”.
    
- Comparación por timestamp para evitar sobrescribir datos recientes.
    
- Opción para recuperación de datos desde Firebase (en nuevo dispositivo).
    

**Dependencias sugeridas:**

- `cloud_firestore`
    
- `connectivity_plus` (para saber si hay red)
    

**Posible arquitectura:**

- Repository con lógica híbrida (local/nube).
    
- Estrategia de sincronización:
    
    - Al iniciar sesión
        
    - Cada cierto tiempo (opcional)
        
    - Con botón de sincronización manual