---
to: <%=package%>/src/components/Navbar.tsx
---
import { Link } from 'react-router-dom';

function Navbar() {
	return (
		<div>
			<Link to="/" style={{ padding: 8 }}>
				Home
			</Link>
			<Link to="/about" style={{ padding: 8 }}>
				About
			</Link>
			<Link to="/profile" style={{ padding: 8 }}>
				Profile
			</Link>
		</div>
	);
}

export default Navbar;
