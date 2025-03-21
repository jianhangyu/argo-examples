{{- define "clusterDestinationOverride" -}}
{{- printf "{{ default .destination.name (get (dict" }}
{{- printf " \"us4-pre-a\" \"us4-pre-a02\"" }}
{{- printf ") .source.plugin.env.PLATFORM_INSTANCE_ID) }}" -}}
{{- end -}}

{{- define "ingressSuffixOverride" -}}
{{- printf "{{ default .source.plugin.env.INGRESS_HOSTNAME_SUFFIX (ternary (printf \"%%s.kyriba.io\" .source.plugin.env.PLATFORM_INSTANCE_ID) nil " -}}
{{- printf "(has .source.plugin.env.PLATFORM_INSTANCE_ID (list \"us4-pre-z\"))) }}" -}}
{{- end -}}