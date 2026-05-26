class DFi < Formula
  desc "Deezer downloader CLI and local web UI"
  homepage "https://github.com/d-fi/GoFi"
  url "https://github.com/d-fi/GoFi/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "1834273913ce253695f7be2d25f3291dad76940cc2a683b5327ac9f303d83e28"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/d-fi"
  end

  test do
    assert_match "Usage of d-fi", shell_output("#{bin}/d-fi --help 2>&1")
  end
end
