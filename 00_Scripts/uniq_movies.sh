#!/bin/#!/usr/bin/env bash

ListOfFiles=$(ls ${PathSearch})

PathSearch=
while [${PathSearch}] 
  read -p "Entrer le chemin vers le dossier video souhaité: " PathSearch;do
  echo ${PathSearch};
done
