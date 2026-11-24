#!/usr/bin/env bash
# Call publicrecords/calibration-ledger on YOUR Apify account. Set APIFY_TOKEN. Do not commit the token.
set -euo pipefail
: "${APIFY_TOKEN:?Set APIFY_TOKEN to your own Apify token}"
curl -sS -X POST \
  "https://api.apify.com/v2/acts/publicrecords~calibration-ledger/run-sync-get-dataset-items?token=${APIFY_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{"mode": "lookup", "source": "oecd_eo", "series": "RGDP_GROWTH_A", "geo": "CAN", "target_period": "2027", "point": "1.8", "published_at": "2026-06-01"}'
