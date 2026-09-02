import { lazy, Suspense, useEffect, useState } from 'react';
import { Route, Routes } from 'react-router-dom';
import { learningApi, practiceApi } from '@/api';
import { useStoredUser } from '@/hooks/useStoredUser';
import { StudentShell } from '@/components/layout/StudentShell';
import { Categories, Grades, Home, Lessons, Levels } from '@/pages/HomePages';

const LessonPage = lazy(() => import('@/pages/LessonPage'));
const PracticePage = lazy(() => import('@/pages/PracticePage'));
const TutorPage = lazy(() => import('@/pages/TutorPage'));
const LoginPage = lazy(() => import('@/pages/LoginPage'));
const PrimaryInteractivePage = lazy(() => import('@/pages/PrimaryInteractivePage'));

export default function App() {
  const [user, setUser, logout] = useStoredUser();
  const [catalog, setCatalog] = useState(null);
  const [dashboard, setDashboard] = useState(null);
  const loadDashboard = () => practiceApi.dashboard(user.id).then(setDashboard).catch(() => {});
  useEffect(() => { learningApi.catalog().then(setCatalog).catch(() => {}); }, []);
  useEffect(() => { loadDashboard(); }, [user.id]);

  return (
    <Suspense fallback={<div className="loading-page">Preparando la página…</div>}>
    <Routes>
      <Route path="/login" element={<LoginPage setUser={setUser} />} />
      <Route path="*" element={(
        <StudentShell user={user} logout={logout}>
          <Routes>
            <Route path="/" element={<Home catalog={catalog} dashboard={dashboard} user={user} />} />
            <Route path="/niveles" element={<Levels catalog={catalog} />} />
            <Route path="/niveles/:levelSlug" element={<Grades catalog={catalog} />} />
            <Route path="/niveles/:levelSlug/:gradeCode" element={<Categories catalog={catalog} />} />
            <Route path="/niveles/:levelSlug/:gradeCode/:categorySlug" element={<Lessons catalog={catalog} />} />
            <Route path="/lecciones" element={<Lessons catalog={catalog} />} />
            <Route path="/lecciones/:slug" element={<LessonPage catalog={catalog} dashboard={dashboard} user={user} refreshDashboard={loadDashboard} />} />
            <Route path="/practica" element={<PracticePage user={user} />} />
            <Route path="/actividades" element={<PrimaryInteractivePage user={user} />} />
            <Route path="/tutor" element={<TutorPage user={user} />} />
          </Routes>
        </StudentShell>
      )} />
    </Routes>
    </Suspense>
  );
}
