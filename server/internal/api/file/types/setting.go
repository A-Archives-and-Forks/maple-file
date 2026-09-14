package types

type FileSetting struct {
	UploadFormat    string       `json:"upload.format"`
	UploadRename    bool         `json:"upload.rename"`
	UploadLimitSize int64        `json:"upload.limit_size"`
	UploadLimitType string       `json:"upload.limit_type"`
	Thumb           ThumbSetting `json:"thumb"`
}

type ThumbSetting struct {
	Width     int  `json:"width"`
	Height    int  `json:"height"`
	Quality   int  `json:"quality"`
	AutoClean bool `json:"auto_clean"`
}
