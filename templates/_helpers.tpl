{{/* We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec). */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "devops-assignment.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Default fully qualified app name.
*/}}
{{- define "devops-assignment.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}