gci "Folder Path" | ? { $_.PSIsContainer } | sort CreationTime -desc | select -f 1 | Select Name -ExpandProperty Name
