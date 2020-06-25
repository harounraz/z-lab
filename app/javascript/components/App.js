import React from 'react';
import { Route, Switch } from 'react-router-dom';

import Portal from './Portals/Portal';
import Portals from './Portals/Portals';
import PortalShow from './Portals/PortalShow';

const App = () => {
    return (
        <Switch>
            <Route exact path="/" component={Portals} />
            <Route exact path="/portals/:slug" component={PortalShow} />
        </Switch>
    )
}

export default App;