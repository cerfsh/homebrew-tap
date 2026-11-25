class Cerf < Formula
  desc "A shell."
  homepage "https://github.com/cerfsh/cerf"
  version "0.3.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/cerfsh/cerf/releases/download/v0.3.1/cerf-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "7bd4af5f364cdd2dac75c4b916292e1627174c9a4c1642980b5d1af82a190026"
    elsif Hardware::CPU.arm?
      url "https://github.com/cerfsh/cerf/releases/download/v0.3.1/cerf-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "f6dd92d15962f82add705f3cf893705aeb3f829cc54d359dce720bffecae2f01"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/cerfsh/cerf/releases/download/v0.3.1/cerf-0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba8b973fc20ffe1b53df37a29ca55d31cd92f82a25733a717c58a4dfe8ce3263"
    elsif Hardware::CPU.arm?
      url "https://github.com/cerfsh/cerf/releases/download/v0.3.1/cerf-0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5efe2574ed87162eeb90ff2aaa16110b569f7818709da113ab982595e8131569"
    end
  end

  def install
    bin.install "cerf"
  end
end
