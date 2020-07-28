module re.util.reflect;

/// in debug mode, allows inspectors to reflect on members
mixin template Reflect() {
    debug {
        import witchcraft;

        mixin Witchcraft; /// in debug mode, enable reflection
    }
}
