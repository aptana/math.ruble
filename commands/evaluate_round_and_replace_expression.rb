require 'radrails'
# FIXME Won't work on Windows! Convert to ruby!
command 'Evaluate and Replace Expression (rounded)' do |cmd|
  cmd.key_binding = 'CONTROL+M2+C'
  cmd.output = :replace_selection
  cmd.input = :selection, :line
  cmd.invoke =<<-EOF
printf "%.0f" `{ tr -d ,; echo; } | bc -l`
EOF
end
