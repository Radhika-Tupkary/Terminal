xml.instruct!
xml.terminals do
  @terminals.each do |terminal|
    xml.terminal do
      xml.name terminal.name
      xml.description terminal.description
      xml.attrs terminal.attrs
    end
  end
end
