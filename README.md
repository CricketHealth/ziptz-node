# ziptz-node

Get time zone for any US ZIP code. Based on data from https://github.com/infused/ziptz.

## Usage

```
const { getTimezoneForZipCode } = require('ziptz-node');
getTimezoneForZipCode('80303') //=> 'America/Denver'
```

## Updating

Run `npm run update` and commit the changes to data/tz.json to update the data
from the original ziptz repo.
