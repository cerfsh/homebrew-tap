class Cerf < Formula
  desc "A shell."
  homepage "https://github.com/cerfsh/cerf"
  version "0.2.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/cerfsh/cerf/releases/download/v0.2.0/cerf-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "007dc0fa23bc4c542e2866a7f5c0b4a44becf231ed6d8e5269b6743dd10b0f07"
    elsif Hardware::CPU.arm?
      url "https://github.com/cerfsh/cerf/releases/download/v0.2.0/cerf-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "01821316ae735f7328b0b963704b8dbc96baffea5b535c70aeade1cb09865474"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/cerfsh/cerf/releases/download/v0.2.0/cerf-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "777c6909e2f51680b5735d3b8f7d174ee3d90bd3af1bde57c8effabcee7e235e"
    elsif Hardware::CPU.arm?
      url "https://github.com/cerfsh/cerf/releases/download/v0.2.0/cerf-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa1ce63ca3bf7e6503a3f383907ad971011fe196c22adde022891d33bb793dfc"
    end
  end

  def install
    bin.install "cerf"
  end
end
