{
	"cdmVersionRange" : ">=5.0.0",
	"PrimaryCriteria" : {
		"CriteriaList" : [
			{
				"DrugExposure" : {
					"CodesetId" : 3,
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
			"id" : 3,
			"name" : "Moderna COVID-19 vaccine",
			"expression" : {
				"items" : [
					{
						"concept" : {
							"CONCEPT_ID" : 37003517,
							"CONCEPT_NAME" : "SARS-CoV-2 (COVID-19) vaccine, mRNA-1273 0.2 MG/ML",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "2470233",
							"DOMAIN_ID" : "Drug",
							"VOCABULARY_ID" : "RxNorm",
							"CONCEPT_CLASS_ID" : "Clinical Drug Comp"
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
			"DrugCodesetId" : 3,
			"GapDays" : 56,
			"Offset" : 0,
			"DaysSupplyOverride" : 1
		}
	},
	"CensoringCriteria" : [],
	"CollapseSettings" : {
		"CollapseType" : "ERA",
		"EraPad" : 0
	},
	"CensorWindow" : {}
}
