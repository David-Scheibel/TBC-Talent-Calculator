import './App.css';
import { BrowserRouter, Route, Switch, Redirect } from 'react-router-dom';
import { useSelector } from 'react-redux';

import Talents from './containers/Talents'
import Login from './components/Login'
import Signup from './components/Signup'

function App() {

  const loggedInUser = useSelector(state => state.loggedInUser)

  return (
    <BrowserRouter>
      <div className="App">
        <Switch>
          
          <Route path='/' exact><Login /></Route>

          <Route path='/signup' component={Signup}/>

          <Route path='/talents'><Talents /></Route>

        </Switch>
      </div>
    </BrowserRouter>
  );
}

export default App;
