require 'radrails'

command 'Hex to Decimal' do |cmd|
  cmd.key_binding = 'CONTROL+M2+C'
  cmd.output = :replace_selection
  cmd.input = :selection, :word
  cmd.invoke =<<-EOF
bc <<<"ibase=16;$(tr '[a-z]' '[A-Z]')"|tr -d \\n
EOF
end
