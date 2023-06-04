import "strings"
#Settings: {
	parameters?: #Parameters
	stages: [#Stage]
}

#Parameters: {
	credentialId: string
	recipents:    string
}

#URL: string & =~"^(https?://)?([a-zA-Z0-9\\.\\-_]+\\.[a-zA-Z]{2,})(:\\d+)?(/.*)?$"

#Stage: {
	stageName?:strings.MinRunes(1)
	stageType:"deployToKong"
	apiRepoUrl:strings.MinRunes(1)
	apiRepoRef:strings.MinRunes(1)
	apiURL:[...#URL]
	groupId:strings.MinRunes(1)
	artifactId:strings.MinRunes(1)
	version:float
}

#Settings
