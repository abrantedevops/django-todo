#!/bin/bash

helm repo add yugabytedb https://charts.yugabyte.com
helm upgrade yb-demo yugabytedb/yugabyte --install --namespace=yb-demo --values=YugabyteDB/values.yaml
helm upgrade django-todo ./django-todo --install --namespace=yb-demo --values=django-todo/values.yaml
