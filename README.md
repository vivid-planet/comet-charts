# comet-charts

Helm charts for Comet DXP.

To publish new chart versions, you have to increase the version in the `Chart.yaml` file and then merge into main.
Publishing of charts with a existing version will be skipped.
To override an existing version, you have to delete the release first und then run the github action.
