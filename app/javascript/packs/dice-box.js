import ReactOnRails from 'react-on-rails';

import DiceBoxApp from '../bundles/DiceBox/startup/DiceBoxApp';

// This is how react_on_rails can see the DiceBox in the browser.
ReactOnRails.register({
  DiceBoxApp,
});
