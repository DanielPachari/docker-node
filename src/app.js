const express = require('express');
const app = express();
const port = process.env.PORT || 3000;
const indexRouter = require('./routes/index');

app.use('/', indexRouter);

app.listen(port, () => {
  console.log(`App listening on port ${port}`);
});
