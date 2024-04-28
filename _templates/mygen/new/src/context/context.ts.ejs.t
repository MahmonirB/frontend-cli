---
to: <%=package%>/src/context/context.ts
---
import { createContext } from 'react';


interface ContextProps {}

export const INITIAL_CONTEXT = {};

export const Context = createContext<ContextProps>(INITIAL_CONTEXT);
