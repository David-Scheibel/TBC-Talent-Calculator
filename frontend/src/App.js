import './App.css';
import { BrowserRouter, Route, Switch, Redirect } from 'react-router-dom';
import { useSelector } from 'react-redux';

import Talents from './containers/Talents'
import Druid from './containers/Druid'
import Hunter from './containers/Hunter'
import Mage from './containers/Mage'
import Paladin from './containers/Paladin'
import Priest from './containers/Priest'
import Rogue from './containers/Rogue'
import Shaman from './containers/Shaman'
import Warlock from './containers/Warlock'
import Warrior from './containers/Warrior'
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

          <Route path='/druid'><Druid /></Route>
          <Route path='/hunter'><Hunter /></Route>
          <Route path='/mage'><Mage /></Route>
          <Route path='/paladin'><Paladin /></Route>
          <Route path='/priest'><Priest /></Route>
          <Route path='/rogue'><Rogue /></Route>
          <Route path='/shaman'><Shaman /></Route>
          <Route path='/warlock'><Warlock /></Route>
          <Route path='/warrior'><Warrior /></Route>

        </Switch>
      </div>
    </BrowserRouter>
  );
}

export default App;
