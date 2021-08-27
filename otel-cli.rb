# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OtelCli < Formula
  desc "OpenTelemetry command-line tool for sending events from shell scripts & similar environments"
  homepage "https://github.com/equinix-labs/otel-cli"
  version "0.0.8"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/equinix-labs/otel-cli/releases/download/v0.0.8/otel-cli-0.0.8-Darwin-x86_64.tar.gz"
      sha256 "c2037ad955d0ca35366bbc4c36aa3d60ff2cd5b7c3aecc762b77d5c0643ee78c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/equinix-labs/otel-cli/releases/download/v0.0.8/otel-cli-0.0.8-Darwin-arm64.tar.gz"
      sha256 "0639cec14d618d6ac488e8fb65dd1f164f992aa4a7aff4e14806c5c29adf64fd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/equinix-labs/otel-cli/releases/download/v0.0.8/otel-cli-0.0.8-Linux-x86_64.tar.gz"
      sha256 "b72ee0a68668ad6b9cd9eb300c2f87e0e2d90d906e47c52f30d16d20ddb4c721"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/equinix-labs/otel-cli/releases/download/v0.0.8/otel-cli-0.0.8-Linux-arm64.tar.gz"
      sha256 "ad1a11737d7816ec8097995818aada34e171b5295086acf1c53d3441f553d2fd"
    end
  end

  def install
    bin.install "otel-cli"
  end
end
