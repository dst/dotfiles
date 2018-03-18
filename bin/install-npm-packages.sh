#!/bin/sh

# Dariusz Stefanski
# 29.01.2016

# https://www.npmjs.com/get-npm
# npm is a separate project from Node.js, and tends to update more frequently.
# As a result, even if you’ve just downloaded Node.js (and therefore npm),
# you’ll probably need to update your npm. Luckily, npm knows how to update itself!
npm install -g npm@latest

# Grunt - The JavaScript Task Runner
npm install -g grunt-cli

# http-server is a simple, zero-configuration command-line http server
npm install -g http-server

# Ngrok exposes your localhost to the web. https://ngrok.com
npm install -g ngrok

# ncu upgrades your package.json deps to the latest versions
npm install -g npm-check-updates
