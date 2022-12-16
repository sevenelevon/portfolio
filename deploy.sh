#!/bin/bash
echo "Swithing to branch master"
git checkout master # код проверят последнии обновления проекта

echo "Building app..."
npm run build

echo "Deploying files to server..."
scp -r build/* seven@192.168.0.2:/var/www/192.168.0.2/

echo "Done!"