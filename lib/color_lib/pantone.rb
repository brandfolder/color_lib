class ColorLib::Pantone

  def self.from_value(value)
    string = value.to_s
    ColorLib::RGB.from_html(match(string)) if string.length > 0
  end

  def self.match(value)
    match_value = value.to_s.gsub(/[c\ \-]/i, '').downcase
    VALUES[VALUES.keys.find { |key| /^#{match_value}$/ === key }]
  end

  VALUES = {
    :'100' => 'F3ED86',
    :'101' => 'F5EC62',
    :'102' => 'FAE600',
    :'103' => 'CAAD00',
    :'104' => 'AC9600',
    :'105' => '817214',
    :'106' => 'F6E761',
    :'107' => 'FAE22F',
    :'108' => 'FEDB00',
    :'109' => 'FFD100',
    :'110' => 'DBAE00',
    :'111' => 'AF8F00',
    :'112' => '998000',
    :'113' => 'FAE15A',
    :'114' => 'FAE051',
    :'115' => 'FBDE4A',
    :'116' => 'FFCE00',
    :'117' => 'CE9D00',
    :'118' => 'B38A00',
    :'119' => '8A761A',
    :'120' => 'F9DF79',
    :'1205' => 'F3E2A7',
    :'121' => 'FBDB6E',
    :'1215' => 'F5DD92',
    :'122' => 'FDD44F',
    :'1225' => 'FDC745',
    :'123' => 'FFC726',
    :'1235' => 'FFB300',
    :'124' => 'EBAB00',
    :'1245' => 'C69200',
    :'125' => 'BB8900',
    :'1255' => 'AA800E',
    :'126' => 'A17C00',
    :'1265' => '836514',
    :'127' => 'EFDF85',
    :'128' => 'F2D65E',
    :'129' => 'F1CD44',
    :'130' => 'F1AB00',
    :'131' => 'D49100',
    :'132' => 'A67A00',
    :'133' => '715913',
    :'134' => 'F8D583',
    :'1345' => 'FBCF8D',
    :'135' => 'FEC85A',
    :'1355' => 'FDC87D',
    :'136' => 'FFBC3A',
    :'1365' => 'FFB754',
    :'137' => 'FF9F00',
    :'1375' => 'FF9A00',
    :'138' => 'E47F00',
    :'1385' => 'D67500',
    :'139' => 'B67100',
    :'1395' => '9E6209',
    :'140' => '7A560F',
    :'1405' => '6C4713',
    :'141' => 'EFC868',
    :'142' => 'F1BB46',
    :'143' => 'EFAA23',
    :'144' => 'ED8000',
    :'145' => 'CF7600',
    :'146' => '9F6000',
    :'147' => '715821',
    :'148' => 'FBD09D',
    :'1485' => 'FFB57B',
    :'149' => 'FEC688',
    :'1495' => 'FF963B',
    :'150' => 'FFA94F',
    :'1505' => 'FF7200',
    :'151' => 'FF7300',
    :'152' => 'E76F00',
    :'1525' => 'CA4E00',
    :'153' => 'C06600',
    :'1535' => '933F00',
    :'154' => '995409',
    :'1545' => '51260B',
    :'155' => 'ECD6AF',
    :'1555' => 'FFBFA0',
    :'156' => 'EFC18A',
    :'1565' => 'FFA97D',
    :'157' => 'ED9B4F',
    :'1575' => 'FF8642',
    :'158' => 'E96B10',
    :'1585' => 'FF6900',
    :'159' => 'CD5806',
    :'1595' => 'DA5C05',
    :'160' => 'A24E12',
    :'1605' => 'A24A13',
    :'161' => '613517',
    :'1615' => '853C10',
    :'162' => 'FDC3AA',
    :'1625' => 'FFA28B',
    :'163' => 'FF9C71',
    :'1635' => 'FF8E70',
    :'164' => 'FF7E43',
    :'1645' => 'FF6C3B',
    :'165' => 'FF5F00',
    :'1655' => 'FF5200',
    :'166' => 'E55300',
    :'1665' => 'E54800',
    :'167' => 'C2510F',
    :'1675' => 'A83C0F',
    :'168' => '6F3014',
    :'1685' => '863514',
    :'169' => 'FFB6B1',
    :'170' => 'FF897B',
    :'171' => 'FF6141',
    :'172' => 'FD4703',
    :'173' => 'D84519',
    :'174' => '9A3416',
    :'175' => '703222',
    :'176' => 'FFACB9',
    :'1765' => 'FE9DB0',
    :'1767' => 'FAAFC2',
    :'177' => 'FF818C',
    :'1775' => 'FF859A',
    :'1777' => 'FB6581',
    :'178' => 'FF5B60',
    :'1785' => 'F9455B',
    :'1787' => 'F9425F',
    :'1788' => 'F02233',
    :'179' => 'E23828',
    :'1795' => 'D81F2A',
    :'1797' => 'D02433',
    :'180' => 'C0362C',
    :'1805' => 'B0232A',
    :'1807' => 'A12830',
    :'181' => '792720',
    :'1815' => '7C211E',
    :'1817' => '5E2728',
    :'182' => 'F8B8CB',
    :'183' => 'FC8DA9',
    :'184' => 'F85D7E',
    :'185' => 'EA0437',
    :'186' => 'D21034',
    :'187' => 'B31B34',
    :'188' => '7C2230',
    :'189' => 'F8A1BE',
    :'1895' => 'F3BCD4',
    :'190' => 'F8779E',
    :'1905' => 'F59BBD',
    :'191' => 'F23F72',
    :'1915' => 'F2558A',
    :'192' => 'E90649',
    :'1925' => 'E40050',
    :'193' => 'C30C3E',
    :'1935' => 'CB0447',
    :'194' => '9C1E3D',
    :'1945' => 'AA113F',
    :'1955' => '93173B',
    :'196' => 'EBC6D3',
    :'197' => 'EB9BB2',
    :'198' => 'E44D6F',
    :'199' => 'DB0C41',
    :'200' => 'C10435',
    :'201' => '9E1B34',
    :'202' => '892034',
    :'203' => 'EBADCD',
    :'204' => 'E87BAC',
    :'205' => 'E34585',
    :'206' => 'D7004D',
    :'207' => 'B10042',
    :'208' => '902147',
    :'209' => '752641',
    :'210' => 'FA9FCC',
    :'211' => 'F97DB8',
    :'212' => 'F34E9A',
    :'213' => 'E61577',
    :'214' => 'D00063',
    :'215' => 'AA1054',
    :'216' => '7A1D42',
    :'217' => 'ECBBDD',
    :'218' => 'E86FB8',
    :'219' => 'E0218A',
    :'220' => 'AE0055',
    :'221' => '96004B',
    :'222' => '6C193F',
    :'223' => 'F293D1',
    :'224' => 'EF6ABF',
    :'225' => 'E5239D',
    :'226' => 'D60077',
    :'227' => 'AE005F',
    :'228' => '8A0753',
    :'229' => '6A1D44',
    :'230' => 'F7A7DB',
    :'231' => 'F575C9',
    :'232' => 'EF40B0',
    :'233' => 'C90081',
    :'234' => 'A6006B',
    :'235' => '890857',
    :'236' => 'F2B0DF',
    :'2365' => 'EFC3E4',
    :'237' => 'EE86D3',
    :'2375' => 'E270CD',
    :'238' => 'E653BC',
    :'2385' => 'D733B4',
    :'239' => 'E032AF',
    :'2395' => 'C40098',
    :'240' => 'C41E99',
    :'2405' => 'A70084',
    :'241' => 'AC0481',
    :'2415' => '970076',
    :'242' => '7A1A57',
    :'2425' => '820063',
    :'243' => 'E8B7E5',
    :'244' => 'E6A2E0',
    :'245' => 'DF81D6',
    :'246' => 'C70BAC',
    :'247' => 'B3009D',
    :'248' => '9E0389',
    :'249' => '7B2266',
    :'250' => 'E3C0E6',
    :'251' => 'D99CE1',
    :'252' => 'CA65D1',
    :'253' => 'A91BB0',
    :'254' => '962399',
    :'255' => '70266C',
    :'256' => 'D9BFE0',
    :'2562' => 'CFA5E4',
    :'2563' => 'C79DD8',
    :'2567' => 'BB99DA',
    :'257' => 'CBA4D4',
    :'2572' => 'C084DC',
    :'2573' => 'B279C8',
    :'2577' => 'A276CC',
    :'258' => '92499E',
    :'2582' => 'A24CC8',
    :'2583' => '9950B2',
    :'2587' => '8348B5',
    :'259' => '6C1B72',
    :'2592' => '9016B2',
    :'2593' => '7E2B97',
    :'2597' => '59058D',
    :'260' => '5F1D5F',
    :'2602' => '7D0996',
    :'2603' => '68177F',
    :'2607' => '4F027C',
    :'261' => '591E55',
    :'2612' => '6A1A7A',
    :'2613' => '611774',
    :'2617' => '4B0B71',
    :'262' => '4F2248',
    :'2622' => '572458',
    :'2623' => '581963',
    :'2627' => '43125F',
    :'263' => 'D8CBEB',
    :'2635' => 'BFAFE4',
    :'264' => 'BCA8E6',
    :'2645' => 'AA94DE',
    :'265' => '8D65D2',
    :'2655' => '9173D3',
    :'266' => '6732BA',
    :'2665' => '7A52C7',
    :'267' => '4F1F91',
    :'268' => '4A217E',
    :'2685' => '3B0084',
    :'269' => '452663',
    :'2695' => '381D59',
    :'270' => 'ADACDC',
    :'2705' => 'A29FE0',
    :'2706' => 'C4CBEA',
    :'2707' => 'BDD0EE',
    :'2708' => 'B1C5EA',
    :'271' => '9490D2',
    :'2715' => '8580D8',
    :'2716' => '94A1E2',
    :'2717' => 'A1BDEA',
    :'2718' => '547ED9',
    :'272' => '7973C2',
    :'2725' => '5E53C7',
    :'2726' => '4555C7',
    :'2727' => '3878DB',
    :'2728' => '0047BE',
    :'273' => '25177A',
    :'2735' => '280092',
    :'2736' => '1E22AE',
    :'2738' => '00129D',
    :'274' => '211265',
    :'2745' => '22007A',
    :'2746' => '1A1C96',
    :'2747' => '00237E',
    :'2748' => '001A7B',
    :'275' => '1D1157',
    :'2755' => '1B0069',
    :'2756' => '151D71',
    :'2757' => '002065',
    :'2758' => '001D68',
    :'276' => '241A44',
    :'2765' => '1B0C55',
    :'2766' => '151C55',
    :'2767' => '0B2345',
    :'2768' => '031E51',
    :'277' => 'A9C7EC',
    :'278' => '8CB4E8',
    :'279' => '4189DD',
    :'280' => '00267F',
    :'281' => '002569',
    :'282' => '00204E',
    :'283' => '93BFEB',
    :'284' => '6CABE7',
    :'285' => '0077D4',
    :'286' => '0035AD',
    :'287' => '003798',
    :'288' => '003082',
    :'289' => '00234C',
    :'290' => 'BED9ED',
    :'2905' => '92C9EB',
    :'291' => 'A4CEEC',
    :'2915' => '62B4E8',
    :'292' => '6AB2E7',
    :'2925' => '0092DD',
    :'293' => '0047B6',
    :'2935' => '005BC3',
    :'294' => '003580',
    :'2945' => '0053A5',
    :'295' => '002D62',
    :'2955' => '003B6F',
    :'296' => '002740',
    :'2965' => '003151',
    :'297' => '78C7EB',
    :'2975' => 'A5D9EC',
    :'298' => '42B4E6',
    :'2985' => '40BDE8',
    :'299' => '00A0E2',
    :'2995' => '00A2E1',
    :'300' => '0067C6',
    :'3005' => '0076CC',
    :'301' => '00529B',
    :'3015' => '0060A1',
    :'302' => '00436E',
    :'3025' => '00496E',
    :'303' => '00344D',
    :'3035' => '003A4F',
    :'304' => 'A2DBEB',
    :'305' => '53CAEB',
    :'306' => '00B5E6',
    :'307' => '0070B2',
    :'308' => '005883',
    :'309' => '003947',
    :'310' => '66CFE6',
    :'3105' => '6FD2E4',
    :'311' => '00C2E3',
    :'3115' => '00C4DC',
    :'312' => '00A7D4',
    :'3125' => '00AECE',
    :'313' => '0092C7',
    :'3135' => '0092BA',
    :'314' => '007FAC',
    :'3145' => '007A97',
    :'315' => '006685',
    :'3155' => '00667C',
    :'316' => '004650',
    :'3165' => '004F5D',
    :'317' => 'BFE5EA',
    :'318' => '8EDBE5',
    :'319' => '36CCDA',
    :'320' => '0097AC',
    :'321' => '008193',
    :'322' => '006F7A',
    :'323' => '006068',
    :'324' => '98D9DB',
    :'3242' => '75D9D8',
    :'3245' => '7BDDD8',
    :'3248' => '7BD2C8',
    :'325' => '47C7C7',
    :'3252' => '41D2D2',
    :'3255' => '32D4CB',
    :'3258' => '43C4B7',
    :'326' => '00AFAD',
    :'3262' => '00BAB9',
    :'3265' => '00C2B6',
    :'3268' => '00A994',
    :'327' => '008579',
    :'3272' => '00A19C',
    :'3275' => '00B09D',
    :'3278' => '00997A',
    :'328' => '007168',
    :'3282' => '008480',
    :'3285' => '009384',
    :'3288' => '007E64',
    :'329' => '00625A',
    :'3292' => '005A53',
    :'3295' => '007C6F',
    :'3298' => '006752',
    :'330' => '00524D',
    :'3302' => '00423C',
    :'3305' => '004A41',
    :'3308' => '004236',
    :'331' => 'B2E7DF',
    :'332' => '9FE4DB',
    :'333' => '43D9C7',
    :'334' => '009878',
    :'335' => '007B63',
    :'336' => '006651',
    :'337' => '94D8C8',
    :'3375' => '81E0C7',
    :'338' => '76D1BD',
    :'3385' => '3BD6B2',
    :'339' => '00B08B',
    :'3395' => '00C590',
    :'340' => '009460',
    :'3405' => '00AE68',
    :'341' => '007856',
    :'3415' => '00774B',
    :'342' => '006A4E',
    :'3425' => '006644',
    :'343' => '00533E',
    :'3435' => '004731',
    :'344' => 'A6DEC1',
    :'345' => '89D5AF',
    :'346' => '5EC998',
    :'347' => '009543',
    :'348' => '007E3A',
    :'349' => '006233',
    :'350' => '18472C',
    :'351' => 'A7E6C4',
    :'352' => '87E0B0',
    :'353' => '6ADCA2',
    :'354' => '00AB39',
    :'355' => '009530',
    :'356' => '007229',
    :'357' => '0F4D2A',
    :'358' => 'A5DB92',
    :'359' => '9FD98B',
    :'360' => '55BE47',
    :'361' => '12AD2B',
    :'362' => '289728',
    :'363' => '2F8927',
    :'364' => '317023',
    :'365' => 'CCE5A2',
    :'366' => 'BCE18D',
    :'367' => 'A4D867',
    :'368' => '62BD19',
    :'369' => '4FA600',
    :'370' => '4F8A10',
    :'371' => '4A601C',
    :'372' => 'D7E9A1',
    :'373' => 'CDE985',
    :'374' => 'BAE55F',
    :'375' => '87D300',
    :'376' => '76B900',
    :'377' => '679000',
    :'378' => '4D5A12',
    :'379' => 'DDE56C',
    :'380' => 'D3E13C',
    :'381' => 'C8DB00',
    :'382' => 'B9D300',
    :'383' => '9FAA00',
    :'384' => '8B9000',
    :'385' => '6E6A12',
    :'386' => 'E5E96E',
    :'387' => 'DEE63A',
    :'388' => 'D7E300',
    :'389' => 'C6DB00',
    :'390' => 'B2BC00',
    :'391' => '959200',
    :'392' => '7F7800',
    :'393' => 'EDEB8F',
    :'3935' => 'F0EB7A',
    :'394' => 'E9E73F',
    :'3945' => 'EFE600',
    :'395' => 'E4E400',
    :'3955' => 'ECE100',
    :'396' => 'DDDF00',
    :'3965' => 'E9DC00',
    :'397' => 'BEB800',
    :'3975' => 'BBA800',
    :'398' => 'ABA200',
    :'3985' => '9B8900',
    :'399' => '998D00',
    :'3995' => '6A5B07',
    :'400' => 'CDC9C4',
    :'401' => 'BDB8B1',
    :'402' => 'ADA59D',
    :'403' => '988F86',
    :'404' => '7C7369',
    :'405' => '645A50',
    :'406' => 'CAC4C2',
    :'408' => 'A59997',
    :'409' => '948683',
    :'410' => '7B6E6A',
    :'411' => '62524E',
    :'412' => '372B27',
    :'413' => 'C8C9C3',
    :'414' => 'B5B6B0',
    :'415' => '9D9D96',
    :'416' => '87887F',
    :'417' => '6E6F64',
    :'418' => '5A5B51',
    :'419' => '1F211C',
    :'420' => 'CCCCCC',
    :'421' => 'BABBBC',
    :'422' => 'A9AAAB',
    :'423' => '939495',
    :'424' => '767A7D',
    :'425' => '56595C',
    :'426' => '212424',
    :'427' => 'D2D6D9',
    :'428' => 'C3C8CD',
    :'429' => 'A8ADB4',
    :'430' => '868F98',
    :'431' => '616A74',
    :'432' => '414B56',
    :'433' => '212930',
    :'434' => 'D3C9CE',
    :'435' => 'C8BAC0',
    :'436' => 'B7A6AD',
    :'437' => '846E74',
    :'438' => '513E3E',
    :'439' => '443535',
    :'440' => '392E2C',
    :'441' => 'CBD1D4',
    :'442' => 'B3BCC0',
    :'443' => '99A3A6',
    :'444' => '7B858A',
    :'445' => '4F5559',
    :'446' => '3D4242',
    :'447' => '323532',
    :'448' => '473E26',
    :'4485' => '5D4718',
    :'449' => '4D4325',
    :'4495' => '836E2C',
    :'450' => '514826',
    :'4505' => '9B8948',
    :'451' => '9F9B74',
    :'4515' => 'B5A570',
    :'452' => 'B5B292',
    :'4525' => 'C5BA8E',
    :'453' => 'C8C5AC',
    :'4535' => 'D4CCAA',
    :'454' => 'D5D3BF',
    :'4545' => 'DED9C2',
    :'455' => '655415',
    :'456' => '977F09',
    :'457' => 'B29200',
    :'458' => 'DBCA67',
    :'459' => 'DFD27C',
    :'460' => 'E5DB97',
    :'461' => 'E7E3B5',
    :'462' => '563F23',
    :'4625' => '4E2614',
    :'463' => '6D4921',
    :'4635' => '905A33',
    :'464' => '855723',
    :'4645' => 'B17F5C',
    :'465' => 'B99C6B',
    :'4655' => 'C09477',
    :'466' => 'CAB388',
    :'4665' => 'D1AE97',
    :'467' => 'D5C4A1',
    :'4675' => 'DDC2B0',
    :'468' => 'E0D4BB',
    :'4685' => 'E4D2C5',
    :'469' => '613418',
    :'4695' => '532821',
    :'470' => '9B4D1B',
    :'4705' => '7F4C3E',
    :'471' => 'B75312',
    :'4715' => '9B6E5F',
    :'472' => 'E49969',
    :'4725' => 'B28D7F',
    :'473' => 'EDB996',
    :'4735' => 'C5AAA0',
    :'474' => 'EEC5A9',
    :'4745' => 'D4BEB6',
    :'475' => 'F0D0BB',
    :'4755' => 'DDCDC7',
    :'476' => '513127',
    :'477' => '5E2F24',
    :'478' => '723629',
    :'479' => 'AD806C',
    :'480' => 'C8A99A',
    :'481' => 'D5BDB0',
    :'482' => 'DDCEC4',
    :'483' => '6A2E22',
    :'484' => '9F2D20',
    :'485' => 'DC241F',
    :'486' => 'EC9384',
    :'487' => 'ECAB9D',
    :'488' => 'ECBBAF',
    :'489' => 'EBCDC3',
    :'490' => '5A272A',
    :'491' => '772B2F',
    :'492' => '91353B',
    :'494' => 'E7A7B6',
    :'495' => 'EDB8C5',
    :'496' => 'EFC4CE',
    :'497' => '4E2A28',
    :'4975' => '441E1F',
    :'498' => '68322E',
    :'4985' => '854A50',
    :'499' => '763931',
    :'4995' => 'A16971',
    :'500' => 'C88691',
    :'5005' => 'B7848C',
    :'501' => 'DEACB7',
    :'5015' => 'D1A9B0',
    :'502' => 'E5BFC7',
    :'5025' => 'DBBCC1',
    :'503' => 'E9CCD2',
    :'5035' => 'E3CBD0',
    :'504' => '4E2029',
    :'505' => '6E2639',
    :'506' => '7E2B42',
    :'507' => 'D38DA6',
    :'508' => 'E2ABBF',
    :'509' => 'E7B9CA',
    :'510' => 'E9C2D1',
    :'511' => '60244E',
    :'5115' => '4B253E',
    :'512' => '7E2271',
    :'5125' => '704165',
    :'513' => '95288F',
    :'5135' => '885E80',
    :'514' => 'D385C8',
    :'5145' => 'A17E9A',
    :'515' => 'DFA5D6',
    :'5155' => 'C0A6BD',
    :'516' => 'E7BADF',
    :'5165' => 'D6C5D3',
    :'517' => 'EBCAE3',
    :'5175' => 'E0D5DE',
    :'518' => '4B2A46',
    :'5185' => '45293B',
    :'519' => '5A2D5F',
    :'5195' => '5E3A51',
    :'520' => '682F73',
    :'5205' => '8B687D',
    :'521' => 'AD85BA',
    :'5215' => 'B195A6',
    :'522' => 'BD9ECA',
    :'5225' => 'C6B0BE',
    :'523' => 'CBB2D5',
    :'5235' => 'D4C4CE',
    :'524' => 'DACCE1',
    :'5245' => 'DFD4DB',
    :'525' => '51265A',
    :'5255' => '2A254B',
    :'526' => '61207F',
    :'5265' => '433B67',
    :'527' => '6E20A0',
    :'5275' => '57527E',
    :'528' => 'A774CD',
    :'5285' => '8581A4',
    :'529' => 'C6A4E1',
    :'5295' => 'AAA7C1',
    :'530' => 'CFB1E3',
    :'5305' => 'C1BED1',
    :'531' => 'D7C4E7',
    :'5315' => 'D4D4E0',
    :'532' => '262A39',
    :'533' => '253355',
    :'534' => '293F6F',
    :'535' => '95A1C3',
    :'536' => 'A4B1CD',
    :'537' => 'BDC6DA',
    :'538' => 'D2D7E4',
    :'539' => '002A46',
    :'5395' => '02253A',
    :'540' => '002F5D',
    :'5405' => '3E647E',
    :'541' => '003C79',
    :'5415' => '587993',
    :'542' => '5998C9',
    :'5425' => '7C98AE',
    :'543' => '93B9DC',
    :'5435' => 'A5B8C9',
    :'544' => 'B1CBE5',
    :'5445' => 'BCCAD6',
    :'545' => 'BFD3E6',
    :'5455' => 'CCD6E0',
    :'546' => '003440',
    :'5463' => '002830',
    :'5467' => '183533',
    :'547' => '003E51',
    :'5473' => '00626E',
    :'5477' => '3C5B59',
    :'548' => '004159',
    :'5483' => '4F8D97',
    :'5487' => '627D7C',
    :'549' => '5B97B1',
    :'5493' => '81ADB5',
    :'5497' => '8DA09F',
    :'550' => '85B0C6',
    :'5503' => 'A1C3C9',
    :'5507' => 'AAB8B9',
    :'551' => '9FC1D3',
    :'5513' => 'BED5D9',
    :'5517' => 'BFCBCC',
    :'552' => 'B9D0DC',
    :'5523' => 'CFDEE1',
    :'5527' => 'CCD4D4',
    :'553' => '214232',
    :'5535' => '1B3930',
    :'554' => '24604A',
    :'5545' => '4A6D62',
    :'555' => '13694E',
    :'5555' => '6E8D82',
    :'556' => '74A18E',
    :'5565' => '8FA8A0',
    :'557' => '98BAAC',
    :'5575' => 'A9BDB6',
    :'558' => 'ACC7BD',
    :'5585' => 'C0CFCB',
    :'559' => 'C0D4CD',
    :'5595' => 'D3DEDB',
    :'560' => '22483F',
    :'5605' => '193025',
    :'561' => '0F6259',
    :'5615' => '5A7060',
    :'562' => '007770',
    :'5625' => '6C8072',
    :'563' => '72B8B4',
    :'5635' => '97A69B',
    :'564' => '98CCC9',
    :'5645' => 'B1BCB5',
    :'565' => 'B9DCDA',
    :'5655' => 'BDC5BF',
    :'566' => 'CDE3E2',
    :'5665' => 'CDD3CD',
    :'567' => '18453B',
    :'569' => '008478',
    :'570' => '76C6BE',
    :'571' => '9DD6CF',
    :'572' => 'B4DEDB',
    :'573' => 'C1E2DE',
    :'574' => '404F24',
    :'5743' => '3E4723',
    :'5747' => '404616',
    :'575' => '56732E',
    :'5753' => '5E6639',
    :'5757' => '6F732D',
    :'576' => '668E3C',
    :'5763' => '6E7649',
    :'5767' => '8D9150',
    :'577' => 'B2C891',
    :'5773' => '939871',
    :'5777' => 'A7AB74',
    :'578' => 'BDD0A0',
    :'5783' => 'ADB291',
    :'5787' => 'C1C49A',
    :'579' => 'C5D5A9',
    :'5793' => 'BDC2A9',
    :'5797' => 'CED1B3',
    :'580' => 'CFDDBB',
    :'5803' => 'CED2BF',
    :'5807' => 'D9DCC5',
    :'581' => '605A12',
    :'5815' => '4B4516',
    :'582' => '888600',
    :'5825' => '7D762F',
    :'583' => 'ABB400',
    :'5835' => '9D9754',
    :'584' => 'CBD34C',
    :'5845' => 'ADA86B',
    :'585' => 'D8DB6F',
    :'5855' => 'C7C397',
    :'586' => 'DDE18A',
    :'5865' => 'D3CFAC',
    :'587' => 'E2E59F',
    :'5875' => 'D9D7B9',
    :'600' => 'EEEBB6',
    :'601' => 'EEEAA5',
    :'602' => 'EEE88D',
    :'603' => 'EDE25E',
    :'604' => 'EADB1B',
    :'605' => 'E0CA00',
    :'606' => 'D8BD00',
    :'607' => 'EBE9C3',
    :'608' => 'E9E6B4',
    :'609' => 'E7E29A',
    :'610' => 'E2D973',
    :'611' => 'D8CC46',
    :'612' => 'C4B300',
    :'613' => 'B39D00',
    :'614' => 'E3E1C1',
    :'615' => 'DDDBB1',
    :'616' => 'D7D29D',
    :'617' => 'C9C37F',
    :'618' => 'B4A851',
    :'619' => '9C8E2A',
    :'620' => '887811',
    :'621' => 'D2DFDC',
    :'622' => 'BDD2CC',
    :'623' => '9EBCB3',
    :'624' => '78A095',
    :'625' => '518274',
    :'626' => '1F5647',
    :'627' => '032D23',
    :'628' => 'C8E2E8',
    :'629' => 'AADAE5',
    :'630' => '82CBDD',
    :'631' => '48B8D2',
    :'632' => '009EC0',
    :'633' => '007CA4',
    :'634' => '00628C',
    :'635' => 'ADDDEB',
    :'636' => '8DD4E9',
    :'637' => '5BC8E7',
    :'638' => '00B2DE',
    :'639' => '009ACF',
    :'640' => '0085C2',
    :'641' => '0070B2',
    :'642' => 'CED9E7',
    :'643' => 'C5D2E3',
    :'644' => '97B1D0',
    :'645' => '7498C0',
    :'646' => '5781AE',
    :'647' => '11568C',
    :'648' => '002B5F',
    :'649' => 'D4DCE8',
    :'650' => 'C2CDE0',
    :'651' => '99AECE',
    :'652' => '6F8DB9',
    :'653' => '2A568F',
    :'654' => '003066',
    :'655' => '002252',
    :'656' => 'D4DDED',
    :'657' => 'BFD0EA',
    :'658' => 'A1BBE4',
    :'659' => '6E96D5',
    :'660' => '296DC1',
    :'661' => '003596',
    :'662' => '002280',
    :'663' => 'DED8E6',
    :'664' => 'D7D0E0',
    :'665' => 'C5BBD3',
    :'666' => 'A392B7',
    :'667' => '7C6495',
    :'668' => '624A7E',
    :'669' => '432C5F',
    :'670' => 'EAD4E4',
    :'671' => 'E6C1DB',
    :'672' => 'E1A7CF',
    :'673' => 'DA89BE',
    :'674' => 'CE62A4',
    :'675' => 'B62A79',
    :'676' => 'A30059',
    :'677' => 'E5D1DF',
    :'678' => 'E2C9DA',
    :'679' => 'DEBDD4',
    :'680' => 'CB97B7',
    :'681' => 'B8749E',
    :'682' => '9C4878',
    :'683' => '7C2250',
    :'684' => 'E5CAD9',
    :'685' => 'E1BCD0',
    :'686' => 'DBAEC6',
    :'687' => 'C686A9',
    :'688' => 'B46B93',
    :'689' => '95416F',
    :'690' => '6D2348',
    :'691' => 'E7CDD2',
    :'692' => 'E2C1C8',
    :'693' => 'D9A7B1',
    :'694' => 'CA909C',
    :'695' => 'B06876',
    :'696' => '944554',
    :'697' => '81333D',
    :'698' => 'EDCFD7',
    :'699' => 'F0C2CD',
    :'700' => 'ECA9B9',
    :'701' => 'E58DA2',
    :'702' => 'D5647C',
    :'703' => 'BA394E',
    :'704' => 'A22630',
    :'705' => 'F2D6DE',
    :'706' => 'F5C7D4',
    :'707' => 'F5B0C1',
    :'708' => 'F590A6',
    :'709' => 'EF6782',
    :'710' => 'E54661',
    :'711' => 'D32939',
    :'712' => 'FACDAE',
    :'713' => 'FBC399',
    :'714' => 'FDB179',
    :'715' => 'F9964A',
    :'716' => 'F17C0E',
    :'717' => 'DE6100',
    :'718' => 'CF5200',
    :'719' => 'EFCFB8',
    :'720' => 'ECC3A5',
    :'721' => 'E5AE86',
    :'722' => 'D58F59',
    :'723' => 'C0722F',
    :'724' => '9A4B00',
    :'725' => '843B00',
    :'726' => 'E8CEBB',
    :'727' => 'E1BEA4',
    :'728' => 'D5AA88',
    :'729' => 'C38E63',
    :'730' => 'AC703D',
    :'731' => '793F0D',
    :'732' => '64300A',
    :'801' => '00A7D8',
    :'802' => '5BDD45',
    :'803' => 'FFE805',
    :'804' => 'FFA243',
    :'805' => 'FF585E',
    :'806' => 'FF1CAC',
    :'807' => 'D708B2',
    :'808' => '00AE97',
    :'809' => 'E1E400',
    :'810' => 'FFCE09',
    :'811' => 'FF7750',
    :'812' => 'FF3485',
    :'813' => 'EA12AF',
    :'814' => '7E60CE',
    :'7401' => 'F5E1A4',
    :'7402' => 'ECD898',
    :'7403' => 'EED484',
    :'7404' => 'F4DA40',
    :'7405' => 'F2CD00',
    :'7406' => 'F1C400',
    :'7407' => 'CBA052',
    :'7408' => 'F6BE00',
    :'7409' => 'F0B323',
    :'7410' => 'FEAD77',
    :'7411' => 'E6A65D',
    :'7412' => 'D38235',
    :'7413' => 'DC8633',
    :'7414' => 'C16C18',
    :'7415' => 'E6BAA8',
    :'7416' => 'E56A54',
    :'7417' => 'E04E39',
    :'7418' => 'CD545B',
    :'7419' => 'B04A5A',
    :'7420' => '9B2242',
    :'7421' => '651D32',
    :'7422' => 'F4CDD4',
    :'7423' => 'E06287',
    :'7424' => 'E24585',
    :'7425' => 'B52555',
    :'7426' => 'A4123F',
    :'7427' => '971B2F',
    :'7428' => '6A2C3E',
    :'7429' => 'E2BCCB',
    :'7430' => 'DCA9BF',
    :'7431' => 'C9809E',
    :'7432' => 'B55C80',
    :'7433' => 'A73A64',
    :'7434' => '9B3259',
    :'7435' => '872651',
    :'7436' => 'EEDAEA',
    :'7437' => 'CCAED0',
    :'7438' => 'D59ED7',
    :'7439' => 'B288B9',
    :'7440' => 'A277A6',
    :'7441' => '9F5CC0',
    :'7442' => '963CBD',
    :'7443' => 'DDDAE8',
    :'7444' => 'B6B8DC',
    :'7445' => 'A7A2C3',
    :'7446' => '8986CA',
    :'7447' => '5D4777',
    :'7448' => '4B384C',
    :'7449' => '41273B',
    :'7450' => 'BDC5DB',
    :'7451' => '89ABE3',
    :'7452' => '8094DD',
    :'7453' => '7BA6DE',
    :'7454' => '5F8FB4',
    :'7455' => '3A5DAE',
    :'7456' => '606EB2',
    :'7457' => 'BBDDE6',
    :'7458' => '71B2C9',
    :'7459' => '4298B5',
    :'7460' => '0086BF',
    :'7461' => '007DBA',
    :'7462' => '00558C',
    :'7463' => '002B49',
    :'7464' => 'A0D1CA',
    :'7465' => '40C1AC',
    :'7466' => '00B0B9',
    :'7467' => '00A3AD',
    :'7468' => '007398',
    :'7469' => '005F86',
    :'7470' => '005A70',
    :'7471' => '7EDDD3',
    :'7472' => '5CB8B2',
    :'7473' => '279989',
    :'7474' => '007681',
    :'7475' => '487A7B',
    :'7476' => '0D5257',
    :'7477' => '244C5A',
    :'7478' => '9BE3BF',
    :'7479' => '26D07C',
    :'7480' => '00BF6F',
    :'7481' => '00B74F',
    :'7482' => '009F4D',
    :'7483' => '275D38',
    :'7484' => '00573F',
    :'7485' => 'D0DEBB',
    :'7486' => 'BCE194',
    :'7487' => '8EDD65',
    :'7488' => '78D64B',
    :'7489' => '74AA50',
    :'7490' => '719949',
    :'7491' => '79863C',
    :'7492' => 'BFCC80',
    :'7493' => 'BBC592',
    :'7494' => '9CAF88',
    :'7495' => '8F993E',
    :'7496' => '76881D',
    :'7497' => '7A7256',
    :'7498' => '5B6236',
    :'7499' => 'F1E6B2',
    :'7500' => 'DFD1A7',
    :'7501' => 'D9C89E',
    :'7502' => 'CEB888',
    :'7503' => 'A89968',
    :'7504' => '94795D',
    :'7505' => '816040',
    :'7506' => 'EFDBB2',
    :'7507' => 'FCD299',
    :'7508' => 'E1B87F',
    :'7509' => 'D6A461',
    :'7510' => 'C6893F',
    :'7511' => 'B77729',
    :'7512' => 'A6631B',
    :'7513' => 'E1B7A7',
    :'7514' => 'D5A286',
    :'7515' => 'C58B68',
    :'7516' => '99552B',
    :'7517' => '85431E',
    :'7518' => '6D4F47',
    :'7519' => '5E4B3C',
    :'7520' => 'EABEB0',
    :'7521' => 'C09C83',
    :'7522' => 'B46A55',
    :'7523' => 'AB5C57',
    :'7524' => 'A45248',
    :'7525' => '9A6A4F',
    :'7526' => '8A391B',
    :'7527' => 'D6D2C4',
    :'7528' => 'C5B9AC',
    :'7529' => 'B7A99A',
    :'7530' => 'A39382',
    :'7531' => '7A6855',
    :'7532' => '63513D',
    :'7533' => '473729',
    :'7534' => 'D1CCBD',
    :'7535' => 'B7B09C',
    :'7536' => 'A69F88',
    :'7537' => 'A7ACA2',
    :'7538' => '949A90',
    :'7539' => '8E9089',
    :'7540' => '4B4F54',
    :'7541' => 'D9E1E2',
    :'7542' => 'A4BCC2',
    :'7543' => '98A4AE',
    :'7544' => '768692',
    :'7545' => '425563',
    :'7546' => '253746',
    :'7547' => '131E29',
    :'7548' => 'FFC600',
    :'7549' => 'FFB500',
    :'7550' => 'D19000',
    :'7551' => 'B47E00',
    :'7552' => '73531D',
    :'7553' => '5A4522',
    :'7554' => '4B3D2A',
    :'7555' => 'D29F13',
    :'7556' => 'B78B20',
    :'7557' => '9F7D23',
    :'7558' => '967126',
    :'7559' => '8F6A2A',
    :'7560' => '7D622E',
    :'7561' => '6C5D34',
    :'7562' => 'BD9B60',
    :'7563' => 'D69A2D',
    :'7564' => 'DB8A06',
    :'7565' => 'CD7925',
    :'7566' => 'AD6433',
    :'7567' => '89532F',
    :'7568' => '775135',
    :'7569' => 'D78825',
    :'7570' => 'D3832B',
    :'7571' => 'C67D30',
    :'7572' => 'B67233',
    :'7573' => 'A7662B',
    :'7574' => '9E6A38',
    :'7575' => '835D32',
    :'7576' => 'DB864E',
    :'7577' => 'E07E3C',
    :'7578' => 'DC6B2F',
    :'7579' => 'DC582A',
    :'7580' => 'C05131',
    :'7581' => '864A33',
    :'7582' => '674736',
    :'7583' => 'C4622D',
    :'7584' => 'BA5826',
    :'7585' => 'AF5C37',
    :'7586' => '9E5330',
    :'7587' => '924C2E',
    :'7588' => '7B4D35',
    :'7589' => '5C4738',
    :'7590' => 'D4B59E',
    :'7591' => 'C07D59',
    :'7592' => 'B15533',
    :'7593' => '9D432C',
    :'7594' => '7C3A2D',
    :'7595' => '6B3D2E',
    :'7596' => '5C3D31',
    :'7597' => 'D14124',
    :'7598' => 'BD472A',
    :'7599' => 'B33D26',
    :'7600' => '8D3F2B',
    :'7601' => '83412C',
    :'7602' => '7B4931',
    :'7603' => '674230',
    :'7604' => 'E4D5D3',
    :'7605' => 'E1BBB4',
    :'7606' => 'D6938A',
    :'7607' => 'C26E60',
    :'7608' => 'A4493D',
    :'7609' => '823B34',
    :'7610' => '683431',
    :'7611' => 'DDBCB0',
    :'7612' => 'CA9A8E',
    :'7613' => 'BC8A7E',
    :'7614' => 'A37F74',
    :'7615' => '866761',
    :'7616' => '6B4C4C',
    :'7617' => '583D3E',
    :'7618' => 'C66E4E',
    :'7619' => 'C04C36',
    :'7620' => 'B7312C',
    :'7621' => 'AB2328',
    :'7622' => '93272C',
    :'7623' => '8A2A2B',
    :'7624' => '802F2D',
    :'7625' => 'E1523D',
    :'7626' => 'C63527',
    :'7627' => 'A72B2A',
    :'7628' => '9E2A2B',
    :'7629' => '6D3332',
    :'7630' => '633231',
    :'7631' => '572D2D',
    :'7632' => 'D6C9CA',
    :'7633' => 'C4A4A7',
    :'7634' => 'C16784',
    :'7635' => 'C63663',
    :'7636' => 'BC204B',
    :'7637' => '912F46',
    :'7638' => '7E2D40',
    :'7639' => '936D73',
    :'7640' => '934054',
    :'7641' => '8E2C48',
    :'7642' => '732E4A',
    :'7643' => '672E45',
    :'7644' => '582D40',
    :'7645' => '502B3A',
    :'7646' => 'A56E87',
    :'7647' => 'A83D72',
    :'7648' => '991E66',
    :'7649' => '8A1B61',
    :'7650' => '722257',
    :'7651' => '6A2A5B',
    :'7652' => '5E2751',
    :'7653' => '948794',
    :'7654' => 'A2789C',
    :'7655' => 'A15A95',
    :'7656' => '8E3A80',
    :'7657' => '6E2B62',
    :'7658' => '6A3460',
    :'7659' => '5D3754',
    :'7660' => '9991A4',
    :'7661' => '8D6E97',
    :'7662' => '7A4183',
    :'7663' => '6B3077',
    :'7664' => '653279',
    :'7665' => '5E366E',
    :'7666' => '5C4E63',
    :'7667' => '6E7CA0',
    :'7668' => '686E9F',
    :'7669' => '615E9B',
    :'7670' => '565294',
    :'7671' => '514689',
    :'7672' => '4C4184',
    :'7673' => '535486',
    :'7674' => '878CB4',
    :'7675' => '7C7FAB',
    :'7676' => '7566A0',
    :'7677' => '6F5091',
    :'7678' => '68478D',
    :'7679' => '563D82',
    :'7680' => '523178',
    :'7681' => '94A9CB',
    :'7682' => '6787B7',
    :'7683' => '426DA9',
    :'7684' => '385E9D',
    :'7685' => '2C5697',
    :'7686' => '1D4F91',
    :'7687' => '1D428A',
    :'7688' => '4698CB',
    :'7689' => '298FC2',
    :'7690' => '0076A8',
    :'7691' => '006298',
    :'7692' => '005587',
    :'7693' => '004976',
    :'7694' => '01426A',
    :'7695' => '7BA7BC',
    :'7696' => '6399AE',
    :'7697' => '4E87A0',
    :'7698' => '41748D',
    :'7699' => '34657F',
    :'7700' => '165C7D',
    :'7701' => '005776',
    :'7702' => '48A9C5',
    :'7703' => '009CBD',
    :'7704' => '0085AD',
    :'7705' => '007096',
    :'7706' => '006A8E',
    :'7707' => '00617F',
    :'7708' => '005670',
    :'7709' => '63B1BC',
    :'7710' => '00A7B5',
    :'7711' => '0097A9',
    :'7712' => '00859B',
    :'7713' => '007D8A',
    :'7714' => '007680',
    :'7715' => '006269',
    :'7716' => '00968F',
    :'7717' => '00857D',
    :'7718' => '007672',
    :'7719' => '006D68',
    :'7720' => '00635B',
    :'7721' => '005E5D',
    :'7722' => '005151',
    :'7723' => '50A684',
    :'7724' => '00966C',
    :'7725' => '008755',
    :'7726' => '007B4B',
    :'7727' => '006F44',
    :'7728' => '006845',
    :'7729' => '005844',
    :'7730' => '4B9560',
    :'7731' => '228848',
    :'7732' => '007A3E',
    :'7733' => '007041',
    :'7734' => '286140',
    :'7735' => '36573B',
    :'7736' => '395542',
    :'7737' => '6BA539',
    :'7738' => '48A23F',
    :'7739' => '319B42',
    :'7740' => '3A913F',
    :'7741' => '44883E',
    :'7742' => '4A773C',
    :'7743' => '44693D',
    :'7744' => 'BABC16',
    :'7745' => 'ABAD23',
    :'7746' => '999B30',
    :'7747' => '888D30',
    :'7748' => '7C8034',
    :'7749' => '727337',
    :'7750' => '656635',
    :'7751' => 'CAB64B',
    :'7752' => 'CFB023',
    :'7753' => 'C1A01E',
    :'7754' => 'A08629',
    :'7755' => '897630',
    :'7756' => '736635',
    :'7757' => '675E33',
    :'7758' => 'D4C304',
    :'7759' => 'C4B200',
    :'7760' => '91852C',
    :'7761' => '747136',
    :'7762' => '5D6439',
    :'7763' => '585C3B',
    :'7764' => '535435',
    :'7765' => 'BBB323',
    :'7766' => 'B4A91F',
    :'7767' => 'AA9D2E',
    :'7768' => '8F7E35',
    :'7769' => '716135',
    :'7770' => '635939',
    :'7771' => '4E4934',
    :'871' => '857040',
    :'872' => '8C734A',
    :'873' => '8F734A',
    :'874' => '8C6B47',
    :'875' => '916B4A',
    :'876' => '996640',
    :'877' => '8F8F8C',
    :'8001' => '847F77',
    :'8002' => '83796B',
    :'8003' => '877A69',
    :'8004' => '83725B',
    :'8005' => '866F52',
    :'8020' => '957E72',
    :'8021' => '947361',
    :'8022' => '9B6D56',
    :'8023' => 'A16345',
    :'8040' => '918681',
    :'8041' => '957F77',
    :'8042' => '97766B',
    :'8043' => '9A6B5D',
    :'8060' => '947E81',
    :'8061' => '98777C',
    :'8062' => '966970',
    :'8063' => '9E5F67',
    :'8080' => '908087',
    :'8081' => '976B83',
    :'8082' => '965A7D',
    :'8083' => '9B4A79',
    :'8100' => '877082',
    :'8101' => '8E6C86',
    :'8102' => '8C5C82',
    :'8103' => '954B83',
    :'8120' => '8C838A',
    :'8121' => '8A7A8A',
    :'8122' => '886D89',
    :'8123' => '856087',
    :'8140' => '84768B',
    :'8141' => '856F91',
    :'8142' => '765D85',
    :'8143' => '715085',
    :'8160' => '817E86',
    :'8161' => '7B768B',
    :'8162' => '6A6089',
    :'8163' => '5F5284',
    :'8180' => '7E848B',
    :'8181' => '677790',
    :'8182' => '576B8C',
    :'8183' => '485E89',
    :'8200' => '74858D',
    :'8201' => '617A8A',
    :'8202' => '507C94',
    :'8203' => '3D7392',
    :'8220' => '73868B',
    :'8221' => '64828C',
    :'8222' => '527F8E',
    :'8223' => '3B778D',
    :'8240' => '828989',
    :'8241' => '64868B',
    :'8242' => '53818A',
    :'8243' => '367D8A',
    :'8260' => '728B8B',
    :'8261' => '638687',
    :'8262' => '4F8586',
    :'8263' => '368282',
    :'8280' => '7C908A',
    :'8281' => '708C85',
    :'8282' => '608F86',
    :'8283' => '488D81',
    :'8300' => '7E8C7F',
    :'8301' => '758D79',
    :'8302' => '688D71',
    :'8303' => '578E68',
    :'8320' => '888B7D',
    :'8321' => '7A8A6B',
    :'8322' => '758F61',
    :'8323' => '6A9054',
    :'8340' => '8B8D71',
    :'8341' => '898F65',
    :'8342' => '869254',
    :'8343' => '809145',
    :'8360' => '8E8D6D',
    :'8361' => '908E5D',
    :'8362' => '928F4F',
    :'8363' => '99943E',
    :'8380' => '8F8A76',
    :'8381' => '91896A',
    :'8382' => '93865D',
    :'8383' => '968350',
    :'8400' => '817E79',
    :'8401' => '78746E',
    :'8402' => '6F6A63',
    :'8403' => '635E57',
    :'8420' => '8C8581',
    :'8421' => '7F7672',
    :'8422' => '756A66',
    :'8423' => '695E5A',
    :'8440' => '997D7B',
    :'8441' => 'A07774',
    :'8442' => 'A26C68',
    :'8443' => 'A7625D',
    :'8460' => '887E81',
    :'8461' => '847279',
    :'8462' => '7D6871',
    :'8463' => '755C66',
    :'8480' => '506977',
    :'8481' => '596174',
    :'8482' => '3E5869',
    :'8483' => '32465C',
    :'8500' => '6F7A74',
    :'8501' => '677C63',
    :'8502' => '4C6266',
    :'8503' => '3B4441',
    :'8520' => '757152',
    :'8521' => '53533F',
    :'8522' => '454A3B',
    :'8523' => '384136',
    :'8540' => '855147',
    :'8541' => '6C463D',
    :'8542' => '693335',
    :'8543' => '5B333A',
    :'8560' => '7F523E',
    :'8561' => '744536',
    :'8562' => '693931',
    :'8563' => '6A3C2E',
    :'8580' => '936B38',
    :'8581' => '7F5931',
    :'8582' => '78512A',
    :'8583' => '663F1B',
    :'8600' => '665C4F',
    :'8601' => '56493D',
    :'8602' => '4A4037',
    :'8603' => '3B3431',
    :'8620' => '775D3D',
    :'8621' => '644F36',
    :'8622' => '55432F',
    :'8623' => '463A2E',
    :'8640' => '97752D',
    :'8641' => 'A17F1E',
    :'8642' => 'AE8C05',
    :'8643' => 'AF8D0C',
    :'8660' => '8C7531',
    :'8661' => '8A7F19',
    :'8662' => '827D18',
    :'8663' => '828A03',
    :'8680' => '786D37',
    :'8681' => '75752F',
    :'8682' => '6B7D28',
    :'8683' => '618A23',
    :'8700' => '737447',
    :'8701' => '6B753D',
    :'8702' => '567536',
    :'8703' => '3F7B34',
    :'8720' => '566B4D',
    :'8721' => '5C744E',
    :'8722' => '456F4C',
    :'8723' => '2B8056',
    :'8740' => '4E6352',
    :'8741' => '366954',
    :'8742' => '386857',
    :'8743' => '066760',
    :'8760' => '36645E',
    :'8761' => '0C5F64',
    :'8762' => '3A595C',
    :'8763' => '255261',
    :'8780' => '4C3F4C',
    :'8781' => '464458',
    :'8782' => '423967',
    :'8783' => '393B5D',
    :'8800' => '5F395F',
    :'8801' => '5C3F5B',
    :'8802' => '51325D',
    :'8803' => '542A60',
    :'8820' => '8D465B',
    :'8821' => '8F3860',
    :'8822' => '6F3A57',
    :'8823' => '662C58',
    :'8840' => '894141',
    :'8841' => '91334E',
    :'8842' => '972157',
    :'8843' => '872459',
    :'8860' => '9A473B',
    :'8861' => '974042',
    :'8862' => 'A13349',
    :'8863' => 'A22141',
    :'8880' => '995147',
    :'8881' => 'A2464E',
    :'8882' => 'A03645',
    :'8883' => '9C2C2A',
    :'8900' => 'A25637',
    :'8901' => 'B55337',
    :'8902' => 'B04D3E',
    :'8903' => 'B44335',
    :'8920' => '9B5F3C',
    :'8921' => 'B75A2B',
    :'8922' => 'C0590E',
    :'8923' => 'B74B19',
    :'8940' => '9C642D',
    :'8941' => 'A35E1F',
    :'8942' => 'AF5C11',
    :'8943' => 'BA5E05',
    :'8960' => '966C2B',
    :'8961' => 'A56A20',
    :'8962' => 'BB800B',
    :'8963' => 'B36607',
    :'195' => '782F40',
    :'407' => 'B2A8A2',
    :'493' => 'DC8699',
    :'568' => '006C5B',
    :'black0961' => '9E978E',
    :'black2' => '332F21',
    :'black3' => '212721',
    :'black4' => '31261D',
    :'black5' => '3E2B2E',
    :'black6' => '101820',
    :'black7' => '3D3935',
    :'black' => '2D2926',
    :'blue072' => '10069F',
    :'blue0821' => '74D1EA',
    :'brightgreen' => '00B08B',
    :'brightorange' => 'FF5E00',
    :'brightred' => 'F93822',
    :'coolgray1' => 'D9D9D6',
    :'coolgray10' => '63666A',
    :'coolgray11' => '53565A',
    :'coolgray2' => 'D0D0CE',
    :'coolgray3' => 'C8C9C7',
    :'coolgray4' => 'BBBCBC',
    :'coolgray5' => 'B1B3B3',
    :'coolgray6' => 'A7A8AA',
    :'coolgray7' => '97999B',
    :'coolgray8' => '888B8D',
    :'coolgray9' => '75787B',
    :'darkblue' => '00239C',
    :'green0921' => '9DE7D7',
    :'green' => '00AB84',
    :'magenta0521' => 'F1B2DC',
    :'mediumblue' => '0084CA',
    :'mediumpurple' => '4E008E',
    :'mediumyellow' => 'FFD900',
    :'neutralblack' => '222223',
    :'orange021' => 'FE5000',
    :'pink' => 'D62598',
    :'processblue' => '0085CA',
    :'purple' => 'BB29BB',
    :'red032' => 'EF3340',
    :'red0331' => 'FCAEBB',
    :'reflexblue' => '001489',
    :'rhodaminered' => 'E10098',
    :'rubinered' => 'CE0058',
    :'strongred' => 'CE0056',
    :'violet0631' => 'BF9BDE',
    :'violet' => '440099',
    :'warmgray1' => 'D7D2CB',
    :'warmgray10' => '796E65',
    :'warmgray11' => '6E6259',
    :'warmgray2' => 'CBC4BC',
    :'warmgray3' => 'BFB8AF',
    :'warmgray4' => 'B6ADA5',
    :'warmgray5' => 'ACA39A',
    :'warmgray6' => 'A59C94',
    :'warmgray7' => '968C83',
    :'warmgray8' => '8C8279',
    :'warmgray9' => '83786F',
    :'warmred' => 'F9423A',
    :'yellow012' => 'FFD700',
    :'yellow0131' => 'F2F0A1',
    :'yellow' => 'FEDD00'
  }

end