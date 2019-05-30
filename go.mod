module github.com/bblfsh/libuast

go 1.12

require (
	github.com/antchfx/xpath v0.0.0-20190319080838-ce1d48779e67 // indirect
	github.com/bblfsh/sdk/v3 v3.1.0
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/gogo/protobuf v1.2.1 // indirect
	github.com/golang/protobuf v1.3.1 // indirect
	github.com/pkg/errors v0.8.1 // indirect
	github.com/stretchr/testify v1.3.0 // indirect
	gopkg.in/yaml.v2 v2.2.2 // indirect
)

// FIXME: remove once https://github.com/bblfsh/sdk/pull/403 is merged
replace github.com/bblfsh/sdk/v3 => github.com/dennwc/sdk/v3 v3.0.0-20190603173141-0c143b25c491
