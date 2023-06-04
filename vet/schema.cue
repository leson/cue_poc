import "strings"

#Parameters: {
	credentialId: string
	recipents:    string
}
#StageCR: {
	stageName?: string
	stageType:  "vadidateCR"
	cr_num:     strings.MinRunes(1)
}

#StageKong: {
	stageName?: string
	stageType:  "deployToKong"
	apiRepoUrl: strings.MinRunes(1)
	apiRepoRef: strings.MinRunes(1)
	apiURL: [...strings.MinRunes(1)]
	groupId:    strings.MinRunes(1)
	artifactId: string
	version:    string
}

#SettingsNonProd: {
	parameters: #Parameters
	stages:[#StageKong]
}

#SettingsProd: {
	parameters: #Parameters
	stages:[#StageCR,#StageKong]
}

