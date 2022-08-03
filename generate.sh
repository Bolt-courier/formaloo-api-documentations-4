#!/bin/sh
 cd /files/spec/ && \
 wget -O icas-raw.yaml http://icas/docs/openapi/yaml/
 wget -O formz-raw.yaml http://formz/docs/openapi/yaml/
 wget -O actions-raw.yaml http://actions/docs/openapi/yaml
 wget -O crm-raw.yaml http://crm/docs/openapi/yaml
 redocly bundle icas-raw.yaml -o icas.yaml
 redocly bundle formz-raw.yaml -o formz.yaml
 redocly bundle actions-raw.yaml -o actions.yaml
 redocly bundle crm-raw.yaml -o crm.yaml
 redocly bundle raw-storage-v1.0.yaml -o storage.yaml
 redocly bundle raw-v1.0.yaml -o v1.0.yaml
 npx openapi-merge-cli --config openapi-merge-v1.0.json
 rm actions* formz* icas* crm* storage* v1.0.yaml
 wget -O icas-raw.yaml http://icas/docs/openapi/yaml/?version=2.0
 wget -O formz-raw.yaml http://formz/docs/openapi/yaml/?version=2.0
 wget -O actions-raw.yaml http://actions/docs/openapi/yaml?version=2.0
 wget -O crm-raw.yaml http://crm/docs/openapi/yaml?version=2.0
 wget -O storage-raw.yaml http://storage/docs/openapi/yaml/?version=2.0
 redocly bundle icas-raw.yaml -o icas.yaml
 redocly bundle formz-raw.yaml -o formz.yaml
 redocly bundle actions-raw.yaml -o actions.yaml
 redocly bundle crm-raw.yaml -o crm.yaml
 redocly bundle storage-raw.yaml -o storage.yaml
 redocly bundle raw-v2.0.yaml -o v2.0.yaml
 npx openapi-merge-cli --config openapi-merge-v2.0.json
 rm actions* formz* icas* crm* storage* v2.0.yaml 