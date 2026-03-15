class Cerf < Formula
  desc "A shell."
  homepage "https://github.com/cerfsh/cerf"
  version "0.1.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/cerfsh/cerf/releases/download/v0.1.1/cerf-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "71cc65dcc7dc503df3565543d4587f24ca93b2ce32f972e84e03ccad2eb03006"
    elsif Hardware::CPU.arm?
      url "https://github.com/cerfsh/cerf/releases/download/v0.1.1/cerf-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "75aa559d19a4f958fdd4ae23673c0569f5ba3e1abc2697fbc299cb7f14d02ca3"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/cerfsh/cerf/releases/download/v0.1.1/cerf-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e06b9924ac9684596aaa8d6a42ece1c75b4a76db18fa59fcfff7eb8a9c0d5e05"
    elsif Hardware::CPU.arm?
      url "https://github.com/cerfsh/cerf/releases/download/v0.1.1/cerf-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "68b7b3e4f246873ac3465d657d8a2bcc7ea426f3b4bc932a04966716b3eb15e8"
    end
  end

  def install
    bin.install "cerf"
  end
end
