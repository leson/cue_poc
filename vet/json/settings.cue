import "strings"
#Settings: {
	parameters?: #Parameters
	stages: [#Stage]
}

#Parameters: {
	credentialId: string
	recipents:    string
}

#Stage: {
	stageName?:strings.MinRunes(1)
	stageType:"deployToKong"
	apiRepoUrl:strings.MinRunes(1)
	apiRepoRef:strings.MinRunes(1)
	apiURL:[...strings.MinRunes(1)]
	groupId:strings.MinRunes(1)
	artifactId:strings.MinRunes(1)
	version:float
}

#Settings
