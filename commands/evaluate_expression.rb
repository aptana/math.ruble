require 'radrails'

command 'Evaluate Line / Selection' do |cmd|
  cmd.key_binding = 'CONTROL+M2+C'
  cmd.output = :insert_as_text
  cmd.input = :selection, :line
  cmd.invoke =<<-EOF
printf " = %s" `{ tr -d ,; echo; } | bc -l`| perl -pe 's/(\.[^0]+)0+$|\.0+$/$1/'
EOF
end
