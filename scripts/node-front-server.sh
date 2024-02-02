if [ -z "$1" ];
then
  echo 'Provide project name parameter';
  exit 0;
fi;

mkdir "$1";
cd "$1"
npm init -y;
echo "const path = require('path')
const express = require('express');
const app = express();
app.use(express.static(path.join(__dirname, '../dist/aws-todo-front/browser')));
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, '../dist/aws-todo-front/browser/index.html'));
});
app.listen(4200, () => {
  console.log('Server on port 4200')
})" > server.js