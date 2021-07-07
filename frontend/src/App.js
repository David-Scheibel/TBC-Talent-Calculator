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

          <Route path='/talents' exact><Talents /></Route>

          <Route path='/talents/druid'><Druid /></Route>
          <Route path='/talents/hunter'><Hunter /></Route>
          <Route path='/talents/mage'><Mage /></Route>
          <Route path='/talents/paladin'><Paladin /></Route>
          <Route path='/talents/priest'><Priest /></Route>
          <Route path='/talents/rogue'><Rogue /></Route>
          <Route path='/talents/shaman'><Shaman /></Route>
          <Route path='/talents/warlock'><Warlock /></Route>
          <Route path='/talents/warrior'><Warrior /></Route>

        </Switch>
      </div>
    </BrowserRouter>
  );
}

export default App;
