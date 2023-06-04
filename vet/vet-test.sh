#!/bin/bash
set -x
## non-prod
cue vet ./json/settings.json schema.cue -d '#SettingsNonProd'

## production
cue vet official/settings-prod.json schema.cue -d "#SettingsProd"