class Soundcheck < Formula
  desc "Terminal-based audio monitoring application"
  homepage "https://github.com/isfopo/soundcheck"
  url "https://github.com/isfopo/soundcheck/releases/download/0.0.12/soundcheck-x86_64-apple-darwin.tar.gz"
  sha256 "a4b15d1a8c753ff182e03b1195018dd7dc79dc5e644c2b23a5d91d1661a13c42"
  version "0.0.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/isfopo/soundcheck/releases/download/0.0.12/soundcheck-aarch64-apple-darwin.tar.gz"
      sha256 "b8357baaf160c7b782cbb31aeb071e1e4a261875bb0a6034bfad606bfa98d26b"
    end
  end

  def install
    bin.install "soundcheck"
  end

  test do
    system "#{bin}/soundcheck", "--help"
  end
end
