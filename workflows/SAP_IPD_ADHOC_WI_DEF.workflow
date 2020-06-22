{
	"contents": {
		"ac762ffa-f75e-4d53-9bba-fd168929e161": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "sap_ipd_adhoc_wi_def",
			"subject": "${context.subject}",
			"businessKey": "${context.businessKey}",
			"name": "SAP_IPD_ADHOC_WI_DEF",
			"documentation": "",
			"lastIds": "886a6145-d8c4-4604-8454-c51e316fc900",
			"events": {
				"722ce1f5-15b2-472d-b66b-00d1809ab033": {
					"name": "WFStartEvent"
				},
				"315fe5dc-2b6e-4b82-8a97-bd5b20188f09": {
					"name": "WFEndEvent"
				},
				"922045a2-7e52-4695-b99e-522fe88bfb8b": {
					"name": "WFDEndEvent"
				},
				"da43a584-1c94-4cad-9760-cf414bbc1322": {
					"name": "WFMEndEvent"
				}
			},
			"activities": {
				"0063b0c4-0c46-4298-97ef-ccc194dd6e55": {
					"name": "setReqObjForWFValidation"
				},
				"1f401791-eb37-43a4-be5e-d524d83be3fe": {
					"name": "validateWFInitiatorForCollaboration"
				},
				"2a26d9b5-bcff-420d-9668-e35396929f64": {
					"name": "IsInitiatorValidForCollaboration"
				},
				"370167de-ad3b-496f-bf6a-0fc7a75991df": {
					"name": "setInstanceLevelPermission"
				},
				"b372278f-ec20-4b9b-aa3f-209fe2e64ded": {
					"name": "ParallelGateway_Validate"
				},
				"f5d6e677-114d-44f3-90f4-41733a94af29": {
					"name": "Work Item"
				},
				"8cc7feda-4338-4950-8fec-a769406c0f6d": {
					"name": "deleteInstance"
				},
				"f232ecda-4803-40f7-96d4-0f65f9f12e09": {
					"name": "prepareEmailScript"
				},
				"4f7a228a-56c2-4122-8e5b-23dc3384dc44": {
					"name": "SendMailService"
				}
			},
			"sequenceFlows": {
				"3d627029-4e53-4e88-a852-ac72752e7074": {
					"name": "WFSequenceFlow1"
				},
				"5a4232ca-480e-42e5-bbe5-2e4d7c736de4": {
					"name": "WFSequenceFlow3"
				},
				"799cc83c-061f-4a78-bc15-3cc1d3169e7f": {
					"name": "WFSequenceFlow4"
				},
				"62f193f8-3e3e-4edc-ba87-bf100f873695": {
					"name": "ValidInitiatorSequence"
				},
				"627697b9-a564-4882-a32c-3bfe84c5501f": {
					"name": "WFSequenceFlow6"
				},
				"8e452eba-bcc6-4bee-a270-8b6d4a7bb8b7": {
					"name": "WFSequenceFlow7"
				},
				"ab2e6b90-45c7-48a4-b098-8de033c90d5e": {
					"name": "WFSequenceFlow8"
				},
				"ea728311-ff39-434a-931a-0fb7b8a7e15b": {
					"name": "InValidInitiatorSequence"
				},
				"8cad71b1-6f44-4953-8fd0-be92062cf684": {
					"name": "WFSequenceFlow15"
				},
				"71da8e9d-4f0f-4092-9a54-f43ed86893cd": {
					"name": "WFSequenceFlow17"
				},
				"9ff773d8-7dd6-4d09-ade7-88afe6f0e48b": {
					"name": "WFSequenceFlow19"
				},
				"af168191-13ab-47c1-885f-720da5457a4b": {
					"name": "WFSequenceFlow20"
				}
			},
			"diagrams": {
				"aa2e99f4-8207-4c58-a081-8e90dec93996": {}
			}
		},
		"722ce1f5-15b2-472d-b66b-00d1809ab033": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "wfstartevent",
			"name": "WFStartEvent"
		},
		"315fe5dc-2b6e-4b82-8a97-bd5b20188f09": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "wfendevent",
			"name": "WFEndEvent",
			"eventDefinitions": {
				"a9a27429-14d6-46ab-aed7-ca64a6aed5b9": {}
			}
		},
		"922045a2-7e52-4695-b99e-522fe88bfb8b": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "wfdendevent2",
			"name": "WFDEndEvent",
			"eventDefinitions": {
				"11cd29a8-bb17-4a1d-99c4-7d38a81da4e1": {}
			}
		},
		"da43a584-1c94-4cad-9760-cf414bbc1322": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "wfmendevent",
			"name": "WFMEndEvent"
		},
		"0063b0c4-0c46-4298-97ef-ccc194dd6e55": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SAP_IPD_ADHOC_WI_DEF/setReqObjForWFValidation.js",
			"id": "scripttask_setReqObjForWFValidation",
			"name": "setReqObjForWFValidation"
		},
		"1f401791-eb37-43a4-be5e-d524d83be3fe": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "cpdcWF",
			"path": "/service/validate/int/WorkflowValidation",
			"httpMethod": "POST",
			"requestVariable": "${context.reqBody}",
			"responseVariable": "${context.workflow.status}",
			"id": "servicetask_validateWFInitiatorForCollaboration",
			"name": "validateWFInitiatorForCollaboration",
			"principalPropagationRef": "722ce1f5-15b2-472d-b66b-00d1809ab033"
		},
		"2a26d9b5-bcff-420d-9668-e35396929f64": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway_IsInitiatorValidForCollaboration",
			"name": "IsInitiatorValidForCollaboration",
			"default": "62f193f8-3e3e-4edc-ba87-bf100f873695"
		},
		"370167de-ad3b-496f-bf6a-0fc7a75991df": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SAP_IPD_ADHOC_WI_DEF/setInstanceLevelPermission.js",
			"id": "scripttask_setInstanceLevelPermission",
			"name": "setInstanceLevelPermission"
		},
		"b372278f-ec20-4b9b-aa3f-209fe2e64ded": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway_validate",
			"name": "ParallelGateway_Validate"
		},
		"f5d6e677-114d-44f3-90f4-41733a94af29": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "${context.adhocTaskSubject}",
			"description": "${context.adhocTaskDescription}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/cpdctask/com.sap.s4idea.cpdc.ui.task",
			"recipientUsers": "${context.recipientUsers}",
			"recipientGroups": "${context.recipientGroups}",
			"id": "usertask1",
			"name": "Work Item",
			"dueDateRef": "a23bdcfc-96f1-4fa2-9adf-d7c52ea9d4c2"
		},
		"8cc7feda-4338-4950-8fec-a769406c0f6d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SAP_IPD_ADHOC_WI_DEF/deleteInstance.js",
			"id": "scripttask_deleteInstance",
			"name": "deleteInstance"
		},
		"f232ecda-4803-40f7-96d4-0f65f9f12e09": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SAP_IPD_ADHOC_WI_DEF/prepareEmailScript.js",
			"id": "scripttask6",
			"name": "prepareEmailScript"
		},
		"4f7a228a-56c2-4122-8e5b-23dc3384dc44": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "cpdcmail",
			"path": "/service/v1/Mail",
			"httpMethod": "POST",
			"requestVariable": "${context.reqMailBody}",
			"id": "servicetask_SendMailService",
			"name": "SendMailService"
		},
		"3d627029-4e53-4e88-a852-ac72752e7074": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow1",
			"name": "WFSequenceFlow1",
			"sourceRef": "722ce1f5-15b2-472d-b66b-00d1809ab033",
			"targetRef": "0063b0c4-0c46-4298-97ef-ccc194dd6e55"
		},
		"5a4232ca-480e-42e5-bbe5-2e4d7c736de4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow3",
			"name": "WFSequenceFlow3",
			"sourceRef": "0063b0c4-0c46-4298-97ef-ccc194dd6e55",
			"targetRef": "1f401791-eb37-43a4-be5e-d524d83be3fe"
		},
		"799cc83c-061f-4a78-bc15-3cc1d3169e7f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow4",
			"name": "WFSequenceFlow4",
			"sourceRef": "1f401791-eb37-43a4-be5e-d524d83be3fe",
			"targetRef": "2a26d9b5-bcff-420d-9668-e35396929f64"
		},
		"62f193f8-3e3e-4edc-ba87-bf100f873695": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow5",
			"name": "ValidInitiatorSequence",
			"sourceRef": "2a26d9b5-bcff-420d-9668-e35396929f64",
			"targetRef": "370167de-ad3b-496f-bf6a-0fc7a75991df"
		},
		"627697b9-a564-4882-a32c-3bfe84c5501f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow6",
			"name": "WFSequenceFlow6",
			"sourceRef": "370167de-ad3b-496f-bf6a-0fc7a75991df",
			"targetRef": "b372278f-ec20-4b9b-aa3f-209fe2e64ded"
		},
		"8e452eba-bcc6-4bee-a270-8b6d4a7bb8b7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow7",
			"name": "WFSequenceFlow7",
			"sourceRef": "b372278f-ec20-4b9b-aa3f-209fe2e64ded",
			"targetRef": "f5d6e677-114d-44f3-90f4-41733a94af29"
		},
		"ab2e6b90-45c7-48a4-b098-8de033c90d5e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow8",
			"name": "WFSequenceFlow8",
			"sourceRef": "f5d6e677-114d-44f3-90f4-41733a94af29",
			"targetRef": "315fe5dc-2b6e-4b82-8a97-bd5b20188f09"
		},
		"ea728311-ff39-434a-931a-0fb7b8a7e15b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.workflow.status == \"DELETE\"}",
			"id": "wfsequenceflow14",
			"name": "InValidInitiatorSequence",
			"sourceRef": "2a26d9b5-bcff-420d-9668-e35396929f64",
			"targetRef": "8cc7feda-4338-4950-8fec-a769406c0f6d"
		},
		"8cad71b1-6f44-4953-8fd0-be92062cf684": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow15",
			"name": "WFSequenceFlow15",
			"sourceRef": "8cc7feda-4338-4950-8fec-a769406c0f6d",
			"targetRef": "922045a2-7e52-4695-b99e-522fe88bfb8b"
		},
		"71da8e9d-4f0f-4092-9a54-f43ed86893cd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow17",
			"name": "WFSequenceFlow17",
			"sourceRef": "f232ecda-4803-40f7-96d4-0f65f9f12e09",
			"targetRef": "4f7a228a-56c2-4122-8e5b-23dc3384dc44"
		},
		"9ff773d8-7dd6-4d09-ade7-88afe6f0e48b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow19",
			"name": "WFSequenceFlow19",
			"sourceRef": "b372278f-ec20-4b9b-aa3f-209fe2e64ded",
			"targetRef": "f232ecda-4803-40f7-96d4-0f65f9f12e09"
		},
		"af168191-13ab-47c1-885f-720da5457a4b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow20",
			"name": "WFSequenceFlow20",
			"sourceRef": "4f7a228a-56c2-4122-8e5b-23dc3384dc44",
			"targetRef": "da43a584-1c94-4cad-9760-cf414bbc1322"
		},
		"aa2e99f4-8207-4c58-a081-8e90dec93996": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"2c4784c7-edd3-47b3-84b9-007f0dee7841": {},
				"f97e3618-7a2f-47b3-8e98-4cd3591f5e73": {},
				"2c6dd0ca-f047-40a3-9ad1-bbe69f0372c1": {},
				"36cc877b-9afd-402d-8b84-96f0af8e891e": {},
				"dd7ea39e-5fb0-41db-bb76-e98eeaa4a7c3": {},
				"b2ff0582-7af4-42f4-9924-f30ada7229fb": {},
				"584f4e88-e800-4333-b3b3-928369ce495b": {},
				"6f8a91a1-c0db-43cf-a1c4-877826adf5e6": {},
				"14960239-426e-4a06-ab96-9a9c8a11002b": {},
				"215485da-da5b-4d1a-a447-05b3c16a1a3f": {},
				"430bc2dc-9bcd-4415-a369-1a3e78050e07": {},
				"499cd887-b058-4104-9654-c75fd4487e59": {},
				"0c37b855-649f-406b-8f81-b35a7a459152": {},
				"5e150a05-7857-41cb-86c3-81912d9f3bef": {},
				"aa12213b-ee50-4605-a3f2-5a375158e712": {},
				"323429f4-7d73-4961-b99c-560246e5a199": {},
				"cd13e4a0-5857-4895-bda1-4261b40666c2": {},
				"897ee676-eb85-4449-aadb-a749373e0190": {},
				"66d845ec-cf67-46e8-a33c-5471edb496d1": {},
				"27fcd5b1-4ecf-4f12-8faa-6167bcac2dff": {},
				"1ef9e311-3026-4547-acfa-2d339991e9ca": {},
				"aee16ae8-d9a3-4c54-b92b-9172295e25fb": {},
				"55ac99a5-7843-434b-9e1d-40b318415dce": {},
				"54c49e8a-77fe-4bae-a56f-e887b87a9551": {},
				"b7daaf37-d85b-40be-9ac3-992b9d7052b6": {}
			}
		},
		"a9a27429-14d6-46ab-aed7-ca64a6aed5b9": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"11cd29a8-bb17-4a1d-99c4-7d38a81da4e1": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition2"
		},
		"2c4784c7-edd3-47b3-84b9-007f0dee7841": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "722ce1f5-15b2-472d-b66b-00d1809ab033"
		},
		"f97e3618-7a2f-47b3-8e98-4cd3591f5e73": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1319,
			"y": 101,
			"width": 35,
			"height": 35,
			"object": "315fe5dc-2b6e-4b82-8a97-bd5b20188f09"
		},
		"2c6dd0ca-f047-40a3-9ad1-bbe69f0372c1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,118.5625 332.30823643296924,118.5625",
			"sourceSymbol": "2c4784c7-edd3-47b3-84b9-007f0dee7841",
			"targetSymbol": "36cc877b-9afd-402d-8b84-96f0af8e891e",
			"object": "3d627029-4e53-4e88-a852-ac72752e7074"
		},
		"36cc877b-9afd-402d-8b84-96f0af8e891e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 282.30823643296924,
			"y": 91.125,
			"width": 100,
			"height": 60,
			"object": "0063b0c4-0c46-4298-97ef-ccc194dd6e55"
		},
		"dd7ea39e-5fb0-41db-bb76-e98eeaa4a7c3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "332.30823643296924,121.21875 562.4041182164847,121.21875",
			"sourceSymbol": "36cc877b-9afd-402d-8b84-96f0af8e891e",
			"targetSymbol": "b2ff0582-7af4-42f4-9924-f30ada7229fb",
			"object": "5a4232ca-480e-42e5-bbe5-2e4d7c736de4"
		},
		"b2ff0582-7af4-42f4-9924-f30ada7229fb": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 512.4041182164847,
			"y": 91.3125,
			"width": 100,
			"height": 60,
			"object": "1f401791-eb37-43a4-be5e-d524d83be3fe"
		},
		"584f4e88-e800-4333-b3b3-928369ce495b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "562.4041182164847,120.359375 725.4520591082423,120.359375",
			"sourceSymbol": "b2ff0582-7af4-42f4-9924-f30ada7229fb",
			"targetSymbol": "6f8a91a1-c0db-43cf-a1c4-877826adf5e6",
			"object": "799cc83c-061f-4a78-bc15-3cc1d3169e7f"
		},
		"6f8a91a1-c0db-43cf-a1c4-877826adf5e6": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 704.4520591082423,
			"y": 98.40625,
			"object": "2a26d9b5-bcff-420d-9668-e35396929f64"
		},
		"14960239-426e-4a06-ab96-9a9c8a11002b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "725.4520591082423,120.1796875 852.4994670541212,120.1796875",
			"sourceSymbol": "6f8a91a1-c0db-43cf-a1c4-877826adf5e6",
			"targetSymbol": "215485da-da5b-4d1a-a447-05b3c16a1a3f",
			"object": "62f193f8-3e3e-4edc-ba87-bf100f873695"
		},
		"215485da-da5b-4d1a-a447-05b3c16a1a3f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 802.4994670541212,
			"y": 90.953125,
			"width": 100,
			"height": 60,
			"object": "370167de-ad3b-496f-bf6a-0fc7a75991df"
		},
		"430bc2dc-9bcd-4415-a369-1a3e78050e07": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "852.4994670541212,119.83984375 956.9997335270605,119.83984375",
			"sourceSymbol": "215485da-da5b-4d1a-a447-05b3c16a1a3f",
			"targetSymbol": "499cd887-b058-4104-9654-c75fd4487e59",
			"object": "627697b9-a564-4882-a32c-3bfe84c5501f"
		},
		"499cd887-b058-4104-9654-c75fd4487e59": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 935.9997335270605,
			"y": 97.7265625,
			"object": "b372278f-ec20-4b9b-aa3f-209fe2e64ded"
		},
		"0c37b855-649f-406b-8f81-b35a7a459152": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "956.9997335270605,118.919921875 1155.8065073885302,118.919921875",
			"sourceSymbol": "499cd887-b058-4104-9654-c75fd4487e59",
			"targetSymbol": "5e150a05-7857-41cb-86c3-81912d9f3bef",
			"object": "8e452eba-bcc6-4bee-a270-8b6d4a7bb8b7"
		},
		"5e150a05-7857-41cb-86c3-81912d9f3bef": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1105.8065073885302,
			"y": 89.11328125,
			"width": 100,
			"height": 60,
			"object": "f5d6e677-114d-44f3-90f4-41733a94af29"
		},
		"aa12213b-ee50-4605-a3f2-5a375158e712": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1155.8065073885302,118.806640625 1336.5,118.806640625",
			"sourceSymbol": "5e150a05-7857-41cb-86c3-81912d9f3bef",
			"targetSymbol": "f97e3618-7a2f-47b3-8e98-4cd3591f5e73",
			"object": "ab2e6b90-45c7-48a4-b098-8de033c90d5e"
		},
		"323429f4-7d73-4961-b99c-560246e5a199": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 704,
			"y": 247,
			"width": 100,
			"height": 60,
			"object": "8cc7feda-4338-4950-8fec-a769406c0f6d"
		},
		"cd13e4a0-5857-4895-bda1-4261b40666c2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "725.4520591082423,119.40625 725.4520874023438,193.703125 754,193.703125 754,277",
			"sourceSymbol": "6f8a91a1-c0db-43cf-a1c4-877826adf5e6",
			"targetSymbol": "323429f4-7d73-4961-b99c-560246e5a199",
			"object": "ea728311-ff39-434a-931a-0fb7b8a7e15b"
		},
		"897ee676-eb85-4449-aadb-a749373e0190": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 854,
			"y": 259.5,
			"width": 35,
			"height": 35,
			"object": "922045a2-7e52-4695-b99e-522fe88bfb8b"
		},
		"66d845ec-cf67-46e8-a33c-5471edb496d1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "754,277 871.5,277",
			"sourceSymbol": "323429f4-7d73-4961-b99c-560246e5a199",
			"targetSymbol": "897ee676-eb85-4449-aadb-a749373e0190",
			"object": "8cad71b1-6f44-4953-8fd0-be92062cf684"
		},
		"27fcd5b1-4ecf-4f12-8faa-6167bcac2dff": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1046,
			"y": 260,
			"width": 100,
			"height": 60,
			"object": "f232ecda-4803-40f7-96d4-0f65f9f12e09"
		},
		"1ef9e311-3026-4547-acfa-2d339991e9ca": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1196,
			"y": 260,
			"width": 100,
			"height": 60,
			"object": "4f7a228a-56c2-4122-8e5b-23dc3384dc44"
		},
		"aee16ae8-d9a3-4c54-b92b-9172295e25fb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1096,290 1246,290",
			"sourceSymbol": "27fcd5b1-4ecf-4f12-8faa-6167bcac2dff",
			"targetSymbol": "1ef9e311-3026-4547-acfa-2d339991e9ca",
			"object": "71da8e9d-4f0f-4092-9a54-f43ed86893cd"
		},
		"55ac99a5-7843-434b-9e1d-40b318415dce": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "956.9997335270605,118.7265625 956.999755859375,287 1096,287",
			"sourceSymbol": "499cd887-b058-4104-9654-c75fd4487e59",
			"targetSymbol": "27fcd5b1-4ecf-4f12-8faa-6167bcac2dff",
			"object": "9ff773d8-7dd6-4d09-ade7-88afe6f0e48b"
		},
		"54c49e8a-77fe-4bae-a56f-e887b87a9551": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1318.5,
			"y": 276.5,
			"width": 35,
			"height": 35,
			"object": "da43a584-1c94-4cad-9760-cf414bbc1322"
		},
		"b7daaf37-d85b-40be-9ac3-992b9d7052b6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1246,292 1336,292",
			"sourceSymbol": "1ef9e311-3026-4547-acfa-2d339991e9ca",
			"targetSymbol": "54c49e8a-77fe-4bae-a56f-e887b87a9551",
			"object": "af168191-13ab-47c1-885f-720da5457a4b"
		},
		"886a6145-d8c4-4604-8454-c51e316fc900": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 2,
			"messageeventdefinition": 1,
			"message": 1,
			"timereventdefinition": 1,
			"sequenceflow": 20,
			"startevent": 1,
			"intermediatemessageevent": 1,
			"endevent": 3,
			"usertask": 1,
			"servicetask": 3,
			"scripttask": 7,
			"exclusivegateway": 1,
			"parallelgateway": 2
		},
		"a23bdcfc-96f1-4fa2-9adf-d7c52ea9d4c2": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "${context.adhocTaskDueDate}",
			"id": "timereventdefinition1"
		},
		"b6ed5232-9b08-4489-8c2b-910692335d40": {
			"classDefinition": "com.sap.bpm.wfs.Message",
			"name": "updatePermissionMessage",
			"id": "message1"
		}
	}
}