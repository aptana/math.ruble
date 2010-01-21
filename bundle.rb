require 'java'
require 'radrails'

bundle 'Math' do |bundle|
  bundle.author = 'Allan Odgaard'
  bundle.contact_email_rot_13 = 'gz-ohaqyrf@znpebzngrf.pbz'
  bundle.description =  <<END
Support for performing different calculations inside TextMate.
END
  bundle.repository = "git://github.com/aptana/math-rbundle.git"
  
  bundle.menu 'Math' do |main_menu|
    main_menu.command 'Evaluate Line / Selection'
    main_menu.command 'Evaluate and Replace Expression'
    main_menu.command 'Evaluate and Replace Expression (rounded)'
    main_menu.separator
    main_menu.command 'Add Numbers in Line / Selection'
    main_menu.command 'Subtract Numbers in Line / Selection'
    main_menu.separator
    main_menu.menu 'Convert' do |submenu|
      submenu.command 'Decimal to Hex'
      submenu.command 'Decimal to Octal'
      submenu.command 'Hex to Decimal'
      submenu.command 'Octal to Decimal'
    end
    main_menu.separator
    main_menu.command 'Send Line / Selection to Google Calculator'
  end
end
