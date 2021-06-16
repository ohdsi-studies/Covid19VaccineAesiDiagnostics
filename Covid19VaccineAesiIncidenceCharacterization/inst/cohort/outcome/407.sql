{
	"cdmVersionRange" : ">=5.0.0",
	"PrimaryCriteria" : {
		"CriteriaList" : [
			{
				"ConditionOccurrence" : {
					"CodesetId" : 0,
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
	"AdditionalCriteria" : {
		"Type" : "ALL",
		"CriteriaList" : [
			{
				"Criteria" : {
					"VisitOccurrence" : {
						"CodesetId" : 1,
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
			"id" : 0,
			"name" : "Anaphylaxis or Anaphylactic shock due to serum",
			"expression" : {
				"items" : [
					{
						"concept" : {
							"CONCEPT_ID" : 441202,
							"CONCEPT_NAME" : "Anaphylaxis",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "39579001",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : false,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 442038,
							"CONCEPT_NAME" : "Anaphylactic shock due to serum",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "213320003",
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
		},
		{
			"id" : 1,
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
			"name" : "has no events in prior 'clean window' - 30 days",
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
													"CodesetId" : 1,
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
								"CodesetId" : 0,
								"ConditionTypeExclude" : false
							}
						},
						"StartWindow" : {
							"Start" : {
								"Days" : 30,
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
