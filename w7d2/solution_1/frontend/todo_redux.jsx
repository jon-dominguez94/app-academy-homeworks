import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});


function addLoggingToDispatch(store) {
  const dp = store.dispatch;
  return (action) => {
    console.log(`Old state: ${store.getState()}`);
    console.log(`Action: ${action}`);
    dp(action);
    console.log(`New state: ${store.getState()}`);
  };
}