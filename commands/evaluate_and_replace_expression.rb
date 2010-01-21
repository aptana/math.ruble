require 'radrails'
# FIXME Not sure how to convert this and get it working!
command 'Evaluate and Replace Expression' do |cmd|
  cmd.key_binding = 'CONTROL+M2+C'
  cmd.output = :replace_selection
  cmd.input = :selection, :line
  cmd.invoke =<<-EOF
printf "%s" `{ tr -d ,; echo; } | bc -l`| perl -pe 's/(\.[^0]+)0+$|\.0+$/$1/'
EOF
end
