# Guía de Contribución - FNTickets

## Convenciones de Código

### Estructura de Componentes
```typescript
// Imports externos primero
import React from 'react';
import { useNavigate } from 'react-router-dom';

// Imports internos
import { Button } from '@/components/ui/button';
import { useTicketStore } from '@/store/ticketStore';

// Tipos
interface Props {
  ticketId: string;
}

// Componente
export const TicketCard: React.FC<Props> = ({ ticketId }) => {
  // Hooks
  const navigate = useNavigate();
  const { getTicketById } = useTicketStore();
  
  // Estado
  const [loading, setLoading] = useState(false);
  
  // Efectos
  useEffect(() => {
    // Lógica
  }, [ticketId]);
  
  // Handlers
  const handleClick = () => {
    navigate(`/tickets/${ticketId}`);
  };
  
  // Render
  return (
    <div>
      {/* JSX */}
    </div>
  );
};
```

### Nombrado
- **Componentes**: PascalCase (ej: `TicketCard`, `UserProfile`)
- **Hooks**: camelCase con prefijo "use" (ej: `useTicketStore`, `useAuth`)
- **Funciones**: camelCase (ej: `getTicketById`, `handleSubmit`)
- **Constantes**: UPPER_SNAKE_CASE (ej: `API_URL`, `MAX_RETRIES`)
- **Archivos**: PascalCase para componentes, camelCase para utilidades

### Estilos con Tailwind
- Usar clases de utilidad de Tailwind
- Ordenar clases: layout → sizing → spacing → colors → effects
- Usar `cn()` para condicionales:
```tsx
className={cn(
  "flex items-center p-4 rounded-lg",
  isActive && "bg-blue-100",
  isDisabled && "opacity-50 cursor-not-allowed"
)}
```

### Gestión de Estado
- Usar Zustand para estado global
- Usar useState para estado local
- Usar useMemo para cálculos costosos
- Usar useCallback para funciones pasadas a hijos

## Flujo de Trabajo Git

### Branches
- `main`: Producción
- `develop`: Desarrollo
- `feature/nombre-feature`: Nuevas características
- `fix/nombre-fix`: Correcciones de bugs

### Commits
```
tipo(scope): descripción

cuerpo opcional

footer opcional
```

Tipos:
- `feat`: Nueva característica
- `fix`: Corrección de bug
- `docs`: Documentación
- `style`: Cambios de estilo (formato)
- `refactor`: Refactorización
- `test`: Tests
- `chore`: Tareas de mantenimiento

Ejemplos:
```
feat(tickets): agregar filtro por prioridad

fix(auth): corregir error en login con email vacío

docs(readme): actualizar instrucciones de instalación
```

## Testing

### Estructura de Tests
```typescript
describe('TicketStore', () => {
  beforeEach(() => {
    // Setup
  });
  
  describe('addTicket', () => {
    it('should create a new ticket with default values', () => {
      // Arrange
      const ticketData = { title: 'Test' };
      
      // Act
      const result = addTicket(ticketData);
      
      // Assert
      expect(result.status).toBe('open');
    });
  });
});
```

## Documentación

- Documentar funciones complejas con JSDoc
- Incluir ejemplos de uso
- Mantener README.md actualizado

```typescript
/**
 * Calcula el tiempo de resolución promedio de tickets
 * @param tickets - Array de tickets a analizar
 * @returns Tiempo promedio en horas, redondeado a 1 decimal
 * @example
 * const avgTime = calculateAvgResolutionTime(tickets);
 * console.log(avgTime); // 24.5
 */
const calculateAvgResolutionTime = (tickets: Ticket[]): number => {
  // Implementación
};
```

## Revisión de Código

Antes de hacer push:
1. Ejecutar `npm run lint`
2. Ejecutar `npm run build`
3. Verificar que no haya errores de TypeScript
4. Revisar que el código siga las convenciones

## Recursos

- [React Best Practices](https://react.dev/learn)
- [TypeScript Handbook](https://www.typescriptlang.org/docs/)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
