class DFi < Formula
  desc "Deezer downloader CLI and local web UI"
  homepage "https://github.com/d-fi/GoFi"
  url "https://github.com/d-fi/releases/releases/download/2.2.0/d-fi-macos.zip"
  sha256 "27e0671c2f550c25b446865b8be60a769d5d3daea6cea822ea295135e4450342"
  license "MIT"

  def install
    chmod 0755, "d-fi"
    bin.install "d-fi"
  end

  test do
    assert_match "Usage of d-fi", shell_output("#{bin}/d-fi --help")
  end
end
