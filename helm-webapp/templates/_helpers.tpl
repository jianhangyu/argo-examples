


{{- define "getAppName" -}}
{{- printf "{{ default .Values.test.default (get (dict " }}
{{- printf "  \"myhelmapp\" \"myapp-testing\" " }}
{{- printf "  \"myhelmapp2\" \"anotherValue\" " }}
{{- printf ") .Values.appName) }}" -}}
{{- end -}}


{{- define "getIngressSuffix" -}}
{{- printf "{{ default .Values.INGRESS_HOSTNAME_SUFFIX (get (dict " }}
{{- printf "  \"example\" \"%s.kyriba.io\" " .Values.PLATFORM_INSTANCE_ID }}
{{- printf ") .Values.PLATFORM_INSTANCE_ID) }}" -}}
{{- end -}}


{{- define "getIngressHost" -}}
{{- printf "{{ default .Values.INGRESS_HOSTNAME_SUFFIX (ternary (printf \"%%s.kyriba.io\" .Values.PLATFORM_INSTANCE_ID) nil " -}}
{{- printf "(has .Values.PLATFORM_INSTANCE_ID (list \"us4-pre-a\" \"example\"))) }}" -}}
{{- end -}}