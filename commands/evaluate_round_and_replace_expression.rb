require 'radrails'
# FIXME Not sure how to convert this and get it working!
command 'Evaluate and Replace Expression (rounded)' do |cmd|
  cmd.key_binding = 'CONTROL+M2+C'
  cmd.output = :replace_selection
  cmd.input = :selection, :line
  cmd.invoke =<<-EOF
printf "%.0f" `{ tr -d ,; echo; } | bc -l`
EOF
end
