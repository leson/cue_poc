package main

import (
	"bytes"
	"encoding/json"

	"cuelang.org/go/encoding/openapi"
)

func genOpenAPI(inst *cue.Instance) ([]byte, error) {
	b, err := openapi.Gen(inst, nil)
	if err != nil {
		return nil, err
	}

	var out bytes.Buffer
	err = json.Indent(&out, b, "", "   ")
	if err != nil {
		return nil, err
	}

	return out.Bytes(), nil
}

func main() {
	genOpenAPI("xx")
}
