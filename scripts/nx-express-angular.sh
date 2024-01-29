#!/bin/bash

if [ -z "$1"];
then
  echo 'Provide project name parameter';
  exit 0;
fi;

mkdir $1
cd $1
npx create-nx-workspace --preset=express
npm add -D @nx/angular
nx g @nx/angular:app apps/ui