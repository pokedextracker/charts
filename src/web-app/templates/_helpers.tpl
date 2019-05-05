{{- define "helpers.labels" }}
app: {{ required "name is required" .Values.name | quote }}
release: {{ .Release.Name | quote }}
{{- end }}

{{- define "helpers.metadata" }}
name: {{ required "name is required" .Values.name | quote }}
labels:
{{- include "helpers.labels" . | indent 2 }}
{{- end }}
