#!/usr/bin/env bash

if [ "$1" = "native" ];
then
  ./mvnw clean spring-boot:build-image --projects simple-service
else
  ./mvnw clean package jib:dockerBuild --projects simple-service
fi
