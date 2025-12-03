class Soundcheck < Formula
  desc "Terminal-based audio monitoring application"
  homepage "https://github.com/isfopo/soundcheck"
  url "https://github.com/isfopo/soundcheck/releases/download/0.0.13/soundcheck-x86_64-apple-darwin.tar.gz"
  sha256 "5106a864eb460ff829473f918ce9b2ff533063a7a0f62b92bc5218bbc20a744b"
  version "0.0.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/isfopo/soundcheck/releases/download/0.0.13/soundcheck-aarch64-apple-darwin.tar.gz"
      sha256 "54a4bef528517f2ad5afa741f643d4d22fc6c1607e49eeba136096f92b2ddc56"
    end
  end

  def install
    bin.install "soundcheck"
  end

  test do
    system "#{bin}/soundcheck", "--help"
  end
end
