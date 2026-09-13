package main

import "C"
import (
	"github.com/honmaple/maple-file/server/internal/bootstrap"
)

func main() {}

//export Start
func Start(cfgPtr *C.char) (*C.char, *C.char) {
	if cfgPtr == nil {
		return nil, C.CString("cfg is required")
	}
	cfg := C.GoString(cfgPtr)

	result, err := bootstrap.Start(cfg)
	if err != nil {
		return nil, C.CString(err.Error())
	}
	return C.CString(result), nil
}

//export Stop
func Stop() {
	bootstrap.Stop()
}
