class DFi < Formula
  desc "Deezer downloader CLI and local web UI"
  homepage "https://github.com/d-fi/GoFi"
  url "https://github.com/d-fi/GoFi/archive/refs/tags/v2.3.3.tar.gz"
  sha256 "d4d3db82c405ff28c60d92c65e3ff1386421fb070ebc1d7dcc7b07f0687439e3"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/d-fi"
  end

  test do
    assert_match "Usage of d-fi", shell_output("#{bin}/d-fi --help 2>&1")
  end
end
