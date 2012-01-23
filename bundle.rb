require 'java'
require 'ruble'

bundle do |bundle|
  bundle.author = 'Christopher Williams'
  bundle.copyright = "Copyright 2010 Aptana Inc. Distributed under the MIT license."
  bundle.display_name =  t(:bundle_name)
  bundle.description = "Support for performing different calculations, ported from TextMate."
  bundle.repository = "git://github.com/aptana/math.ruble.git"
  
  bundle.menu t(:bundle_name) do |main_menu|
    main_menu.command t(:eval_line)
    main_menu.command t(:eval_and_replace)
    main_menu.command t(:eval_and_replace_rounded)
    main_menu.separator
    main_menu.command t(:add_numbers)
    main_menu.command t(:subtract_numbers)
    main_menu.separator
    main_menu.menu t(:convert) do |submenu|
      submenu.command t(:decimal_to_hex)
      submenu.command t(:decimal_to_octal)
      submenu.command t(:hex_to_decimal)
      submenu.command t(:octal_to_decimal)
    end
    main_menu.separator
    main_menu.command t(:send_to_google_calc)
  end
end
