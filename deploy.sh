#!/bin/bash
echo "Swithing to branch master"
git checkout master

echo "Building app..."
npm run build

echo "Deploying files to server..."
scp -r build/* usernginx@192.168.0.2:/var/www/192.168.0.2/

echo "Done!"