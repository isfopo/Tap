class Soundcheck < Formula
  desc "Terminal-based audio monitoring application"
  homepage "https://github.com/isfopo/soundcheck"
  url "https://github.com/isfopo/soundcheck/releases/download/0.0.16/soundcheck-x86_64-apple-darwin.tar.gz"
  sha256 "b8559e1f59423fe33ac46d5ec627547bb45dd688197ae6c485531fb60cc0d4d9"
  version "0.0.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/isfopo/soundcheck/releases/download/0.0.16/soundcheck-aarch64-apple-darwin.tar.gz"
      sha256 "c4adb9e741c11610d48a24ea6cb9b62c132b4bf227c755c897cdb34883783a30"
    end
  end

  def install
    bin.install "soundcheck"
  end

  test do
    system "#{bin}/soundcheck", "--help"
  end
end
