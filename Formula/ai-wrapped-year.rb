class AiWrappedYear < Formula
  desc "Your year with AI coding tools, as a story you can share"
  homepage "https://aiyearwrapped.com/"
  url "https://registry.npmjs.org/ai-wrapped-year/-/ai-wrapped-year-0.4.1.tgz"
  sha256 "0fbd4e6769d1dc985c5e6d0db848993799e2b07a5de28dc437beb46c9cf03282"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "your year with AI coding tools", shell_output("#{bin}/ai-wrapped-year --help")
  end
end
