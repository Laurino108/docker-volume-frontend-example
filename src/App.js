import React from 'react';
import NameForm from './components/NameForm';
import axios from 'axios';

function App() {
  const saveNameToFile = async (name) => {
    await axios.post('http://localhost:3001/api/save-name', { name });
  };

  return (
    <div>
      <NameForm onSubmit={saveNameToFile} />
    </div>
  );
}

export default App;
