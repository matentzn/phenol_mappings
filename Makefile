ROBOT=robot

upheno_associated_entities.tsv: upheno_mp-hp_with_relations.owl
	#$(ROBOT) materialize --reasoner ELK -i $< --term "<http://purl.obolibrary.org/obo/UPHENO_0000001>" -o tmp/mat_upheno.owl
	$(ROBOT) query -i $< -f tsv --query phenotype_entity_associations.sparql $@