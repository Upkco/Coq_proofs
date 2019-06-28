# Documentation of my proofs on probabilities in Coq :)


## List of the different files

### "Measure" folder
- Measure_defs.v : measurable spaces (definitions)
  Uses Sets.v Topo_defs.v Topo_elem.v Topo_results.v
- Measure_elem.v : measurable spaces (basic results)
  Uses Sets.v Topo_defs.v Topo_elem.v Topo_results.v Measure_defs.v 
  
### "Reals" folder
- Reals_int_def.v : real intervals (definitions)
  Uses Sets.v 
- Reals_int_elem.v : real intervals (basic results)
  Uses Reals_int_def.v Topo_defs.v Topo_elem.v Topo_results.v
- Reals_int_results.v : real intervals (more interesting results)
  Uses Reals_int_def.v Reals_int_elem.v Topo_defs.v Topo_elem.v Topo_results.v

### "Topo" folder
- Topo_defs.v : general topology (definitions)
- Topo_elem.v : general topology (basic results)
  Uses Topo_defs.v
- Topo_results.v : general topology (more interesting results)
  Uses Topo_defs.v Topo_elem.v
  
### "Sets_App" folder
- Sets_basics.v : general definitions and basic results on sets
- App_basics.v : general definitions and basic results on applications

