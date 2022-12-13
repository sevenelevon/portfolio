#!/bin/bash
echo "Swithing to branch master"
git checkout master # код проверят последнии обновления проекта

echo "Building app..."
npm run build

echo "Deploying files to server..."
scp -r build/* usernginx@192.168.0.4:/var/www/192.168.0.4/

echo "Done!"