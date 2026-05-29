class DFi < Formula
  desc "Deezer downloader CLI and local web UI"
  homepage "https://github.com/d-fi/GoFi"
  url "https://github.com/d-fi/GoFi/archive/refs/tags/v2.3.0.tar.gz"
  sha256 "24986fa9afc18447d862d85d73fbfdcbe3c5957a595a5f08e5dba898cb8a641b"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/d-fi"
  end

  test do
    assert_match "Usage of d-fi", shell_output("#{bin}/d-fi --help 2>&1")
  end
end
