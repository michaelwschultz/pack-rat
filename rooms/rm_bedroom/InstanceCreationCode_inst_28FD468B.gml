function run_interaction() {
	var combination_index = 0;
	// add one to value
	global.combination[combination_index]++
	
	if (global.combination[combination_index] >= 10) {
		global.combination[combination_index] = 0
	}
}