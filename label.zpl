^XA
^CI28
^FO50,40^A0N,80,80^FD{{ .NameFirst }} {{ .NameLast }}^FS
^FO50,130^A0N,40,40^FD{{ .Subtext }}^FS
{{- if gt .MealsCount 0 }}
^FO50,200^A0N,30,30^FDMeals:^FS
{{- range $i, $meal := .MealsArray }}
^FO50,{{ add 235 (mul $i 35) }}^A0N,28,0^FD{{ $meal }}^FS
{{- end }}
{{- end }}
^FO380,200^^BQN,2,8^FDQA,{{ .QrCodeValue }}^FS
^FO50,470^A0N,35,35^FD{{ .EventPass }}^FS
^XZ
