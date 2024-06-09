function description() {
    echo "Globs are a type of pattern matching." \
         "They can be used to match filenames or other strings."
    echo ""
    echo "Globs are composed of normal characters and metacharacters." \
         "Metacharacters are characters that have a special meaning." \
         "These are the metacharacters that can be used in globs:"
    echo "  *: Matches any string, including the null string."
    echo "  ?: Matches any single character."
    echo "  [...]: Matches any one of the enclosed characters."
    echo ""
    echo "Globs are implicitly anchored at both ends." \
         "What this means is that a glob must match a whole string" \
         "(filename or data string)." \
         "A glob of a* will not match the string cat," \
         "because it only matches the at, not the whole string." \
         "A glob of ca*, however, would match cat."
    echo ""
    echo -e "${BLUE}# ?!.${NORMAL}"
}

function hint() {
    echo ""
}

function validate() {
    true
}
