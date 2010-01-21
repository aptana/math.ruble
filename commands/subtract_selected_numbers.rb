require 'radrails'

command 'Subtract Numbers in Line / Selection' do |cmd|
  cmd.key_binding = 'CONTROL+M2+C'
  cmd.output = :insert_as_text
  cmd.input = :selection, :line
  cmd.invoke =<<-EOF
printf " = %s" `{ tr -d ,|tr -cs '[0-9.]' ' '|perl -pe 's/([0-9.]+) (?=[0-9.])/$1-/g'; echo; } | bc -l`| perl -pe 's/(\.[^0]+)0+$|\.0+$/$1/'
EOF
end
