package utils

import (
	"github.com/honmaple/maple-file/server/internal/platform/utils/ioutil"
	"github.com/honmaple/maple-file/server/internal/platform/utils/strutil"
)

var (
	IoCopy  = ioutil.Copy
	IoCopyN = ioutil.CopyN
)

var (
	StrReplace = strutil.Replace
)
