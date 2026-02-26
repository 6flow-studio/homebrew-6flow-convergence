class Tui < Formula
  desc "6Flow terminal UI"
  homepage "https://github.com/6flow-studio/6flow-convegence"
  url "https://github.com/6flow-studio/6flow-convegence/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "90c302b7e5aaba71654e4c270ba55782c7ca47505ba523225d4261174015fb75"

  depends_on "go" => :build

  def install
    cd "tools/tui" do
      system "go", "build", *std_go_args(output: bin/"6flow"), "./cmd/tui"
    end
  end

  test do
    assert_predicate bin/"6flow", :exist?
  end
end
