#!/bin/env bash

for i in {0..255}; do
    echo $i
    for j in {0..255}; do
        for k in {0..255}; do
            for l in {0..255}; do
                echo $i.$j.$k.$l >> ips.txt
            done
        done
    done
done