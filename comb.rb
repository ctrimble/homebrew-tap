require 'formula'

class Comb < Formula
  homepage 'https://github.com/meltmedia/combinatorics'
  version '0.3.0-SNAPSHOT'
  head 'git://github.com/meltmedia/combintorics.git', :branch => 'master', :using => :git

  def install
    system "mvn clean install -Dmaven.test.skip=true"
    bin.install Dir["combinatorics-cli/target/comb"]
  end

end
