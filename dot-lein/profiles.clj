{:user {:signing {:gpg-key "B87D8C4C"}
        :plugins [[jonase/eastwood "0.1.3"]
                  [lein-kibit "0.0.8"]
                  [lein-cljsbuild "0.3.3"]
                  [lein-pprint "1.1.1"]
                  [lein-try "0.3.2"]
                  [lein-midje "3.1.1"]]
        :dependencies [[clj-stacktrace "0.2.7"]]
        :injections [(let [orig (ns-resolve (doto 'clojure.stacktrace require)  'print-cause-trace)
                           new  (ns-resolve (doto 'clj-stacktrace.repl require) 'pst)]
                       (alter-var-root orig (constantly (deref new))))]}}
