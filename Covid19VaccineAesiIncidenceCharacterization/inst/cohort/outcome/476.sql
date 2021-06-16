{
	"cdmVersionRange" : ">=5.0.0",
	"PrimaryCriteria" : {
		"CriteriaList" : [
			{
				"Measurement" : {
					"CodesetId" : 2,
					"MeasurementTypeExclude" : false,
					"ValueAsNumber" : {
						"Value" : 10,
						"Op" : "bt",
						"Extent" : 120
					},
					"Unit" : [
						{
							"CONCEPT_ID" : 8848,
							"CONCEPT_NAME" : "thousand per microliter",
							"STANDARD_CONCEPT" : null,
							"STANDARD_CONCEPT_CAPTION" : "Unknown",
							"INVALID_REASON" : null,
							"INVALID_REASON_CAPTION" : "Unknown",
							"CONCEPT_CODE" : "10*3/uL",
							"DOMAIN_ID" : "Unit",
							"VOCABULARY_ID" : "UCUM",
							"CONCEPT_CLASS_ID" : null
						},
						{
							"CONCEPT_ID" : 8961,
							"CONCEPT_NAME" : "thousand per cubic millimeter",
							"STANDARD_CONCEPT" : null,
							"STANDARD_CONCEPT_CAPTION" : "Unknown",
							"INVALID_REASON" : null,
							"INVALID_REASON_CAPTION" : "Unknown",
							"CONCEPT_CODE" : "10*3/mm3",
							"DOMAIN_ID" : "Unit",
							"VOCABULARY_ID" : "UCUM",
							"CONCEPT_CLASS_ID" : null
						},
						{
							"CONCEPT_ID" : 8785,
							"CONCEPT_NAME" : "per cubic millimeter",
							"STANDARD_CONCEPT" : null,
							"STANDARD_CONCEPT_CAPTION" : "Unknown",
							"INVALID_REASON" : null,
							"INVALID_REASON_CAPTION" : "Unknown",
							"CONCEPT_CODE" : "/mm3",
							"DOMAIN_ID" : "Unit",
							"VOCABULARY_ID" : "UCUM",
							"CONCEPT_CLASS_ID" : null
						},
						{
							"CONCEPT_ID" : 8686,
							"CONCEPT_NAME" : "cubic millimeter",
							"STANDARD_CONCEPT" : null,
							"STANDARD_CONCEPT_CAPTION" : "Unknown",
							"INVALID_REASON" : null,
							"INVALID_REASON_CAPTION" : "Unknown",
							"CONCEPT_CODE" : "mm3",
							"DOMAIN_ID" : "Unit",
							"VOCABULARY_ID" : "UCUM",
							"CONCEPT_CLASS_ID" : null
						},
						{
							"CONCEPT_ID" : 9444,
							"CONCEPT_NAME" : "billion per liter",
							"STANDARD_CONCEPT" : null,
							"STANDARD_CONCEPT_CAPTION" : "Unknown",
							"INVALID_REASON" : null,
							"INVALID_REASON_CAPTION" : "Unknown",
							"CONCEPT_CODE" : "10*9/L",
							"DOMAIN_ID" : "Unit",
							"VOCABULARY_ID" : "UCUM",
							"CONCEPT_CLASS_ID" : null
						},
						{
							"CONCEPT_ID" : 9254,
							"CONCEPT_NAME" : "per liter",
							"STANDARD_CONCEPT" : null,
							"STANDARD_CONCEPT_CAPTION" : "Unknown",
							"INVALID_REASON" : null,
							"INVALID_REASON_CAPTION" : "Unknown",
							"CONCEPT_CODE" : "/L",
							"DOMAIN_ID" : "Unit",
							"VOCABULARY_ID" : "UCUM",
							"CONCEPT_CLASS_ID" : null
						},
						{
							"CONCEPT_ID" : 8816,
							"CONCEPT_NAME" : "million per milliliter",
							"STANDARD_CONCEPT" : null,
							"STANDARD_CONCEPT_CAPTION" : "Unknown",
							"INVALID_REASON" : null,
							"INVALID_REASON_CAPTION" : "Unknown",
							"CONCEPT_CODE" : "10*6/mL",
							"DOMAIN_ID" : "Unit",
							"VOCABULARY_ID" : "UCUM",
							"CONCEPT_CLASS_ID" : null
						}
					]
				}
			},
			{
				"Measurement" : {
					"CodesetId" : 2,
					"MeasurementTypeExclude" : false,
					"ValueAsNumber" : {
						"Value" : 10,
						"Op" : "bt",
						"Extent" : 120
					},
					"RangeLow" : {
						"Value" : 130,
						"Op" : "bt",
						"Extent" : 170
					}
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
			"name" : "Thrombocytopenia (broad)",
			"expression" : {
				"items" : [
					{
						"concept" : {
							"CONCEPT_ID" : 37397537,
							"CONCEPT_NAME" : "Beta thalassemia X-linked thrombocytopenia syndrome",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "718196002",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Clinical Finding"
						},
						"isExcluded" : false,
						"includeDescendants" : true,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 432870,
							"CONCEPT_NAME" : "Thrombocytopenic disorder",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "302215000",
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
			"id" : 2,
			"name" : "Platelet measurement",
			"expression" : {
				"items" : [
					{
						"concept" : {
							"CONCEPT_ID" : 3007461,
							"CONCEPT_NAME" : "Platelets [#/volume] in Blood",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "26515-7",
							"DOMAIN_ID" : "Measurement",
							"VOCABULARY_ID" : "LOINC",
							"CONCEPT_CLASS_ID" : "Lab Test"
						},
						"isExcluded" : false,
						"includeDescendants" : true,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 3031586,
							"CONCEPT_NAME" : "Platelets [#/volume] in Blood by Estimate",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "49497-1",
							"DOMAIN_ID" : "Measurement",
							"VOCABULARY_ID" : "LOINC",
							"CONCEPT_CLASS_ID" : "Lab Test"
						},
						"isExcluded" : false,
						"includeDescendants" : true,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 3024929,
							"CONCEPT_NAME" : "Platelets [#/volume] in Blood by Automated count",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "777-3",
							"DOMAIN_ID" : "Measurement",
							"VOCABULARY_ID" : "LOINC",
							"CONCEPT_CLASS_ID" : "Lab Test"
						},
						"isExcluded" : false,
						"includeDescendants" : true,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 3039827,
							"CONCEPT_NAME" : "Platelets [#/volume] in Body fluid by Automated count",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "40574-6",
							"DOMAIN_ID" : "Measurement",
							"VOCABULARY_ID" : "LOINC",
							"CONCEPT_CLASS_ID" : "Lab Test"
						},
						"isExcluded" : false,
						"includeDescendants" : true,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 3024386,
							"CONCEPT_NAME" : "Platelet mean volume [Entitic volume] in Blood by Rees-Ecker",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "776-5",
							"DOMAIN_ID" : "Measurement",
							"VOCABULARY_ID" : "LOINC",
							"CONCEPT_CLASS_ID" : "Lab Test"
						},
						"isExcluded" : false,
						"includeDescendants" : true,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 4267147,
							"CONCEPT_NAME" : "Platelet count",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "61928009",
							"DOMAIN_ID" : "Measurement",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Procedure"
						},
						"isExcluded" : false,
						"includeDescendants" : true,
						"includeMapped" : false
					},
					{
						"concept" : {
							"CONCEPT_ID" : 37393863,
							"CONCEPT_NAME" : "Platelet count",
							"STANDARD_CONCEPT" : "S",
							"STANDARD_CONCEPT_CAPTION" : "Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "1022651000000100",
							"DOMAIN_ID" : "Measurement",
							"VOCABULARY_ID" : "SNOMED",
							"CONCEPT_CLASS_ID" : "Observable Entity"
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
			"name" : "has no events in prior 'clean window' - 90 days",
			"expression" : {
				"Type" : "ALL",
				"CriteriaList" : [
					{
						"Criteria" : {
							"Measurement" : {
								"CodesetId" : 2,
								"MeasurementTypeExclude" : false,
								"ValueAsNumber" : {
									"Value" : 10,
									"Op" : "bt",
									"Extent" : 150
								},
								"Unit" : [
									{
										"CONCEPT_ID" : 8686,
										"CONCEPT_NAME" : "cubic millimeter",
										"STANDARD_CONCEPT" : null,
										"STANDARD_CONCEPT_CAPTION" : "Unknown",
										"INVALID_REASON" : null,
										"INVALID_REASON_CAPTION" : "Unknown",
										"CONCEPT_CODE" : "mm3",
										"DOMAIN_ID" : "Unit",
										"VOCABULARY_ID" : "UCUM",
										"CONCEPT_CLASS_ID" : null
									},
									{
										"CONCEPT_ID" : 8785,
										"CONCEPT_NAME" : "per cubic millimeter",
										"STANDARD_CONCEPT" : null,
										"STANDARD_CONCEPT_CAPTION" : "Unknown",
										"INVALID_REASON" : null,
										"INVALID_REASON_CAPTION" : "Unknown",
										"CONCEPT_CODE" : "/mm3",
										"DOMAIN_ID" : "Unit",
										"VOCABULARY_ID" : "UCUM",
										"CONCEPT_CLASS_ID" : null
									},
									{
										"CONCEPT_ID" : 8848,
										"CONCEPT_NAME" : "thousand per microliter",
										"STANDARD_CONCEPT" : null,
										"STANDARD_CONCEPT_CAPTION" : "Unknown",
										"INVALID_REASON" : null,
										"INVALID_REASON_CAPTION" : "Unknown",
										"CONCEPT_CODE" : "10*3/uL",
										"DOMAIN_ID" : "Unit",
										"VOCABULARY_ID" : "UCUM",
										"CONCEPT_CLASS_ID" : null
									},
									{
										"CONCEPT_ID" : 8961,
										"CONCEPT_NAME" : "thousand per cubic millimeter",
										"STANDARD_CONCEPT" : null,
										"STANDARD_CONCEPT_CAPTION" : "Unknown",
										"INVALID_REASON" : null,
										"INVALID_REASON_CAPTION" : "Unknown",
										"CONCEPT_CODE" : "10*3/mm3",
										"DOMAIN_ID" : "Unit",
										"VOCABULARY_ID" : "UCUM",
										"CONCEPT_CLASS_ID" : null
									},
									{
										"CONCEPT_ID" : 9444,
										"CONCEPT_NAME" : "billion per liter",
										"STANDARD_CONCEPT" : null,
										"STANDARD_CONCEPT_CAPTION" : "Unknown",
										"INVALID_REASON" : null,
										"INVALID_REASON_CAPTION" : "Unknown",
										"CONCEPT_CODE" : "10*9/L",
										"DOMAIN_ID" : "Unit",
										"VOCABULARY_ID" : "UCUM",
										"CONCEPT_CLASS_ID" : null
									},
									{
										"CONCEPT_ID" : 9254,
										"CONCEPT_NAME" : "per liter",
										"STANDARD_CONCEPT" : null,
										"STANDARD_CONCEPT_CAPTION" : "Unknown",
										"INVALID_REASON" : null,
										"INVALID_REASON_CAPTION" : "Unknown",
										"CONCEPT_CODE" : "/L",
										"DOMAIN_ID" : "Unit",
										"VOCABULARY_ID" : "UCUM",
										"CONCEPT_CLASS_ID" : null
									},
									{
										"CONCEPT_ID" : 8816,
										"CONCEPT_NAME" : "million per milliliter",
										"STANDARD_CONCEPT" : null,
										"STANDARD_CONCEPT_CAPTION" : "Unknown",
										"INVALID_REASON" : null,
										"INVALID_REASON_CAPTION" : "Unknown",
										"CONCEPT_CODE" : "10*6/mL",
										"DOMAIN_ID" : "Unit",
										"VOCABULARY_ID" : "UCUM",
										"CONCEPT_CLASS_ID" : null
									}
								]
							}
						},
						"StartWindow" : {
							"Start" : {
								"Days" : 90,
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
						"IgnoreObservationPeriod" : false,
						"Occurrence" : {
							"Type" : 0,
							"Count" : 0,
							"IsDistinct" : false
						}
					},
					{
						"Criteria" : {
							"Measurement" : {
								"CodesetId" : 2,
								"MeasurementTypeExclude" : false,
								"ValueAsNumber" : {
									"Value" : 10,
									"Op" : "bt",
									"Extent" : 150
								},
								"RangeLow" : {
									"Value" : 130,
									"Op" : "bt",
									"Extent" : 170
								}
							}
						},
						"StartWindow" : {
							"Start" : {
								"Days" : 90,
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
						"IgnoreObservationPeriod" : false,
						"Occurrence" : {
							"Type" : 0,
							"Count" : 0,
							"IsDistinct" : false
						}
					},
					{
						"Criteria" : {
							"ConditionOccurrence" : {
								"CodesetId" : 1,
								"ConditionTypeExclude" : false
							}
						},
						"StartWindow" : {
							"Start" : {
								"Days" : 90,
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
						"IgnoreObservationPeriod" : false,
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
