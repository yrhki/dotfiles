# Add path with checking for duplicate
addpath() {
    case ":$PATH:" in
        *":$1:"*) :;;
        *) PATH="$1:$PATH";;
    esac
}
