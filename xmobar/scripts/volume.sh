#!/bin/bash

echo `amixer get Master | awk '$0~/%/{print $4}' | tr -d '[]'`