module FHIR
  class Practitioner < FHIR::Model
    include FHIR::Hashable
    include FHIR::Json
    include FHIR::Xml

    SEARCH_PARAMS = ['address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'email', 'family', 'gender', 'given', 'phone', 'phonetic', 'telecom', 'active', 'communication', 'endpoint', 'identifier', 'location', 'name', 'organization', 'role', 'specialty']
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'Practitioner.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'Practitioner.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'Practitioner.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-SP', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Practitioner.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'Practitioner.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'Practitioner.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'Practitioner.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'Practitioner.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'Practitioner.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'active' => {'type'=>'boolean', 'path'=>'Practitioner.active', 'min'=>0, 'max'=>1},
      'name' => {'type'=>'HumanName', 'path'=>'Practitioner.name', 'min'=>0, 'max'=>Float::INFINITY},
      'telecom' => {'type'=>'ContactPoint', 'path'=>'Practitioner.telecom', 'min'=>0, 'max'=>Float::INFINITY},
      'address' => {'type'=>'Address', 'path'=>'Practitioner.address', 'min'=>0, 'max'=>Float::INFINITY},
      'gender' => {'valid_codes'=>{'http://hl7.org/fhir/administrative-gender'=>['male', 'female', 'other', 'unknown', 'male', 'female', 'other', 'unknown']}, 'type'=>'code', 'path'=>'Practitioner.gender', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/administrative-gender'}},
      'birthDate' => {'type'=>'date', 'path'=>'Practitioner.birthDate', 'min'=>0, 'max'=>1},
      'photo' => {'type'=>'Attachment', 'path'=>'Practitioner.photo', 'min'=>0, 'max'=>Float::INFINITY},
      'role' => {'type'=>'Practitioner::Role', 'path'=>'Practitioner.role', 'min'=>0, 'max'=>Float::INFINITY},
      'qualification' => {'type'=>'Practitioner::Qualification', 'path'=>'Practitioner.qualification', 'min'=>0, 'max'=>Float::INFINITY},
      'communication' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-SP', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'CodeableConcept', 'path'=>'Practitioner.communication', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}}
    }

    class Role < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Role.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Role.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Role.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'organization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Role.organization', 'min'=>0, 'max'=>1},
        'code' => {'valid_codes'=>{'http://hl7.org/fhir/practitioner-role'=>['doctor', 'nurse', 'pharmacist', 'researcher', 'teacher', 'ict', 'doctor', 'nurse', 'pharmacist', 'researcher', 'teacher', 'ict']}, 'type'=>'CodeableConcept', 'path'=>'Role.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/practitioner-role'}},
        'specialty' => {'valid_codes'=>{'http://hl7.org/fhir/practitioner-specialty'=>['cardio', 'dent', 'dietary', 'midw', 'sysarch', 'cardio', 'dent', 'dietary', 'midw', 'sysarch']}, 'type'=>'CodeableConcept', 'path'=>'Role.specialty', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/practitioner-specialty'}},
        'identifier' => {'type'=>'Identifier', 'path'=>'Role.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'telecom' => {'type'=>'ContactPoint', 'path'=>'Role.telecom', 'min'=>0, 'max'=>Float::INFINITY},
        'period' => {'type'=>'Period', 'path'=>'Role.period', 'min'=>0, 'max'=>1},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Role.location', 'min'=>0, 'max'=>Float::INFINITY},
        'healthcareService' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/HealthcareService'], 'type'=>'Reference', 'path'=>'Role.healthcareService', 'min'=>0, 'max'=>Float::INFINITY},
        'endpoint' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'type'=>'Reference', 'path'=>'Role.endpoint', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :organization      # 0-1 Reference(Organization)
      attr_accessor :code              # 0-1 CodeableConcept
      attr_accessor :specialty         # 0-* [ CodeableConcept ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :telecom           # 0-* [ ContactPoint ]
      attr_accessor :period            # 0-1 Period
      attr_accessor :location          # 0-* [ Reference(Location) ]
      attr_accessor :healthcareService # 0-* [ Reference(HealthcareService) ]
      attr_accessor :endpoint          # 0-* [ Reference(Endpoint) ]
    end

    class Qualification < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Qualification.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Qualification.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Qualification.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Qualification.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'valid_codes'=>{'http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0'=>['100000', '111000', '111111', '111200', '111211', '111212', '111300', '111311', '111312', '111399', '121000', '121111', '121200', '121211', '121212', '121213', '121214', '121215', '121216', '121217', '121218', '121221', '121299', '121300', '121311', '121312', '121313', '121314', '121315', '121316', '121317', '121318', '121321', '121322', '121399', '121411', '130000', '131100', '131111', '131112', '132000', '132111', '132211', '132311', '132411', '132511', '133000', '133100', '133111', '133112', '133211', '133300', '133311', '133312', '133411', '133500', '133511', '133512', '133513', '133611', '134000', '134111', '134200', '134211', '134212', '134213', '134214', '134299', '134311', '134400', '134411', '134412', '134499', '135100', '135111', '135112', '135199', '139000', '139100', '139111', '139112', '139113', '139211', '139900', '139911', '139912', '139913', '139914', '139915', '139999', '140000', '141000', '141111', '141211', '141311', '141411', '141900', '141911', '141999', '142100', '142111', '142112', '142113', '142114', '142115', '142116', '149000', '149100', '149111', '149112', '149113', '149200', '149211', '149212', '149311', '149400', '149411', '149412', '149413', '149900', '149911', '149912', '149913', '149914', '149999', '200000', '210000', '211000', '211100', '211111', '211112', '211113', '211199', '211200', '211211', '211212', '211213', '211214', '211299', '211311', '211400', '211411', '211412', '211413', '211499', '212000', '212100', '212111', '212112', '212113', '212114', '212200', '212211', '212212', '212300', '212311', '212312', '212313', '212314', '212315', '212316', '212317', '212318', '212399', '212400', '212411', '212412', '212413', '212414', '212415', '212416', '212499', '220000', '221000', '221100', '221111', '221112', '221113', '221200', '221211', '221212', '221213', '221214', '222000', '222100', '222111', '222112', '222113', '222199', '222200', '222211', '222212', '222213', '222299', '222300', '222311', '222312', '223000', '223100', '223111', '223112', '223113', '223211', '223311', '224000', '224100', '224111', '224112', '224113', '224200', '224211', '224212', '224213', '224214', '224311', '224400', '224411', '224412', '224500', '224511', '224512', '224611', '224700', '224711', '224712', '224900', '224911', '224912', '224913', '224914', '224999', '225000', '225100', '225111', '225112', '225113', '225200', '225211', '225212', '225213', '225311', '225400', '225411', '225412', '225499', '230000', '231000', '231100', '231111', '231112', '231113', '231114', '231199', '231200', '231211', '231212', '231213', '231214', '231215', '231299', '232000', '232100', '232111', '232112', '232200', '232211', '232212', '232300', '232311', '232312', '232313', '232400', '232411', '232412', '232413', '232414', '232511', '232611', '233000', '233100', '233111', '233112', '233200', '233211', '233212', '233213', '233214', '233215', '233311', '233411', '233500', '233511', '233512', '233513', '233600', '233611', '233612', '233900', '233911', '233912', '233913', '233914', '233915', '233916', '233999', '234000', '234100', '234111', '234112', '234113', '234200', '234211', '234212', '234213', '234300', '234311', '234312', '234313', '234314', '234399', '234400', '234411', '234412', '234500', '234511', '234512', '234513', '234514', '234515', '234516', '234517', '234518', '234599', '234611', '234711', '234900', '234911', '234912', '234913', '234914', '234999', '240000', '241000', '241111', '241213', '241311', '241411', '241500', '241511', '241512', '241513', '241599', '242000', '242100', '242111', '242112', '242211', '249000', '249100', '249111', '249112', '249200', '249211', '249212', '249213', '249214', '249299', '249311', '250000', '251000', '251111', '251200', '251211', '251212', '251213', '251214', '251300', '251311', '251312', '251400', '251411', '251412', '251500', '251511', '251512', '251513', '251900', '251911', '251912', '251999', '252000', '252100', '252111', '252112', '252200', '252211', '252212', '252213', '252214', '252299', '252300', '252311', '252312', '252411', '252511', '252611', '252700', '252711', '252712', '253000', '253100', '253111', '253112', '253211', '253300', '253311', '253312', '253313', '253314', '253315', '253316', '253317', '253318', '253321', '253322', '253323', '253324', '253399', '253411', '253500', '253511', '253512', '253513', '253514', '253515', '253516', '253517', '253518', '253521', '253900', '253911', '253912', '253913', '253914', '253915', '253916', '253999', '254000', '254111', '254200', '254211', '254212', '254311', '254400', '254411', '254412', '254413', '254414', '254415', '254416', '254417', '254418', '254421', '254422', '254423', '254424', '254499', '260000', '261000', '261100', '261111', '261112', '261200', '261211', '261212', '261300', '261311', '261312', '261313', '261399', '262100', '262111', '262112', '262113', '263000', '263100', '263111', '263112', '263113', '263200', '263211', '263212', '263213', '263299', '263300', '263311', '263312', '270000', '271000', '271111', '271200', '271211', '271212', '271213', '271299', '271311', '272000', '272100', '272111', '272112', '272113', '272114', '272115', '272199', '272211', '272300', '272311', '272312', '272313', '272314', '272399', '272400', '272411', '272412', '272413', '272499', '272511', '272600', '272611', '272612', '272613', '300000', '310000', '311000', '311111', '311200', '311211', '311212', '311213', '311214', '311215', '311299', '311300', '311311', '311312', '311313', '311399', '311400', '311411', '311412', '311413', '311414', '311499', '312000', '312100', '312111', '312112', '312113', '312114', '312115', '312116', '312200', '312211', '312212', '312300', '312311', '312312', '312400', '312411', '312412', '312500', '312511', '312512', '312611', '312900', '312911', '312912', '312913', '312999', '313000', '313100', '313111', '313112', '313113', '313199', '313200', '313211', '313212', '313213', '313214', '320000', '321000', '321111', '321200', '321211', '321212', '321213', '321214', '322000', '322100', '322111', '322112', '322113', '322114', '322115', '322211', '322300', '322311', '322312', '322313', '323000', '323100', '323111', '323112', '323113', '323200', '323211', '323212', '323213', '323214', '323215', '323299', '323300', '323311', '323312', '323313', '323314', '323315', '323316', '323400', '323411', '323412', '324000', '324111', '324200', '324211', '324212', '324311', '330000', '331000', '331100', '331111', '331112', '331211', '331212', '331213', '332000', '332111', '332211', '333000', '333111', '333200', '333211', '333212', '333311', '333411', '334100', '334111', '334112', '334113', '334114', '334115', '340000', '341100', '341111', '341112', '341113', '342000', '342111', '342200', '342211', '342212', '342300', '342311', '342312', '342313', '342314', '342315', '342400', '342411', '342412', '342413', '342414', '351000', '351100', '351111', '351112', '351211', '351311', '351411', '360000', '361000', '361100', '361111', '361112', '361113', '361114', '361199', '361211', '361311', '362000', '362111', '362200', '362211', '362212', '362213', '362311', '362411', '390000', '391111', '392000', '392100', '392111', '392112', '392211', '392300', '392311', '392312', '393000', '393100', '393111', '393112', '393113', '393114', '393200', '393211', '393212', '393213', '393299', '393311', '394000', '394111', '394200', '394211', '394212', '394213', '394214', '394299', '399000', '399100', '399111', '399112', '399200', '399211', '399212', '399213', '399300', '399311', '399312', '399411', '399500', '399511', '399512', '399513', '399514', '399515', '399516', '399517', '399599', '399611', '399900', '399911', '399912', '399913', '399914', '399915', '399916', '399917', '399999', '400000', '411000', '411100', '411111', '411112', '411200', '411211', '411212', '411213', '411214', '411311', '411400', '411411', '411412', '411511', '411611', '411700', '411711', '411712', '411713', '411714', '411715', '411716', '420000', '421100', '421111', '421112', '421113', '421114', '422100', '422111', '422112', '422115', '422116', '423000', '423111', '423211', '423300', '423311', '423312', '423313', '423314', '423400', '423411', '423412', '423413', '431000', '431100', '431111', '431112', '431211', '431311', '431411', '431511', '431900', '431911', '431912', '431999', '440000', '441000', '441111', '441200', '441211', '441212', '441300', '441311', '441312', '442000', '442111', '442200', '442211', '442212', '442213', '442214', '442215', '442216', '442217', '442299', '450000', '451000', '451111', '451211', '451300', '451311', '451399', '451400', '451411', '451412', '451500', '451511', '451512', '451600', '451611', '451612', '451700', '451711', '451799', '451800', '451811', '451812', '451813', '451899', '452000', '452111', '452200', '452211', '452212', '452213', '452214', '452215', '452216', '452217', '452299', '452300', '452311', '452312', '452313', '452314', '452315', '452316', '452317', '452318', '452321', '452322', '452323', '452400', '452411', '452412', '452413', '452414', '452499', '500000', '510000', '511100', '511111', '511112', '512000', '512111', '512200', '512211', '512299', '521000', '521111', '521200', '521211', '521212', '530000', '531111', '532100', '532111', '532112', '532113', '540000', '541000', '541100', '541111', '541112', '541211', '542100', '542111', '542112', '542113', '542114', '550000', '551000', '551100', '551111', '551112', '551211', '551311', '552000', '552111', '552211', '552300', '552311', '552312', '552313', '552314', '561000', '561100', '561111', '561112', '561113', '561199', '561200', '561211', '561212', '561311', '561400', '561411', '561412', '561511', '561611', '561900', '561911', '561912', '561913', '561999', '590000', '591000', '591100', '591111', '591112', '591113', '591114', '591115', '591116', '591200', '591211', '591212', '599000', '599100', '599111', '599112', '599200', '599211', '599212', '599213', '599214', '599215', '599311', '599411', '599500', '599511', '599512', '599513', '599514', '599515', '599516', '599517', '599518', '599521', '599599', '599600', '599611', '599612', '599613', '599711', '599900', '599911', '599912', '599913', '599914', '599999', '600000', '610000', '611000', '611100', '611111', '611112', '611211', '611300', '611311', '611312', '611313', '611314', '611399', '612100', '612111', '612112', '612113', '612114', '612115', '621000', '621111', '621211', '621300', '621311', '621312', '621411', '621511', '621611', '621700', '621711', '621712', '621713', '621900', '621911', '621912', '621999', '630000', '631100', '631111', '631112', '639000', '639100', '639111', '639112', '639200', '639211', '639212', '639311', '639400', '639411', '639412', '639511', '639911', '700000', '710000', '711000', '711100', '711111', '711112', '711113', '711114', '711199', '711211', '711300', '711311', '711312', '711411', '711500', '711511', '711512', '711513', '711514', '711515', '711516', '711599', '711611', '711700', '711711', '711712', '711713', '711714', '711715', '711716', '711799', '711900', '711911', '711912', '711913', '711914', '711999', '712000', '712111', '712200', '712211', '712212', '712213', '712311', '712900', '712911', '712912', '712913', '712914', '712915', '712916', '712917', '712918', '712921', '712922', '712999', '721000', '721100', '721111', '721112', '721200', '721211', '721212', '721213', '721214', '721215', '721216', '721311', '721900', '721911', '721912', '721913', '721914', '721915', '721916', '721999', '730000', '731000', '731100', '731111', '731112', '731199', '731200', '731211', '731212', '731213', '731300', '731311', '731312', '732111', '733100', '733111', '733112', '733113', '733114', '733115', '741111', '800000', '811000', '811111', '811211', '811311', '811400', '811411', '811412', '811500', '811511', '811512', '811513', '811600', '811611', '811612', '811699', '821000', '821100', '821111', '821112', '821113', '821114', '821211', '821311', '821400', '821411', '821412', '821511', '821611', '821700', '821711', '821712', '821713', '821714', '821900', '821911', '821912', '821913', '821914', '821915', '830000', '831000', '831100', '831111', '831112', '831113', '831114', '831115', '831116', '831117', '831118', '831199', '831200', '831211', '831212', '831300', '831311', '831312', '831313', '832000', '832100', '832111', '832112', '832113', '832114', '832115', '832199', '832211', '839000', '839111', '839200', '839211', '839212', '839300', '839311', '839312', '839313', '839400', '839411', '839412', '839413', '839900', '839911', '839912', '839913', '839914', '839915', '839916', '839917', '839999', '841000', '841111', '841200', '841211', '841212', '841213', '841214', '841215', '841216', '841299', '841300', '841311', '841312', '841313', '841400', '841411', '841412', '841500', '841511', '841512', '841513', '841514', '841515', '841516', '841517', '841599', '841611', '841900', '841911', '841912', '841999', '851000', '851111', '851200', '851211', '851299', '851311', '890000', '891000', '891100', '891111', '891112', '891113', '891211', '899000', '899111', '899200', '899211', '899212', '899311', '899400', '899411', '899412', '899413', '899414', '899415', '899500', '899511', '899512', '899611', '899711', '899900', '899911', '899912', '899913', '899914', '899915', '899916', '899917', '899918', '899921', '899922', '899999', '100000', '111000', '111111', '111200', '111211', '111212', '111300', '111311', '111312', '111399', '121000', '121111', '121200', '121211', '121212', '121213', '121214', '121215', '121216', '121217', '121218', '121221', '121299', '121300', '121311', '121312', '121313', '121314', '121315', '121316', '121317', '121318', '121321', '121322', '121399', '121411', '130000', '131100', '131111', '131112', '132000', '132111', '132211', '132311', '132411', '132511', '133000', '133100', '133111', '133112', '133211', '133300', '133311', '133312', '133411', '133500', '133511', '133512', '133513', '133611', '134000', '134111', '134200', '134211', '134212', '134213', '134214', '134299', '134311', '134400', '134411', '134412', '134499', '135100', '135111', '135112', '135199', '139000', '139100', '139111', '139112', '139113', '139211', '139900', '139911', '139912', '139913', '139914', '139915', '139999', '140000', '141000', '141111', '141211', '141311', '141411', '141900', '141911', '141999', '142100', '142111', '142112', '142113', '142114', '142115', '142116', '149000', '149100', '149111', '149112', '149113', '149200', '149211', '149212', '149311', '149400', '149411', '149412', '149413', '149900', '149911', '149912', '149913', '149914', '149999', '200000', '210000', '211000', '211100', '211111', '211112', '211113', '211199', '211200', '211211', '211212', '211213', '211214', '211299', '211311', '211400', '211411', '211412', '211413', '211499', '212000', '212100', '212111', '212112', '212113', '212114', '212200', '212211', '212212', '212300', '212311', '212312', '212313', '212314', '212315', '212316', '212317', '212318', '212399', '212400', '212411', '212412', '212413', '212414', '212415', '212416', '212499', '220000', '221000', '221100', '221111', '221112', '221113', '221200', '221211', '221212', '221213', '221214', '222000', '222100', '222111', '222112', '222113', '222199', '222200', '222211', '222212', '222213', '222299', '222300', '222311', '222312', '223000', '223100', '223111', '223112', '223113', '223211', '223311', '224000', '224100', '224111', '224112', '224113', '224200', '224211', '224212', '224213', '224214', '224311', '224400', '224411', '224412', '224500', '224511', '224512', '224611', '224700', '224711', '224712', '224900', '224911', '224912', '224913', '224914', '224999', '225000', '225100', '225111', '225112', '225113', '225200', '225211', '225212', '225213', '225311', '225400', '225411', '225412', '225499', '230000', '231000', '231100', '231111', '231112', '231113', '231114', '231199', '231200', '231211', '231212', '231213', '231214', '231215', '231299', '232000', '232100', '232111', '232112', '232200', '232211', '232212', '232300', '232311', '232312', '232313', '232400', '232411', '232412', '232413', '232414', '232511', '232611', '233000', '233100', '233111', '233112', '233200', '233211', '233212', '233213', '233214', '233215', '233311', '233411', '233500', '233511', '233512', '233513', '233600', '233611', '233612', '233900', '233911', '233912', '233913', '233914', '233915', '233916', '233999', '234000', '234100', '234111', '234112', '234113', '234200', '234211', '234212', '234213', '234300', '234311', '234312', '234313', '234314', '234399', '234400', '234411', '234412', '234500', '234511', '234512', '234513', '234514', '234515', '234516', '234517', '234518', '234599', '234611', '234711', '234900', '234911', '234912', '234913', '234914', '234999', '240000', '241000', '241111', '241213', '241311', '241411', '241500', '241511', '241512', '241513', '241599', '242000', '242100', '242111', '242112', '242211', '249000', '249100', '249111', '249112', '249200', '249211', '249212', '249213', '249214', '249299', '249311', '250000', '251000', '251111', '251200', '251211', '251212', '251213', '251214', '251300', '251311', '251312', '251400', '251411', '251412', '251500', '251511', '251512', '251513', '251900', '251911', '251912', '251999', '252000', '252100', '252111', '252112', '252200', '252211', '252212', '252213', '252214', '252299', '252300', '252311', '252312', '252411', '252511', '252611', '252700', '252711', '252712', '253000', '253100', '253111', '253112', '253211', '253300', '253311', '253312', '253313', '253314', '253315', '253316', '253317', '253318', '253321', '253322', '253323', '253324', '253399', '253411', '253500', '253511', '253512', '253513', '253514', '253515', '253516', '253517', '253518', '253521', '253900', '253911', '253912', '253913', '253914', '253915', '253916', '253999', '254000', '254111', '254200', '254211', '254212', '254311', '254400', '254411', '254412', '254413', '254414', '254415', '254416', '254417', '254418', '254421', '254422', '254423', '254424', '254499', '260000', '261000', '261100', '261111', '261112', '261200', '261211', '261212', '261300', '261311', '261312', '261313', '261399', '262100', '262111', '262112', '262113', '263000', '263100', '263111', '263112', '263113', '263200', '263211', '263212', '263213', '263299', '263300', '263311', '263312', '270000', '271000', '271111', '271200', '271211', '271212', '271213', '271299', '271311', '272000', '272100', '272111', '272112', '272113', '272114', '272115', '272199', '272211', '272300', '272311', '272312', '272313', '272314', '272399', '272400', '272411', '272412', '272413', '272499', '272511', '272600', '272611', '272612', '272613', '300000', '310000', '311000', '311111', '311200', '311211', '311212', '311213', '311214', '311215', '311299', '311300', '311311', '311312', '311313', '311399', '311400', '311411', '311412', '311413', '311414', '311499', '312000', '312100', '312111', '312112', '312113', '312114', '312115', '312116', '312200', '312211', '312212', '312300', '312311', '312312', '312400', '312411', '312412', '312500', '312511', '312512', '312611', '312900', '312911', '312912', '312913', '312999', '313000', '313100', '313111', '313112', '313113', '313199', '313200', '313211', '313212', '313213', '313214', '320000', '321000', '321111', '321200', '321211', '321212', '321213', '321214', '322000', '322100', '322111', '322112', '322113', '322114', '322115', '322211', '322300', '322311', '322312', '322313', '323000', '323100', '323111', '323112', '323113', '323200', '323211', '323212', '323213', '323214', '323215', '323299', '323300', '323311', '323312', '323313', '323314', '323315', '323316', '323400', '323411', '323412', '324000', '324111', '324200', '324211', '324212', '324311', '330000', '331000', '331100', '331111', '331112', '331211', '331212', '331213', '332000', '332111', '332211', '333000', '333111', '333200', '333211', '333212', '333311', '333411', '334100', '334111', '334112', '334113', '334114', '334115', '340000', '341100', '341111', '341112', '341113', '342000', '342111', '342200', '342211', '342212', '342300', '342311', '342312', '342313', '342314', '342315', '342400', '342411', '342412', '342413', '342414', '351000', '351100', '351111', '351112', '351211', '351311', '351411', '360000', '361000', '361100', '361111', '361112', '361113', '361114', '361199', '361211', '361311', '362000', '362111', '362200', '362211', '362212', '362213', '362311', '362411', '390000', '391111', '392000', '392100', '392111', '392112', '392211', '392300', '392311', '392312', '393000', '393100', '393111', '393112', '393113', '393114', '393200', '393211', '393212', '393213', '393299', '393311', '394000', '394111', '394200', '394211', '394212', '394213', '394214', '394299', '399000', '399100', '399111', '399112', '399200', '399211', '399212', '399213', '399300', '399311', '399312', '399411', '399500', '399511', '399512', '399513', '399514', '399515', '399516', '399517', '399599', '399611', '399900', '399911', '399912', '399913', '399914', '399915', '399916', '399917', '399999', '400000', '411000', '411100', '411111', '411112', '411200', '411211', '411212', '411213', '411214', '411311', '411400', '411411', '411412', '411511', '411611', '411700', '411711', '411712', '411713', '411714', '411715', '411716', '420000', '421100', '421111', '421112', '421113', '421114', '422100', '422111', '422112', '422115', '422116', '423000', '423111', '423211', '423300', '423311', '423312', '423313', '423314', '423400', '423411', '423412', '423413', '431000', '431100', '431111', '431112', '431211', '431311', '431411', '431511', '431900', '431911', '431912', '431999', '440000', '441000', '441111', '441200', '441211', '441212', '441300', '441311', '441312', '442000', '442111', '442200', '442211', '442212', '442213', '442214', '442215', '442216', '442217', '442299', '450000', '451000', '451111', '451211', '451300', '451311', '451399', '451400', '451411', '451412', '451500', '451511', '451512', '451600', '451611', '451612', '451700', '451711', '451799', '451800', '451811', '451812', '451813', '451899', '452000', '452111', '452200', '452211', '452212', '452213', '452214', '452215', '452216', '452217', '452299', '452300', '452311', '452312', '452313', '452314', '452315', '452316', '452317', '452318', '452321', '452322', '452323', '452400', '452411', '452412', '452413', '452414', '452499', '500000', '510000', '511100', '511111', '511112', '512000', '512111', '512200', '512211', '512299', '521000', '521111', '521200', '521211', '521212', '530000', '531111', '532100', '532111', '532112', '532113', '540000', '541000', '541100', '541111', '541112', '541211', '542100', '542111', '542112', '542113', '542114', '550000', '551000', '551100', '551111', '551112', '551211', '551311', '552000', '552111', '552211', '552300', '552311', '552312', '552313', '552314', '561000', '561100', '561111', '561112', '561113', '561199', '561200', '561211', '561212', '561311', '561400', '561411', '561412', '561511', '561611', '561900', '561911', '561912', '561913', '561999', '590000', '591000', '591100', '591111', '591112', '591113', '591114', '591115', '591116', '591200', '591211', '591212', '599000', '599100', '599111', '599112', '599200', '599211', '599212', '599213', '599214', '599215', '599311', '599411', '599500', '599511', '599512', '599513', '599514', '599515', '599516', '599517', '599518', '599521', '599599', '599600', '599611', '599612', '599613', '599711', '599900', '599911', '599912', '599913', '599914', '599999', '600000', '610000', '611000', '611100', '611111', '611112', '611211', '611300', '611311', '611312', '611313', '611314', '611399', '612100', '612111', '612112', '612113', '612114', '612115', '621000', '621111', '621211', '621300', '621311', '621312', '621411', '621511', '621611', '621700', '621711', '621712', '621713', '621900', '621911', '621912', '621999', '630000', '631100', '631111', '631112', '639000', '639100', '639111', '639112', '639200', '639211', '639212', '639311', '639400', '639411', '639412', '639511', '639911', '700000', '710000', '711000', '711100', '711111', '711112', '711113', '711114', '711199', '711211', '711300', '711311', '711312', '711411', '711500', '711511', '711512', '711513', '711514', '711515', '711516', '711599', '711611', '711700', '711711', '711712', '711713', '711714', '711715', '711716', '711799', '711900', '711911', '711912', '711913', '711914', '711999', '712000', '712111', '712200', '712211', '712212', '712213', '712311', '712900', '712911', '712912', '712913', '712914', '712915', '712916', '712917', '712918', '712921', '712922', '712999', '721000', '721100', '721111', '721112', '721200', '721211', '721212', '721213', '721214', '721215', '721216', '721311', '721900', '721911', '721912', '721913', '721914', '721915', '721916', '721999', '730000', '731000', '731100', '731111', '731112', '731199', '731200', '731211', '731212', '731213', '731300', '731311', '731312', '732111', '733100', '733111', '733112', '733113', '733114', '733115', '741111', '800000', '811000', '811111', '811211', '811311', '811400', '811411', '811412', '811500', '811511', '811512', '811513', '811600', '811611', '811612', '811699', '821000', '821100', '821111', '821112', '821113', '821114', '821211', '821311', '821400', '821411', '821412', '821511', '821611', '821700', '821711', '821712', '821713', '821714', '821900', '821911', '821912', '821913', '821914', '821915', '830000', '831000', '831100', '831111', '831112', '831113', '831114', '831115', '831116', '831117', '831118', '831199', '831200', '831211', '831212', '831300', '831311', '831312', '831313', '832000', '832100', '832111', '832112', '832113', '832114', '832115', '832199', '832211', '839000', '839111', '839200', '839211', '839212', '839300', '839311', '839312', '839313', '839400', '839411', '839412', '839413', '839900', '839911', '839912', '839913', '839914', '839915', '839916', '839917', '839999', '841000', '841111', '841200', '841211', '841212', '841213', '841214', '841215', '841216', '841299', '841300', '841311', '841312', '841313', '841400', '841411', '841412', '841500', '841511', '841512', '841513', '841514', '841515', '841516', '841517', '841599', '841611', '841900', '841911', '841912', '841999', '851000', '851111', '851200', '851211', '851299', '851311', '890000', '891000', '891100', '891111', '891112', '891113', '891211', '899000', '899111', '899200', '899211', '899212', '899311', '899400', '899411', '899412', '899413', '899414', '899415', '899500', '899511', '899512', '899611', '899711', '899900', '899911', '899912', '899913', '899914', '899915', '899916', '899917', '899918', '899921', '899922', '899999']}, 'type'=>'CodeableConcept', 'path'=>'Qualification.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/anzsco-occupations'}},
        'period' => {'type'=>'Period', 'path'=>'Qualification.period', 'min'=>0, 'max'=>1},
        'issuer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Qualification.issuer', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :code              # 1-1 CodeableConcept
      attr_accessor :period            # 0-1 Period
      attr_accessor :issuer            # 0-1 Reference(Organization)
    end

    attr_accessor :id                # 0-1 id
    attr_accessor :meta              # 0-1 Meta
    attr_accessor :implicitRules     # 0-1 uri
    attr_accessor :language          # 0-1 code
    attr_accessor :text              # 0-1 Narrative
    attr_accessor :contained         # 0-* [ Resource ]
    attr_accessor :extension         # 0-* [ Extension ]
    attr_accessor :modifierExtension # 0-* [ Extension ]
    attr_accessor :identifier        # 0-* [ Identifier ]
    attr_accessor :active            # 0-1 boolean
    attr_accessor :name              # 0-* [ HumanName ]
    attr_accessor :telecom           # 0-* [ ContactPoint ]
    attr_accessor :address           # 0-* [ Address ]
    attr_accessor :gender            # 0-1 code
    attr_accessor :birthDate         # 0-1 date
    attr_accessor :photo             # 0-* [ Attachment ]
    attr_accessor :role              # 0-* [ Practitioner::Role ]
    attr_accessor :qualification     # 0-* [ Practitioner::Qualification ]
    attr_accessor :communication     # 0-* [ CodeableConcept ]

    def resourceType
      'Practitioner'
    end
  end
end