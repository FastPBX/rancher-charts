{{/* Generate Basic Labels */}}
{{- define "mychart.labels"}}
  labels:
    generator: helm
    date: {{ now | html | htmlDate }}
    chart: {{ .Chart.Name }}
    version: {{ .Chart.Version }}
{{- end }}

{{- define "mychart.app" -}}
app_name: {{ .Chart.Name }}
app_version: "{{ .Chart.Version }}-{{ .Release.Time.Seconds }}"
{{- end -}}

{{- define "labels" }}from: mychart{{ end }}