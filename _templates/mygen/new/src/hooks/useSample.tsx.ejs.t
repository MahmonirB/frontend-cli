---
to: <%=package%>/src/hooks/Example.tsx
---
import { useState, useEffect } from 'react';

function useSample() {
    const [text, setText] = useState('');

    useEffect(() => {
        setText('this is a sample hook!')
    }, []);

    return text;
}

export default useSample;