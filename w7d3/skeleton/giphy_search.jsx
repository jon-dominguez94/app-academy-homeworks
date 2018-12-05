import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

const store = configureStore();
window.store = store;

import fetchSearchGiphys from './util/api_util';
import {receiveSearchGiphys} from './actions/giphy_actions';

window.fetchSearchGiphys = fetchSearchGiphys;
window.receiveSearchGiphys = receiveSearchGiphys;

