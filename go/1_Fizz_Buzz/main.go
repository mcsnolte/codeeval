package main

import "fmt"
import "log"
import "bufio"
import "os"
import "strings"
import "strconv"

func main() {
    file, err := os.Open(os.Args[1])
    if err != nil {
        log.Fatal(err)
    }
    defer file.Close()
    scanner := bufio.NewScanner(file)
    for scanner.Scan() {
        //'scanner.Text()' represents the test case, do something with it
		parts := strings.Split(scanner.Text(), " ")
		f, err := strconv.Atoi(parts[0])
		b, err := strconv.Atoi(parts[1])
		x, err := strconv.Atoi(parts[2])
		if err != nil {
			fmt.Println(err)
			os.Exit(2)
		}

		for i := 1; i <= x; i++ {
			if i % f == 0 && i % b == 0 {
				fmt.Print("FB")
			} else if i % f == 0 {
				fmt.Print("F")
			} else if i % b == 0 {
				fmt.Print("B")
			} else {
				fmt.Print(i)
			}
			if i < x {
				fmt.Print(" ")
			}
		}
		fmt.Print("\n")
    }
}
