# Documentación del Proceso de Rebase

## 1. Situación Inicial

Historial con 4 commits poco descriptivos:
- "actualizar"
- "mas ajustes"
- "arreglos"
- "cambios"

## 2. Proceso Ejecutado
```bash
git rebase -i HEAD~4
```

### Decisiones:
- **Reword** en commits principales para mejorar mensajes
- **Squash** de commits relacionados (variables)
- Aplicar formato Conventional Commits

## 3. Comandos Utilizados
```bash
git log --oneline -5        # Ver historial
git rebase -i HEAD~4        # Iniciar rebase
git push --force            # Actualizar remoto
```

## 4. Resultado

Historial con 2 commits claros:
- `feat: añadir outputs para monitoreo de recursos`
- `feat: añadir configuración de variables para infraestructura`


