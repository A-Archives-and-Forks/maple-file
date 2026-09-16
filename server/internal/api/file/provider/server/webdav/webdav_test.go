package webdav

import (
	"net"
	"testing"
)

func TestListenAddr(t *testing.T) {
	tests := []struct {
		name string
		goos string
		host string
		want string
	}{
		{
			name: "desktop listens on all IPv4 interfaces",
			goos: "windows",
			host: "192.168.31.216",
			want: "0.0.0.0:5005",
		},
		{
			name: "macOS listens on all IPv4 interfaces",
			goos: "darwin",
			host: "192.168.31.162",
			want: "0.0.0.0:5005",
		},
		{
			name: "android listens on its advertised interface",
			goos: "android",
			host: "192.168.31.216",
			want: "192.168.31.216:5005",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := listenAddr(tt.goos, tt.host, 5005)
			if got != tt.want {
				t.Errorf("listenAddr() = %q, want %q", got, tt.want)
			}
		})
	}
}

func TestAdvertiseAddr(t *testing.T) {
	addr := &net.TCPAddr{
		IP:   net.IPv4zero,
		Port: 5005,
	}

	got := advertiseAddr(addr, "192.168.31.216")
	want := "192.168.31.216:5005"
	if got != want {
		t.Errorf("advertiseAddr() = %q, want %q", got, want)
	}
}
