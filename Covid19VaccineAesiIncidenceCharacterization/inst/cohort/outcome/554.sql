{
	"cdmVersionRange" : ">=5.0.0",
	"PrimaryCriteria" : {
		"CriteriaList" : [
			{
				"ConditionOccurrence" : {
					"CodesetId" : 2,
					"ConditionTypeExclude" : false
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
			"id" : 2,
			"name" : "Seizure (removing epilepsy status concepts)",
			"expression" : {
				"items" : [
					{
						"concept" : {
							"CONCEPT_ID" : 380378,
							"CONCEPT_NAME" : "Epilepsy",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "84757009",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 4179936,
							"CONCEPT_NAME" : "Childhood absence epilepsy",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "50866000",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 443700,
							"CONCEPT_NAME" : "Eclampsia",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "15938005",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 133816,
							"CONCEPT_NAME" : "Eclampsia - delivered",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "198990007",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 137613,
							"CONCEPT_NAME" : "Eclampsia in pregnancy",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "198992004",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 4116344,
							"CONCEPT_NAME" : "Eclampsia in puerperium",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "303063000",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 45757050,
							"CONCEPT_NAME" : "Epilepsy in mother complicating pregnancy",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "100941000119100",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 4310999,
							"CONCEPT_NAME" : "Epilepsy, not refractory",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "422513000",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 374924,
							"CONCEPT_NAME" : "Generalized convulsive epilepsy",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "65120008",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 4055361,
							"CONCEPT_NAME" : "Generalized epilepsy",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "19598007",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 376680,
							"CONCEPT_NAME" : "Generalized non-convulsive epilepsy",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "192979009",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 4274575,
							"CONCEPT_NAME" : "Idiopathic generalized epilepsy",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "36803009",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 4267274,
							"CONCEPT_NAME" : "Juvenile myoclonic epilepsy",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "6204001",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 374915,
							"CONCEPT_NAME" : "Localization-related epilepsy",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "230381009",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 40483317,
							"CONCEPT_NAME" : "Refractory epilepsy",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "445355009",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 43530734,
							"CONCEPT_NAME" : "Refractory generalized convulsive epilepsy",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "3371000119106",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 40480055,
							"CONCEPT_NAME" : "Refractory generalized nonconvulsive epilepsy",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "441678004",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 46271795,
							"CONCEPT_NAME" : "Refractory idiopathic generalized epilepsy",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "710046001",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 44784591,
							"CONCEPT_NAME" : "Refractory juvenile myoclonic epilepsy",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "698761003",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 4309257,
							"CONCEPT_NAME" : "Refractory localization-related epilepsy",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "422724001",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : true,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 4196708,
							"CONCEPT_NAME" : "Seizure related finding",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "313287004",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
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
		"Type" : "All"
	},
	"ExpressionLimit" : {
		"Type" : "All"
	},
	"InclusionRules" : [
		{
			"name" : "has no events in prior 'clean window' - 42 days",
			"expression" : {
				"Type" : "ALL",
				"CriteriaList" : [
					{
						"Criteria" : {
							"ConditionOccurrence" : {
								"CodesetId" : 2,
								"ConditionTypeExclude" : false
							}
						},
						"StartWindow" : {
							"Start" : {
								"Days" : 42,
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
