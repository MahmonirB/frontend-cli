---
to: <%=package%>/src/store/index.tsx
---
import {
    combineReducers, configureStore
} from '@reduxjs/toolkit';

export const rootReducer = combineReducers({}); // Add reducers

export type RootState = ReturnType<typeof rootReducer>;

const store = configureStore({
    reducer: rootReducer,
    devTools: import.meta.env.NODE_ENV !== 'prod',
    middleware: (getDefaultMiddleware) =>
        getDefaultMiddleware()
});

export default store;
