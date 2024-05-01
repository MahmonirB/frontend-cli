---
to: <%=package%>/src/views/Profile.tsx
---
import { Link } from 'react-router-dom';

function Profile() {
    return (
        <>
            <p>
                <Link to='/'>Back</Link>
            </p>
            <p>Welcome to Profile!</p>
        </>
    );
}

export default Profile;
