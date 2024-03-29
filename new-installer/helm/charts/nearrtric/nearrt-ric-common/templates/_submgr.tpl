################################################################################
#   Copyright (c) 2019 AT&T Intellectual Property.                             #
#                                                                              #
#   Licensed under the Apache License, Version 2.0 (the "License");            #
#   you may not use this file except in compliance with the License.           #
#   You may obtain a copy of the License at                                    #
#                                                                              #
#       http://www.apache.org/licenses/LICENSE-2.0                             #
#                                                                              #
#   Unless required by applicable law or agreed to in writing, software        #
#   distributed under the License is distributed on an "AS IS" BASIS,          #
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   #
#   See the License for the specific language governing permissions and        #
#   limitations under the License.                                             #
################################################################################

{{- define "common.name.submgr" -}}
  {{- printf "submgr" -}}
{{- end -}}

{{- define "common.fullname.submgr" -}}
  {{- $name := ( include "common.name.submgr" . ) -}}
  {{- $namespace := ( include "common.namespace.platform" . ) -}}
  {{- printf "%s-%s" $namespace $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "common.configmapname.submgr" -}}
  {{- $name := ( include "common.fullname.submgr" . ) -}}
  {{- printf "configmap-%s" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{- define "common.deploymentname.submgr" -}}
  {{- $name := ( include "common.fullname.submgr" . ) -}}
  {{- printf "deployment-%s" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "common.containername.submgr" -}}
  {{- $name := ( include "common.fullname.submgr" . ) -}}
  {{- printf "container-%s" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "common.servicename.submgr.rmr" -}}
  {{- $name := ( include "common.fullname.submgr" . ) -}}
  {{- printf "service-%s-rmr" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "common.servicename.submgr.http" -}}
  {{- $name := ( include "common.fullname.submgr" . ) -}}
  {{- printf "service-%s-http" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "common.serviceport.submgr.rmr.data" -}}4560{{- end -}}
{{- define "common.serviceport.submgr.rmr.route" -}}4561{{- end -}}
{{- define "common.serviceport.submgr.http" -}}8088{{- end -}}
