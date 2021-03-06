{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 24 -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{ if hasPrefix .Chart.Name .Release.Name -}}
{{- printf "%s" .Release.Name | trunc 24 -}}
{{- else -}}
{{- printf "%s-%s" $name .Release.Name | trunc 24 -}}
{{- end -}}
{{- end -}}
