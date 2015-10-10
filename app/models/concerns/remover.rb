module Remover
  def self.uncomment_rb(string)
    string.split("\n").reject {|line| line =~ Regexp.new('#.*')}
  end

  def self.uncomment_js(string)
    string.split("\n").reject {|line| line =~ Regexp.new('//.+$')}
  end

  def self.unlog_rb(string)
    string.split("\n").reject {|line| line =~ Regexp.new('(p |print |puts ).*$')}
end

  def self.unlog_js(string)
    string.split("\n").reject {|line| line =~ Regexp.new('console\.log.+$')}
  end

  def self.get_accepted_content(array, regexp)
    array.reject {|line| line  =~ regexp}
  end
end