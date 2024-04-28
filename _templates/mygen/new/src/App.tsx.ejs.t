---
to: <%=package%>/src/App.tsx
---
import { Suspense } from 'react';
import { Provider } from 'react-redux';
import './App.css';
import 'scss/app.scss';
import store from 'store/index';
import { Context } from 'context/context.ts';
import Router from './Router';

function App() {
	return (
		<Provider store={store}>
			<Context.Provider value={{}}>
				<Suspense fallback={<span>Loading...</span>}>
					<Router />
				</Suspense>
			</Context.Provider>
		</Provider>
	);
}

export default App;
