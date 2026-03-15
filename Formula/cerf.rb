class Cerf < Formula
  desc "A shell."
  homepage "https://github.com/cerfsh/cerf"
  version "0.1.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/cerfsh/cerf/releases/download/v0.1.0/cerf-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "33b00284c6daf576a064267c8a3fe3a691a30ba19487500dfaa0605b65e54511"
    elsif Hardware::CPU.arm?
      url "https://github.com/cerfsh/cerf/releases/download/v0.1.0/cerf-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ebdc484a361d9a489ea7754170a07093c3abc2218f0f6433eee0711302845423"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/cerfsh/cerf/releases/download/v0.1.0/cerf-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5560125cf86ee328f62b80502e78ff744d862f2821f52465c900ffd687c42f3f"
    elsif Hardware::CPU.arm?
      url "https://github.com/cerfsh/cerf/releases/download/v0.1.0/cerf-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5a2025d3e0bf92e1570def41430f600c1d9afd1aa9aa25e2bcf4b8aec84cb5f6"
    end
  end

  def install
    bin.install "cerf"
  end
end
