import "strings"
parameters: {
	credentialId: ""
	recipents:    ""
}
stages: [{
	stageName: "production delivery"
	stageType: "vadidateCR"
	cr_num:    strings.MinRunes(1)
}, {
	stageType:  "deployToKong"
	apiRepoUrl: strings.MinRunes(1)
	apiRepoRef: strings.MinRunes(1)
	apiURL: [
		...strings.MinRunes(1)
	]
	groupId:    strings.MinRunes(1)
	artifactId: strings.MinRunes(1)
	version:    strings.MinRunes(1)
}]
