{{/*
Expand the name of the chart.
*/}}
{{- define "comet-site-preview.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "comet-site-preview.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "comet-site-preview.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "comet-site-preview.labels" -}}
helm.sh/chart: {{ include "comet-site-preview.chart" . }}
{{ include "comet-site-preview.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "comet-site-preview.selectorLabels" -}}
app: {{ include "comet-site-preview.fullname" . }}
app.kubernetes.io/name: {{ include "comet-site-preview.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Prelogin Common labels
*/}}
{{- define "comet-site-preview.prelogin.labels" -}}
helm.sh/chart: {{ include "comet-site-preview.chart" . }}
{{ include "comet-site-preview.prelogin.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Prelogin Selector labels
*/}}
{{- define "comet-site-preview.prelogin.selectorLabels" -}}
app: {{ include "comet-site-preview.fullname" . }}-prelogin
app.kubernetes.io/name: {{ include "comet-site-preview.name" . }}-prelogin
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
