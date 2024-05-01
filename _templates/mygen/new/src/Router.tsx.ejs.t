---
to: <%=package%>/src/Router.tsx
---
import { createBrowserRouter, Outlet, RouterProvider } from 'react-router-dom';
import Home from 'views/Home';
import './App.css';
import Navbar from './components/Navbar';
import About from './views/About';
import Profile from './views/Profile';

export enum ROUTE {
	HOME = '/',
	ABOUT = '/about/',
	PROFILE = '/profile/',
}

function Router() {
	const router = createBrowserRouter([
		{
			path: ROUTE.HOME,
			element: <NavbarWrapper />,
			children: [
				{
					path: ROUTE.HOME,
					element: <Home />,
				},
				{
					path: ROUTE.ABOUT,
					element: <About />,
				},
			],
		},
		{
			path: ROUTE.PROFILE,
			element: <Profile />,
		},
	]);

	return <RouterProvider router={router} />;
}

function NavbarWrapper() {
	return (
		<>
			<Navbar />
			<Outlet />
		</>
	);
}

export default Router;
