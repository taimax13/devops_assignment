{{- define "test-app.name" -}}
  test-app
{{- end -}}

{{- define "test-app.fullname" -}}
  {{- printf "%s-%s" .Release.Name (include "test-app.name" .) -}}
{{- end -}}