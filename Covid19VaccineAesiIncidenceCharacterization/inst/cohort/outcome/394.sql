{
	"cdmVersionRange" : ">=5.0.0",
	"PrimaryCriteria" : {
		"CriteriaList" : [
			{
				"ConditionOccurrence" : {
					"ConditionTypeExclude" : false,
					"ConditionSourceConcept" : 1
				}
			}
		],
		"ObservationWindow" : {
			"PriorDays" : 0,
			"PostDays" : 0
		},
		"PrimaryCriteriaLimit" : {
			"Type" : "All"
		}
	},
	"ConceptSets" : [
		{
			"id" : 1,
			"name" : "Facial nerve palsy FDA ICD10CM source concepts",
			"expression" : {
				"items" : [
					{
						"concept" : {
							"CONCEPT_ID" : 35207415,
							"CONCEPT_NAME" : "Bell's palsy",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "G51.0",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "ICD10CM",
							"CONCEPT_CLASS_ID" : "4-char billing code"
						},
						"isExcluded" : false,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 35207421,
							"CONCEPT_NAME" : "Disorder of facial nerve, unspecified",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "G51.9",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "ICD10CM",
							"CONCEPT_CLASS_ID" : "4-char billing code"
						},
						"isExcluded" : false,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 35207420,
							"CONCEPT_NAME" : "Other disorders of facial nerve",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "G51.8",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "ICD10CM",
							"CONCEPT_CLASS_ID" : "4-char billing code"
						},
						"isExcluded" : false,
						"includeDescendants" : false,
						"includeMapped" : false
					}
				]
			}
		}
	],
	"QualifiedLimit" : {
		"Type" : "All"
	},
	"ExpressionLimit" : {
		"Type" : "All"
	},
	"InclusionRules" : [
		{
			"name" : "has no events in prior 'clean window' 183 days",
			"expression" : {
				"Type" : "ALL",
				"CriteriaList" : [
					{
						"Criteria" : {
							"ConditionOccurrence" : {
								"ConditionTypeExclude" : false,
								"ConditionSourceConcept" : 1
							}
						},
						"StartWindow" : {
							"Start" : {
								"Days" : 183,
								"Coeff" : -1
							},
							"End" : {
								"Days" : 1,
								"Coeff" : -1
							},
							"UseIndexEnd" : false,
							"UseEventEnd" : false
						},
						"RestrictVisit" : false,
						"IgnoreObservationPeriod" : true,
						"Occurrence" : {
							"Type" : 0,
							"Count" : 0,
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
		"DateOffset" : {
			"DateField" : "StartDate",
			"Offset" : 1
		}
	},
	"CensoringCriteria" : [],
	"CollapseSettings" : {
		"CollapseType" : "ERA",
		"EraPad" : 0
	},
	"CensorWindow" : {}
}
