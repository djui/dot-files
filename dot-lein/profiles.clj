{:user {:plugins [[lein-cljsbuild "0.3.2"]
                  [lein-pprint "1.1.1"]
                  [lein-try "0.3.0"]]
        :injections [(use 'clojure.repl)
                     (use 'clojure.java.javadoc)
                     (use 'clojure.pprint)]
        :signing {:gpg-key "B87D8C4C"}}}
