---
to: <%=package%>/src/views/Home.tsx
---
import { Add } from 'assets/icons';

function Home() {
	return (
		<>
			<p>Welcome to Frontend application!</p>
			<Add width={35} color='red' />
		</>
	);
}

export default Home;
