import { useState } from 'react';

const GUEST_USER = {
  id: null,
  name: 'Invitado',
  email: '',
  role: 'student',
};

export function useStoredUser() {
  const [user, setUserState] = useState(() => {
    try { return JSON.parse(localStorage.getItem('math-user')) ?? GUEST_USER; }
    catch { return GUEST_USER; }
  });
  const setUser = (next) => {
    setUserState(next);
    localStorage.setItem('math-user', JSON.stringify(next));
  };
  const logout = () => {
    localStorage.removeItem('math-user');
    localStorage.removeItem('math-token');
    setUserState(GUEST_USER);
    window.location.assign('/login');
  };
  return [user, setUser, logout];
}
