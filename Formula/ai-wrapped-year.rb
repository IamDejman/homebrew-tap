class AiWrappedYear < Formula
  desc "Your year with AI coding tools, as a story you can share"
  homepage "https://iamdejman.github.io/ai-wrapped-year/"
  url "https://registry.npmjs.org/ai-wrapped-year/-/ai-wrapped-year-0.3.0.tgz"
  sha256 "42774e1f1d5e4663409a622431edf35dc4d2b4885f556a404333e1634c93333e"
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
