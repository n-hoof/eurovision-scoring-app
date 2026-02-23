import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './styles/index.css'
import App from './App'
import { AuthProvider } from './contexts/AuthProvider'
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { ProfileProvider } from './contexts/ProfileProvider'

const queryClient = new QueryClient();

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <QueryClientProvider client={queryClient}>
      <AuthProvider>
        <ProfileProvider>
          <App />
        </ProfileProvider>
      </AuthProvider>
    </QueryClientProvider>
  </StrictMode>,
)
