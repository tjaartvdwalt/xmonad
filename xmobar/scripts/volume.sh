#!/bin/bash

echo `amixer get Master | awk '$0~/%/{
                                     if ($6 == "[off]") {
                                       print substr($2, 0, 1) ":", "mute";
                                     }
                                     else {
                                       gsub("[\\\[\\\]]","");
                                       print substr($2, 0, 1) ":", $5;
                                     }
                                   }'`
