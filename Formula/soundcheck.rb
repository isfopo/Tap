class Soundcheck < Formula
  desc "Terminal-based audio monitoring application"
  homepage "https://github.com/isfopo/soundcheck"
  url "https://github.com/isfopo/soundcheck/releases/download/0.0.16/soundcheck-x86_64-apple-darwin.tar.gz"
  sha256 "0f3d1dc1d4c0491b12be1a6dfa4fb5448ed025c9c25ffc876efe51f5d1f2a1ec"
  version "0.0.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/isfopo/soundcheck/releases/download/0.0.16/soundcheck-aarch64-apple-darwin.tar.gz"
      sha256 "d9c0465b84697bcb2b7c9571738706d434c8762888d422d14108601b8832a4f9"
    end
  end

  def install
    bin.install "soundcheck"
  end

  test do
    system "#{bin}/soundcheck", "--help"
  end
end
