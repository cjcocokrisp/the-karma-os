package main

import (
	"fmt"
	"os"
	"strconv"
	"strings"

	"github.com/cjcocokrisp/go-dexcomshare"
	"github.com/joho/godotenv"
)

func errorAndExit() {
	fmt.Printf("ERR")
	os.Exit(0)
}

func main() {
	err := godotenv.Load()
	if err != nil {
		errorAndExit()
	}

	// Login to Dexcom session
	dexcom, err := dexcomshare.Login(os.Getenv("USERNAME"), os.Getenv("PASSWORD"))
	if err != nil {
		errorAndExit()
	}

	// Get latest EGV
	egv, err := dexcom.GetLatestEGV()
	if err != nil {
		errorAndExit()
	}

	// Read cached EGV data from cached_egvs.txt
	f, err := os.ReadFile("./cached_egvs.txt")
	if err != nil {
		errorAndExit()
	}

	// Parse cached data and find previous reading that isnt current one
	var prev_egv int
	data := strings.Split(string(f), "\n")
	for _, v := range data {
		reading := strings.Split(v, ",")
		if reading[1] != egv.ST {
			prev_egv, _ = strconv.Atoi(reading[0])
			break
		}
		prev_egv = egv.Value
	}

	// Calculate sign character then print
	sign := "+"
	change := egv.Value - prev_egv
	if prev_egv == -1 {
		change = 0
	} else if change < 0 {
		sign = "-"
		change *= -1
	}

	fmt.Printf("%d %s %s%d", egv.Value, egv.TrendArrow, sign, change)

	// Prepare cache string and then write string to file (saves up to 20)
	new_data := []string{strconv.Itoa(egv.Value) + "," + egv.ST}
	new_data = append(new_data, data...)

	var cacheStr string
	amount := 0
	for _, v := range new_data {
		if amount == 20 {
			break
		}
		cacheStr += v + "\n"
		amount += 1
	}
	cacheStr = strings.TrimSuffix(cacheStr, "\n")
	os.WriteFile("./cached_egvs.txt", []byte(cacheStr), 0644)
}
