{
	"cdmVersionRange" : ">=5.0.0",
	"PrimaryCriteria" : {
		"CriteriaList" : [
			{
				"ConditionOccurrence" : {
					"ConditionTypeExclude" : false,
					"ConditionSourceConcept" : 3
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
	"AdditionalCriteria" : {
		"Type" : "ALL",
		"CriteriaList" : [
			{
				"Criteria" : {
					"VisitOccurrence" : {
						"CodesetId" : 4,
						"VisitTypeExclude" : false
					}
				},
				"StartWindow" : {
					"Start" : {
						"Coeff" : -1
					},
					"End" : {
						"Days" : 0,
						"Coeff" : 1
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
	},
	"ConceptSets" : [
		{
			"id" : 3,
			"name" : "Appendicitis FDA ICD10CM source concepts",
			"expression" : {
				"items" : [
					{
						"concept" : {
							"CONCEPT_ID" : 1595604,
							"CONCEPT_NAME" : "Acute appendicitis with generalized peritonitis, with abscess",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "K35.21",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "ICD10CM",
							"CONCEPT_CLASS_ID" : "5-char billing code"
						},
						"isExcluded" : false,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 1595603,
							"CONCEPT_NAME" : "Acute appendicitis with generalized peritonitis, without abscess",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "K35.20",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "ICD10CM",
							"CONCEPT_CLASS_ID" : "5-char billing code"
						},
						"isExcluded" : false,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 1595606,
							"CONCEPT_NAME" : "Acute appendicitis with localized peritonitis and gangrene, without perforation",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "K35.31",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "ICD10CM",
							"CONCEPT_CLASS_ID" : "5-char billing code"
						},
						"isExcluded" : false,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 1595605,
							"CONCEPT_NAME" : "Acute appendicitis with localized peritonitis, without perforation or gangrene",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "K35.30",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "ICD10CM",
							"CONCEPT_CLASS_ID" : "5-char billing code"
						},
						"isExcluded" : false,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 1595608,
							"CONCEPT_NAME" : "Acute appendicitis with perforation and localized peritonitis, with abscess",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "K35.33",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "ICD10CM",
							"CONCEPT_CLASS_ID" : "5-char billing code"
						},
						"isExcluded" : false,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 1595607,
							"CONCEPT_NAME" : "Acute appendicitis with perforation and localized peritonitis, without abscess",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "K35.32",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "ICD10CM",
							"CONCEPT_CLASS_ID" : "5-char billing code"
						},
						"isExcluded" : false,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 1595609,
							"CONCEPT_NAME" : "Other acute appendicitis without perforation or gangrene",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "K35.890",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "ICD10CM",
							"CONCEPT_CLASS_ID" : "6-char billing code"
						},
						"isExcluded" : false,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 1595610,
							"CONCEPT_NAME" : "Other acute appendicitis without perforation, with gangrene",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "K35.891",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "ICD10CM",
							"CONCEPT_CLASS_ID" : "6-char billing code"
						},
						"isExcluded" : false,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 45538522,
							"CONCEPT_NAME" : "Unspecified acute appendicitis",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "K35.80",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "ICD10CM",
							"CONCEPT_CLASS_ID" : "5-char billing code"
						},
						"isExcluded" : false,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 35208251,
							"CONCEPT_NAME" : "Unspecified appendicitis",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "K37",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "ICD10CM",
							"CONCEPT_CLASS_ID" : "3-char billing code"
						},
						"isExcluded" : false,
						"includeDescendants" : false,
						"includeMapped" : false
					}
				]
			}
		},
		{
			"id" : 4,
			"name" : "Inpatient or Emergency Room visit",
			"expression" : {
				"items" : [
					{
						"concept" : {
							"CONCEPT_ID" : 262,
							"CONCEPT_NAME" : "Emergency Room and Inpatient Visit",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "ERIP",
							"DOMAIN_ID" : "Visit",
							"VOCABULARY_ID" : "Visit",
							"CONCEPT_CLASS_ID" : "Visit"
						},
						"isExcluded" : false,
						"includeDescendants" : true,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 9201,
							"CONCEPT_NAME" : "Inpatient Visit",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "IP",
							"DOMAIN_ID" : "Visit",
							"VOCABULARY_ID" : "Visit",
							"CONCEPT_CLASS_ID" : "Visit"
						},
						"isExcluded" : false,
						"includeDescendants" : true,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 9203,
							"CONCEPT_NAME" : "Emergency Room Visit",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "ER",
							"DOMAIN_ID" : "Visit",
							"VOCABULARY_ID" : "Visit",
							"CONCEPT_CLASS_ID" : "Visit"
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
			"name" : "has no events in prior 'clean window' - 365 days",
			"expression" : {
				"Type" : "ALL",
				"CriteriaList" : [
					{
						"Criteria" : {
							"ConditionOccurrence" : {
								"CorrelatedCriteria" : {
									"Type" : "ALL",
									"CriteriaList" : [
										{
											"Criteria" : {
												"VisitOccurrence" : {
													"CodesetId" : 4,
													"VisitTypeExclude" : false
												}
											},
											"StartWindow" : {
												"Start" : {
													"Coeff" : -1
												},
												"End" : {
													"Days" : 0,
													"Coeff" : 1
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
								},
								"ConditionTypeExclude" : false,
								"ConditionSourceConcept" : 3
							}
						},
						"StartWindow" : {
							"Start" : {
								"Days" : 365,
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
