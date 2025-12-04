class Soundcheck < Formula
  desc "Terminal-based audio monitoring application"
  homepage "https://github.com/isfopo/soundcheck"
  url "https://github.com/isfopo/soundcheck/releases/download/0.0.19/soundcheck-x86_64-apple-darwin.tar.gz"
  sha256 "618faf44532e1beee6e172898d7bdf5cb1c692a72a32e3568f903448c20974ab"
  version "0.0.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/isfopo/soundcheck/releases/download/0.0.19/soundcheck-aarch64-apple-darwin.tar.gz"
      sha256 "b3b26a78aa9b4d7ad50a69fc92f1a704dd8ffeba7f6a16404e34686aa5cb8466"
    end
  end

  def install
    bin.install "soundcheck"
  end

  test do
    system "#{bin}/soundcheck", "--help"
  end
end
