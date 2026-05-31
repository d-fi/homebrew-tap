class DFi < Formula
  desc "Deezer downloader CLI and local web UI"
  homepage "https://github.com/d-fi/GoFi"
  url "https://github.com/d-fi/GoFi/archive/refs/tags/v2.3.2.tar.gz"
  sha256 "0f8f07aed7b3845ef15c7b5f6cb7bb3bd2e43d33b8f4bc2658d4d9ac535a6228"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/d-fi"
  end

  test do
    assert_match "Usage of d-fi", shell_output("#{bin}/d-fi --help 2>&1")
  end
end
