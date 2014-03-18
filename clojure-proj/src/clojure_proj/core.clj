(ns clojure_proj.core)

(use 'clojure.java.io)
(use '[clojure.string :only (join split)])

; Fizz Buzz
(defn -main [& args]
  (with-open [rdr (clojure.java.io/reader (first *command-line-args*))]
    (doseq [line (remove empty? (line-seq rdr))]
	  (def parts (split line #"\s"))
	  (def answer [])
	  (def f (read-string (parts 0)))
	  (def b (read-string (parts 1)))
	  (dotimes [i (read-string (parts 2))]
	    (def x (inc i))
	    (def answer (concat answer
		  (cond
		    (and (== (mod x f) 0) (== (mod x b) 0)) ["FB"]
		    (== (mod x f) 0) ["F"]
		    (== (mod x b) 0) ["B"]
			:else [x]
		  ))))
      (println (join " " answer)))))

