const express = require('express')

const PORT = process.env.PORT || 3001

express()
  .use(express.json())
  .use('*', ({ url, method, body, headers }, res) => res.json({ url, method, body, headers }))
  .listen(PORT, () => console.log(`Server listening on port ${PORT}`))