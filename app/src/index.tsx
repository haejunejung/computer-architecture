import React from 'react';
import {createRoot} from 'react-dom/client';
import {RecoilRoot} from 'recoil';
import {BrowserRouter} from 'react-router-dom';
import App from './App';
import './styles/tailwind.css';
import Pages from './Pages';

const rootElement = document.getElementById('root') as HTMLElement;
const root = createRoot(rootElement);
root.render(
  <BrowserRouter>
    <RecoilRoot>
      <App />
      <Pages />
    </RecoilRoot>
  </BrowserRouter>,
);
