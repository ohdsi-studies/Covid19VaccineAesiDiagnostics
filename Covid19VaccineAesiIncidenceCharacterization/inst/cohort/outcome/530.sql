{
	"cdmVersionRange" : ">=5.0.0",
	"PrimaryCriteria" : {
		"CriteriaList" : [
			{
				"DrugExposure" : {
					"CodesetId" : 1,
					"DrugTypeExclude" : false
				}
			}
		],
		"ObservationWindow" : {
			"PriorDays" : 0,
			"PostDays" : 0
		},
		"PrimaryCriteriaLimit" : {
			"Type" : "First"
		}
	},
	"ConceptSets" : [
		{
			"id" : 1,
			"name" : "Janssen COVID-19 vaccine",
			"expression" : {
				"items" : [
					{
						"concept" : {
							"CONCEPT_ID" : 702866,
							"CONCEPT_NAME" : "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "212",
							"DOMAIN_ID" : "Drug",
							"VOCABULARY_ID" : "CVX",
							"CONCEPT_CLASS_ID" : "CVX"
						},
						"isExcluded" : false,
						"includeDescendants" : true,
						"includeMapped" : false
					}
				]
			}
		}
	],
	"QualifiedLimit" : {
		"Type" : "First"
	},
	"ExpressionLimit" : {
		"Type" : "First"
	},
	"InclusionRules" : [
		{
			"name" : "has at least 365d prior observation",
			"expression" : {
				"Type" : "ALL",
				"CriteriaList" : [
					{
						"Criteria" : {
							"ObservationPeriod" : {}
						},
						"StartWindow" : {
							"Start" : {
								"Coeff" : -1
							},
							"End" : {
								"Days" : 365,
								"Coeff" : -1
							},
							"UseIndexEnd" : false,
							"UseEventEnd" : false
						},
						"EndWindow" : {
							"Start" : {
								"Days" : 0,
								"Coeff" : -1
							},
							"End" : {
								"Coeff" : 1
							},
							"UseIndexEnd" : false,
							"UseEventEnd" : true
						},
						"RestrictVisit" : false,
						"IgnoreObservationPeriod" : false,
						"Occurrence" : {
							"Type" : 2,
							"Count" : 1,
							"IsDistinct" : false
						}
					}
				],
				"DemographicCriteriaList" : [],
				"Groups" : []
			}
		}
	],
	"EndStrategy" : {
		"CustomEra" : {
			"DrugCodesetId" : 1,
			"GapDays" : 56,
			"Offset" : 0
		}
	},
	"CensoringCriteria" : [],
	"CollapseSettings" : {
		"CollapseType" : "ERA",
		"EraPad" : 0
	},
	"CensorWindow" : {}
}
