# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OtelCli < Formula
  desc "OpenTelemetry command-line tool for sending events from shell scripts & similar environments"
  homepage "https://github.com/equinix-labs/otel-cli"
  version "0.0.19"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/equinix-labs/otel-cli/releases/download/v0.0.19/otel-cli-0.0.19-Darwin-x86_64.tar.gz"
      sha256 "531eae4177d863f07210c2608c295b89c4fdc651f6e8fa667c8a6b9c530afeff"
    end
    if Hardware::CPU.arm?
      url "https://github.com/equinix-labs/otel-cli/releases/download/v0.0.19/otel-cli-0.0.19-Darwin-arm64.tar.gz"
      sha256 "abad5d4b541663e4c5abcda18c02a89d51a7f39501edd4026ab25989c2621f0e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/equinix-labs/otel-cli/releases/download/v0.0.19/otel-cli-0.0.19-Linux-x86_64.tar.gz"
      sha256 "aaedd5b0b06abeee9a0e4fb605b3f48fc13e2d055904d78f3923a646768f8c2d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/equinix-labs/otel-cli/releases/download/v0.0.19/otel-cli-0.0.19-Linux-arm64.tar.gz"
      sha256 "10f8e85353e7b7f5fb2293518382792b567bd4b729672f445282597185ca1026"
    end
  end

  def install
    bin.install "otel-cli"
  end
end
