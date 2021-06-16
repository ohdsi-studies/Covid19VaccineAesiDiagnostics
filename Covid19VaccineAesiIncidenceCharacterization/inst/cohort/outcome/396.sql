{
	"cdmVersionRange" : ">=5.0.0",
	"PrimaryCriteria" : {
		"CriteriaList" : [
			{
				"ConditionOccurrence" : {
					"ConditionTypeExclude" : false,
					"ConditionSourceConcept" : 2
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
			"id" : 1,
			"name" : "Inpatient or Inpatient/ER visit",
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
					}
				]
			}
		},
		{
			"id" : 2,
			"name" : "Hemorrhagic stroke intracerebral subdural FDA ICD10CM source concepts",
			"expression" : {
				"items" : [
					{
						"concept" : {
							"CONCEPT_ID" : 35207818,
							"CONCEPT_NAME" : "Nontraumatic intracranial hemorrhage, unspecified",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I62.9",
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
							"CONCEPT_ID" : 35207811,
							"CONCEPT_NAME" : "Nontraumatic intracerebral hemorrhage in brain stem",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I61.3",
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
							"CONCEPT_ID" : 35207809,
							"CONCEPT_NAME" : "Nontraumatic intracerebral hemorrhage in hemisphere, cortical",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I61.1",
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
							"CONCEPT_ID" : 1569192,
							"CONCEPT_NAME" : "Nontraumatic subdural hemorrhage",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I62.0",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "ICD10CM",
							"CONCEPT_CLASS_ID" : "4-char nonbill code"
						},
						"isExcluded" : false,
						"includeDescendants" : false,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 35207815,
							"CONCEPT_NAME" : "Other nontraumatic intracerebral hemorrhage",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I61.8",
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
							"CONCEPT_ID" : 45557548,
							"CONCEPT_NAME" : "Nontraumatic acute subdural hemorrhage",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I62.01",
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
							"CONCEPT_ID" : 35207814,
							"CONCEPT_NAME" : "Nontraumatic intracerebral hemorrhage, multiple localized",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I61.6",
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
							"CONCEPT_ID" : 45605805,
							"CONCEPT_NAME" : "Nontraumatic subacute subdural hemorrhage",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I62.02",
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
							"CONCEPT_ID" : 35207816,
							"CONCEPT_NAME" : "Nontraumatic intracerebral hemorrhage, unspecified",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I61.9",
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
							"CONCEPT_ID" : 35207808,
							"CONCEPT_NAME" : "Nontraumatic intracerebral hemorrhage in hemisphere, subcortical",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I61.0",
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
							"CONCEPT_ID" : 35207813,
							"CONCEPT_NAME" : "Nontraumatic intracerebral hemorrhage, intraventricular",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I61.5",
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
							"CONCEPT_ID" : 45538392,
							"CONCEPT_NAME" : "Nontraumatic subdural hemorrhage, unspecified",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I62.00",
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
							"CONCEPT_ID" : 35207810,
							"CONCEPT_NAME" : "Nontraumatic intracerebral hemorrhage in hemisphere, unspecified",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I61.2",
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
								"ConditionTypeExclude" : false,
								"ConditionSourceConcept" : 2
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
