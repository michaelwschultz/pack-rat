// TODO: DRY this code by creating a parent object
// then only setting the combination_index here

function run_interaction() {
	var combination_index = 2;
	// add one to value
	global.combination[combination_index]++
	
	if (global.combination[combination_index] >= 10) {
		global.combination[combination_index] = 0
	}
}