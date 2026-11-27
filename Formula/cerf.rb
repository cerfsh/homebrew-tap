class Cerf < Formula
  desc "A shell."
  homepage "https://github.com/cerfsh/cerf"
  version "0.3.3"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/cerfsh/cerf/releases/download/v0.3.3/cerf-0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "86ecda436d9b31a6ed4461a863d43ecd83cb30cf6303bdb2d371e43b13a615b7"
    elsif Hardware::CPU.arm?
      url "https://github.com/cerfsh/cerf/releases/download/v0.3.3/cerf-0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "36ce11f9bc3431b78d6ebf8f3855e7588f3c1ce201b0a6842a54a7eea926f987"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/cerfsh/cerf/releases/download/v0.3.3/cerf-0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2116da769a04566930b0c8eaf3f2d4d48165df2f453dc61b46344844474ae444"
    elsif Hardware::CPU.arm?
      url "https://github.com/cerfsh/cerf/releases/download/v0.3.3/cerf-0.3.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d8aafc1fa8704c923284954e53451d987c2ba3847a1a74a3edc1e9216140d5a4"
    end
  end

  def install
    bin.install "cerf"
  end
end
