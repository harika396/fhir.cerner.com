# frozen_string_literal: true

module Cerner
  module Resources

    R4_RELATEDPERSON_ENTRY ||= {
      'resourceType': 'RelatedPerson',
      'id': '12724068-12724066',
      'meta': {
        'versionId': 6,
        'lastUpdated': '2020-06-30T20:26:39.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Related Person</b></p><p><b>Name</b>: SMART, HAILEY'\
               '</p><p><b>DOB</b>: Dec  2, 2003</p><p><b>Gender</b>: female</p><p><b>Patient</b>: SMART, NANCY</p>'\
               '<p><b>Status</b>: Active</p><p><b>Relationship</b>: Family Member</p>'\
               '<p><b>Relationship Level</b>: Patient</p></div>'
      },
      'extension': [
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relationship-level',
          'valueCodeableConcept': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/resource-types',
                'code': 'Patient',
                'display': 'Patient'
              }
            ],
            'text': 'Patient'
          }
        }
      ],
      'identifier': [
        {
          'id': 'CI-490068357-1',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '2553236771',
                'display': 'Federated Person Principal',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'AN',
                'display': 'Account number',
                'userSelected': false
              }
            ],
            'text': 'Federated Person Principal'
          },
          'system': 'urn:oid:2.16.840.1.113883.3.13.6',
          'value': 'URN:CERNER:IDENTITY-FEDERATION:REALM:E8A84236-C258-4952-98B7-A6FF8A9C587A-CH:PRINCIPAL:'\
                   '332TE8FP7VD3RT4C',
          'period': {
            'start': '2020-06-30T20:26:38.000Z'
          }
        }
      ],
      'active': true,
      'patient': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'relationship': [
        {
          'id': 'CI-490017058-0-0',
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
              'code': '1153',
              'display': 'Family Member',
              'userSelected': true
            },
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
              'code': 'FAMMEMB',
              'display': 'family member',
              'userSelected': false
            }
          ],
          'text': 'Family Member'
        }
      ],
      'name': [
        {
          'id': 'CI-12724068-12724066-0',
          'use': 'official',
          'text': 'SMART, HAILEY',
          'family': 'SMART',
          'given': [
            'HAILEY'
          ],
          'period': {
            'start': '2019-12-26T15:15:35.000Z'
          }
        }
      ],
      'telecom': [
        {
          'id': 'CI-PH-29811922-0',
          'system': 'phone',
          'value': '8168888886',
          'use': 'home',
          'period': {
            'start': '2019-12-26T15:15:35.000Z'
          }
        },
        {
          'id': 'CI-EM-29822897-0',
          'system': 'email',
          'value': 'haileysmart@yopmail.com',
          'use': 'home',
          'period': {
            'start': '2020-06-30T19:56:19.000Z'
          }
        }
      ],
      'gender': 'female',
      'birthDate': '2003-12-02',
      'address': [
        {
          'id': 'CI-24313555-0',
          'use': 'home',
          'text': '12345 Main St\nKansas City, MO 64116\nUS',
          'line': [
            '12345 Main St'
          ],
          'city': 'Kansas City',
          'district': 'Jackson',
          'state': 'MO',
          'postalCode': '64116',
          'country': 'US',
          'period': {
            'start': '2019-12-26T15:15:03.000Z'
          }
        }
      ],
      'communication': [
        {
          'preferred': 'true',
          'language': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/36',
                'code': '151',
                'display': 'English',
                'userSelected': true
              },
              {
                'system': 'urn:ietf:bcp:47',
                'code': 'en',
                'display': 'English',
                'userSelected': false
              }
            ],
            'text': 'English'
          }
        }
      ]
    }.freeze

    R4_RELATEDPERSON_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '106abf01-6358-44d4-8f66-37526caa6ab4',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/12724068-12724066',
          'resource': R4_RELATEDPERSON_ENTRY
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/12724069-12724066',
          'resource': {
            'resourceType': 'RelatedPerson',
            'id': '12724069-12724066',
            'meta': {
              'versionId': 8,
              'lastUpdated': '2020-07-06T17:03:43.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Related Person</b></p><p><b>Name</b>: '\
                     'SMART, TIMMY</p><p><b>DOB</b>: Feb 19, 2012</p><p><b>Gender</b>: male</p><p><b>Patient</b>: '\
                     'SMART, NANCY</p><p><b>Status</b>: Active</p><p><b>Relationship</b>: Family Member</p>'\
                     '<p><b>Relationship Level</b>: Patient</p></div>'
            },
            'extension': [
              {
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relationship-level',
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'system': 'http://hl7.org/fhir/resource-types',
                      'code': 'Patient',
                      'display': 'Patient'
                    }
                  ],
                  'text': 'Patient'
                }
              }
            ],
            'active': true,
            'patient': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'relationship': [
              {
                'id': 'CI-490068375-0-0',
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
                    'code': '1153',
                    'display': 'Family Member',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                    'code': 'FAMMEMB',
                    'display': 'family member',
                    'userSelected': false
                  }
                ],
                'text': 'Family Member'
              }
            ],
            'name': [
              {
                'id': 'CI-12724069-12724066-0',
                'use': 'official',
                'text': 'SMART, TIMMY',
                'family': 'SMART',
                'given': [
                  'TIMMY'
                ],
                'period': {
                  'start': '2019-12-26T15:17:05.000Z'
                }
              }
            ],
            'telecom': [
              {
                'id': 'CI-PH-29811924-0',
                'system': 'phone',
                'value': '8168888886',
                'use': 'home',
                'period': {
                  'start': '2019-12-26T15:17:05.000Z'
                }
              },
              {
                'id': 'CI-EM-29822901-0',
                'system': 'email',
                'value': 'timmysmart@yopmail.com',
                'use': 'home',
                'period': {
                  'start': '2020-06-30T20:41:33.000Z'
                }
              }
            ],
            'gender': 'male',
            'birthDate': '2012-02-19',
            'address': [
              {
                'id': 'CI-24313557-0',
                'use': 'home',
                'text': '12345 Main St\nKansas City, MO 64116\nUS',
                'line': [
                  '12345 Main St'
                ],
                'city': 'Kansas City',
                'district': 'Jackson',
                'state': 'MO',
                'postalCode': '64116',
                'country': 'US',
                'period': {
                  'start': '2019-12-26T15:16:36.000Z'
                }
              }
            ],
            'communication': [
              {
                'preferred': 'true',
                'language': {
                  'coding': [
                    {
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/36',
                      'code': '151',
                      'display': 'English',
                      'userSelected': true
                    },
                    {
                      'system': 'urn:ietf:bcp:47',
                      'code': 'en',
                      'display': 'English',
                      'userSelected': false
                    }
                  ],
                  'text': 'English'
                }
              }
            ]
          }
        }
      ]
    }.freeze
  end
end
