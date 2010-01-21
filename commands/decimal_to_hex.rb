require 'radrails'

command 'Decimal to Hex' do |cmd|
  cmd.key_binding = 'CONTROL+M2+C'
  cmd.output = :replace_selection
  cmd.input = :selection, :word
  cmd.invoke =<<-EOF
bc <<<"obase=16;$(cat)"|tr -d \\n
EOF
end
