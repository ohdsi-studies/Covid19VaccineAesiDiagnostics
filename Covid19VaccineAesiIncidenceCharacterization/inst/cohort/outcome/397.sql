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
			"name" : "non-hemorrhagic stroke FDA ICD10CM source concepts",
			"expression" : {
				"items" : [
					{
						"concept" : {
							"CONCEPT_ID" : 45605807,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of unspecified cerebellar artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.349",
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
							"CONCEPT_ID" : 45552806,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of unspecified cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.50",
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
							"CONCEPT_ID" : 37200511,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of bilateral anterior cerebral arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.523",
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
							"CONCEPT_ID" : 45596213,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of left posterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.332",
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
							"CONCEPT_ID" : 45552805,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of left cerebellar artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.442",
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
							"CONCEPT_ID" : 45543190,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of right anterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.421",
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
							"CONCEPT_ID" : 45557553,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of right anterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.321",
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
							"CONCEPT_ID" : 45538397,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of right anterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.521",
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
							"CONCEPT_ID" : 37200513,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of bilateral cerebellar arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.543",
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
							"CONCEPT_ID" : 45548026,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of unspecified vertebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.219",
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
							"CONCEPT_ID" : 45533464,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of left anterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.522",
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
							"CONCEPT_ID" : 37200500,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of bilateral vertebral arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.213",
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
							"CONCEPT_ID" : 45572097,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of left carotid artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.132",
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
							"CONCEPT_ID" : 45572098,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of right vertebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.211",
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
							"CONCEPT_ID" : 45548027,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of other precerebral arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.29",
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
							"CONCEPT_ID" : 45581783,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of unspecified posterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.439",
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
							"CONCEPT_ID" : 45576886,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of left anterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.322",
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
							"CONCEPT_ID" : 45586594,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of left middle cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.412",
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
							"CONCEPT_ID" : 37200510,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of bilateral middle cerebral arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.513",
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
							"CONCEPT_ID" : 45601041,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of unspecified precerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.00",
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
							"CONCEPT_ID" : 45601045,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of other cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.49",
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
							"CONCEPT_ID" : 45572099,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of unspecified cerebellar artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.449",
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
							"CONCEPT_ID" : 45586595,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of left middle cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.512",
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
							"CONCEPT_ID" : 45567189,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of unspecified posterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.339",
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
							"CONCEPT_ID" : 37200512,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of bilateral posterior cerebral arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.533",
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
							"CONCEPT_ID" : 45576889,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of unspecified middle cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.419",
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
							"CONCEPT_ID" : 45562362,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of unspecified vertebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.019",
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
							"CONCEPT_ID" : 45591474,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of unspecified cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.30",
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
							"CONCEPT_ID" : 45581784,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of right cerebellar artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.541",
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
							"CONCEPT_ID" : 37200497,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of bilateral carotid arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.033",
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
							"CONCEPT_ID" : 45543187,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of unspecified carotid artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.239",
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
							"CONCEPT_ID" : 37200502,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of bilateral middle cerebral arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.313",
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
							"CONCEPT_ID" : 37200498,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of bilateral vertebral arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.113",
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
							"CONCEPT_ID" : 45538394,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of unspecified carotid artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.039",
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
							"CONCEPT_ID" : 45552804,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of left anterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.422",
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
							"CONCEPT_ID" : 45605806,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of other precerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.19",
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
							"CONCEPT_ID" : 45538396,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of basilar artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.22",
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
							"CONCEPT_ID" : 35207819,
							"CONCEPT_NAME" : "Cerebral infarction due to cerebral venous thrombosis, nonpyogenic",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.6",
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
							"CONCEPT_ID" : 37200501,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of bilateral carotid arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.233",
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
							"CONCEPT_ID" : 37200496,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of bilateral vertebral arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.013",
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
							"CONCEPT_ID" : 45596215,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of left cerebellar artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.542",
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
							"CONCEPT_ID" : 45581782,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of basilar artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.12",
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
							"CONCEPT_ID" : 45543189,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of left cerebellar artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.342",
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
							"CONCEPT_ID" : 37200504,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of bilateral posterior cerebral arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.333",
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
							"CONCEPT_ID" : 45605809,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of right middle cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.511",
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
							"CONCEPT_ID" : 37200508,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of bilateral posterior cerebral arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.433",
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
							"CONCEPT_ID" : 45576884,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of unspecified carotid artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.139",
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
							"CONCEPT_ID" : 45533463,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of other precerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.09",
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
							"CONCEPT_ID" : 45538395,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of right vertebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.111",
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
							"CONCEPT_ID" : 45562367,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of right middle cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.411",
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
							"CONCEPT_ID" : 45567188,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of left middle cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.312",
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
							"CONCEPT_ID" : 37200499,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of bilateral carotid arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.133",
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
							"CONCEPT_ID" : 45601043,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of right carotid arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.231",
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
							"CONCEPT_ID" : 45557554,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of unspecified anterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.529",
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
							"CONCEPT_ID" : 45576887,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of right posterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.331",
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
							"CONCEPT_ID" : 45562363,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of left carotid artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.032",
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
							"CONCEPT_ID" : 45596212,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of right carotid artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.131",
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
							"CONCEPT_ID" : 45586596,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of right posterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.531",
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
							"CONCEPT_ID" : 45567187,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of unspecified precerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.10",
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
							"CONCEPT_ID" : 45586593,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of right cerebellar artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.341",
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
							"CONCEPT_ID" : 45562365,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of left carotid arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.232",
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
							"CONCEPT_ID" : 45548029,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of right posterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.431",
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
							"CONCEPT_ID" : 45591476,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of unspecified cerebellar artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.549",
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
							"CONCEPT_ID" : 45562364,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of unspecified vertebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.119",
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
							"CONCEPT_ID" : 45601042,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of right vertebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.011",
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
							"CONCEPT_ID" : 45548028,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of unspecified middle cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.319",
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
							"CONCEPT_ID" : 1595597,
							"CONCEPT_NAME" : "Other cerebral infarction due to occlusion or stenosis of small artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.81",
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
							"CONCEPT_ID" : 45576888,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of other cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.39",
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
							"CONCEPT_ID" : 45543188,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of unspecified anterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.329",
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
							"CONCEPT_ID" : 45586597,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of unspecified posterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.539",
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
							"CONCEPT_ID" : 37200509,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of bilateral cerebellar arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.443",
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
							"CONCEPT_ID" : 45552802,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of unspecified precerebral arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.20",
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
							"CONCEPT_ID" : 45596214,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of unspecified anterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.429",
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
							"CONCEPT_ID" : 45581781,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of right carotid artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.031",
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
							"CONCEPT_ID" : 45557552,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of right middle cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.311",
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
							"CONCEPT_ID" : 37200505,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of bilateral cerebellar arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.343",
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
							"CONCEPT_ID" : 45601047,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of other cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.59",
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
							"CONCEPT_ID" : 45557555,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of left posterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.532",
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
							"CONCEPT_ID" : 45552803,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of unspecified cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.40",
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
							"CONCEPT_ID" : 45533462,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of left vertebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.012",
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
							"CONCEPT_ID" : 35207821,
							"CONCEPT_NAME" : "Cerebral infarction, unspecified",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.9",
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
							"CONCEPT_ID" : 45548030,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of left posterior cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.432",
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
							"CONCEPT_ID" : 37200503,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of bilateral anterior cerebral arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.323",
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
							"CONCEPT_ID" : 37200507,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of bilateral anterior cerebral arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.423",
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
							"CONCEPT_ID" : 45552801,
							"CONCEPT_NAME" : "Cerebral infarction due to thrombosis of basilar artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.02",
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
							"CONCEPT_ID" : 45576885,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of left vertebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.212",
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
							"CONCEPT_ID" : 45601044,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of right cerebellar artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.441",
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
							"CONCEPT_ID" : 45601046,
							"CONCEPT_NAME" : "Cerebral infarction due to unspecified occlusion or stenosis of unspecified middle cerebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.519",
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
							"CONCEPT_ID" : 37200506,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of bilateral middle cerebral arteries",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.413",
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
							"CONCEPT_ID" : 45557551,
							"CONCEPT_NAME" : "Cerebral infarction due to embolism of left vertebral artery",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.112",
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
							"CONCEPT_ID" : 1595598,
							"CONCEPT_NAME" : "Other cerebral infarction",
							"STANDARD_CONCEPT" : "N",
							"STANDARD_CONCEPT_CAPTION" : "Non-Standard",
							"INVALID_REASON" : "V",
							"INVALID_REASON_CAPTION" : "Valid",
							"CONCEPT_CODE" : "I63.89",
							"DOMAIN_ID" : "Condition",
							"VOCABULARY_ID" : "ICD10CM",
							"CONCEPT_CLASS_ID" : "5-char billing code"
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
			"name" : "has no events in prior 'clean window'",
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
