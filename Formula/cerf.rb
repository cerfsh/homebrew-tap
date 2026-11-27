class Cerf < Formula
  desc "A shell."
  homepage "https://github.com/cerfsh/cerf"
  version "0.3.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/cerfsh/cerf/releases/download/v0.3.2/cerf-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "0a873ee8ffbc8c5f963d3b0de55f456c895734ba80674a3c28124e20a8cfa62b"
    elsif Hardware::CPU.arm?
      url "https://github.com/cerfsh/cerf/releases/download/v0.3.2/cerf-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "0001e9f4081aeb454fb2eec5299860490109d82f6bbf0d10fdac3be04f8b6cf1"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/cerfsh/cerf/releases/download/v0.3.2/cerf-0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9fc0332c376cad09548268b908d624a342b0f88387fc4755b2c76788835bff7"
    elsif Hardware::CPU.arm?
      url "https://github.com/cerfsh/cerf/releases/download/v0.3.2/cerf-0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "579c54546280b91ad3766a1d229d71e3e42ea90d16d4035740b81745bf2ee97d"
    end
  end

  def install
    bin.install "cerf"
  end
end
