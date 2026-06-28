{ pkgs, ... }:

let
  power-governor = pkgs.writeShellScriptBin "power-governor" ''
    cd 

    # Check if powerprofilesctl is installed
    if ! command -v powerprofilesctl &>/dev/null; then
    	echo "Error: powerprofilesctl is not installed."
     	exit 1
    fi

	echo "Current power profile:"
	powerprofilesctl get
	echo

    echo "Select a power profile:"
    echo "1) Power Saver"
    echo "2) Balanced"
    echo "3) Performance"
    echo "4) Show current profile"
    echo "5) Exit"

    read -rp "Choice: " choice

    case "$choice" in
       1)
        powerprofilesctl set power-saver
        echo "Switched to Power Saver."
        ;;
       2)
        powerprofilesctl set balanced
        echo "Switched to Balanced."
        ;;
       3)
        powerprofilesctl set performance
        echo "Switched to Performance."
        ;;
       4)
        echo "Current profile: $(powerprofilesctl get)"
        ;;
       5)
        exit 0
        ;;
    *)
        echo "Invalid choice."
        exit 1
        ;;
    esac
  '';

in {
  environment.systemPackages = [ power-governor];
}
