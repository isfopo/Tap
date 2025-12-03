class Soundcheck < Formula
  desc "Terminal-based audio monitoring application"
  homepage "https://github.com/isfopo/soundcheck"
  url "https://github.com/isfopo/soundcheck/releases/download/0.0.14/soundcheck-x86_64-apple-darwin.tar.gz"
  sha256 "21152e69fb21303d55cf9bb24eb26008dfdac686b57014307a555bdea6b2e1b8"
  version "0.0.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/isfopo/soundcheck/releases/download/0.0.14/soundcheck-aarch64-apple-darwin.tar.gz"
      sha256 "474d2b6b4a1b7089d33df55b37ad7fab1eba0f7230fe1d1e94a23a32a4204baa"
    end
  end

  def install
    bin.install "soundcheck"
  end

  test do
    system "#{bin}/soundcheck", "--help"
  end
end
