//
//  Copyright (c) 2014-2016 Actor LLC. <https://actor.im>
//

import Foundation
import CoreTelephony

class AATelephony {
    
    static func loadDefaultISOCountry() -> String {
        
        let networkInfo = CTTelephonyNetworkInfo()
        let carrier = networkInfo.subscriberCellularProvider
        let countryCode = carrier?.isoCountryCode?.lowercased()
        
        if countryCode == nil {
            return "en"
        } else {
            return countryCode!
        }
    }
    
    static func getCountry(_ iso: String) -> CountryDesc {
        for i in AATelephony.countryCodes {
            if i.iso.lowercased() == iso.lowercased() {
                return i
            }
        }
        return getCountry("us")
    }

    
    static let countryCodes = [
        CountryDesc(code: 1876, iso: "JM", country: "Jamaica"),
        CountryDesc(code: 1869, iso: "KN", country: "Saint Kitts & Nevis"),
        CountryDesc(code: 1868, iso: "TT", country: "Trinidad & Tobago"),
        CountryDesc(code: 1784, iso: "VC", country: "Saint Vincent & the Grenadines"),
        CountryDesc(code: 1767, iso: "DM", country: "Dominica"),
        CountryDesc(code: 1758, iso: "LC", country: "Saint Lucia"),
        CountryDesc(code: 1721, iso: "SX", country: "Sint Maarten"),
        CountryDesc(code: 1684, iso: "AS", country: "American Samoa"),
        CountryDesc(code: 1671, iso: "GU", country: "Guam"),
        CountryDesc(code: 1670, iso: "MP", country: "Northern Mariana Islands"),
        CountryDesc(code: 1664, iso: "MS", country: "Montserrat"),
        CountryDesc(code: 1649, iso: "TC", country: "Turks & Caicos Islands"),
        CountryDesc(code: 1473, iso: "GD", country: "Grenada"),
        CountryDesc(code: 1441, iso: "BM", country: "Bermuda"),
        CountryDesc(code: 1345, iso: "KY", country: "Cayman Islands"),
        CountryDesc(code: 1340, iso: "VI", country: "US Virgin Islands"),
        CountryDesc(code: 1284, iso: "VG", country: "British Virgin Islands"),
        CountryDesc(code: 1268, iso: "AG", country: "Antigua & Barbuda"),
        CountryDesc(code: 1264, iso: "AI", country: "Anguilla"),
        CountryDesc(code: 1246, iso: "BB", country: "Barbados"),
        CountryDesc(code: 1242, iso: "BS", country: "Bahamas"),
        CountryDesc(code: 998, iso: "UZ", country: "Uzbekistan"),
        CountryDesc(code: 996, iso: "KG", country: "Kyrgyzstan"),
        CountryDesc(code: 995, iso: "GE", country: "Georgia"),
        CountryDesc(code: 994, iso: "AZ", country: "Azerbaijan"),
        CountryDesc(code: 993, iso: "TM", country: "Turkmenistan"),
        CountryDesc(code: 992, iso: "TJ", country: "Tajikistan"),
        CountryDesc(code: 977, iso: "NP", country: "Nepal"),
        CountryDesc(code: 976, iso: "MN", country: "Mongolia"),
        CountryDesc(code: 975, iso: "BT", country: "Bhutan"),
        CountryDesc(code: 974, iso: "QA", country: "Qatar"),
        CountryDesc(code: 973, iso: "BH", country: "Bahrain"),
        CountryDesc(code: 972, iso: "IL", country: "Israel"),
        CountryDesc(code: 971, iso: "AE", country: "United Arab Emirates"),
        CountryDesc(code: 970, iso: "PS", country: "Palestine"),
        CountryDesc(code: 968, iso: "OM", country: "Oman"),
        CountryDesc(code: 967, iso: "YE", country: "Yemen"),
        CountryDesc(code: 966, iso: "SA", country: "Saudi Arabia"),
        CountryDesc(code: 965, iso: "KW", country: "Kuwait"),
        CountryDesc(code: 964, iso: "IQ", country: "Iraq"),
        CountryDesc(code: 963, iso: "SY", country: "Syria"),
        CountryDesc(code: 962, iso: "JO", country: "Jordan"),
        CountryDesc(code: 961, iso: "LB", country: "Lebanon"),
        CountryDesc(code: 960, iso: "MV", country: "Maldives"),
        CountryDesc(code: 886, iso: "TW", country: "Taiwan"),
        CountryDesc(code: 880, iso: "BD", country: "Bangladesh"),
        CountryDesc(code: 856, iso: "LA", country: "Laos"),
        CountryDesc(code: 855, iso: "KH", country: "Cambodia"),
        CountryDesc(code: 853, iso: "MO", country: "Macau"),
        CountryDesc(code: 852, iso: "HK", country: "Hong Kong"),
        CountryDesc(code: 850, iso: "KP", country: "North Korea"),
        CountryDesc(code: 692, iso: "MH", country: "Marshall Islands"),
        CountryDesc(code: 691, iso: "FM", country: "Micronesia"),
        CountryDesc(code: 690, iso: "TK", country: "Tokelau"),
        CountryDesc(code: 689, iso: "PF", country: "French Polynesia"),
        CountryDesc(code: 688, iso: "TV", country: "Tuvalu"),
        CountryDesc(code: 687, iso: "NC", country: "New Caledonia"),
        CountryDesc(code: 686, iso: "KI", country: "Kiribati"),
        CountryDesc(code: 685, iso: "WS", country: "Samoa"),
        CountryDesc(code: 683, iso: "NU", country: "Niue"),
        CountryDesc(code: 682, iso: "CK", country: "Cook Islands"),
        CountryDesc(code: 681, iso: "WF", country: "Wallis & Futuna"),
        CountryDesc(code: 680, iso: "PW", country: "Palau"),
        CountryDesc(code: 679, iso: "FJ", country: "Fiji"),
        CountryDesc(code: 678, iso: "VU", country: "Vanuatu"),
        CountryDesc(code: 677, iso: "SB", country: "Solomon Islands"),
        CountryDesc(code: 676, iso: "TO", country: "Tonga"),
        CountryDesc(code: 675, iso: "PG", country: "Papua New Guinea"),
        CountryDesc(code: 674, iso: "NR", country: "Nauru"),
        CountryDesc(code: 673, iso: "BN", country: "Brunei Darussalam"),
        CountryDesc(code: 672, iso: "NF", country: "Norfolk Island"),
        CountryDesc(code: 670, iso: "TL", country: "Timor-Leste"),
        CountryDesc(code: 599, iso: "BQ", country: "Bonaire, Sint Eustatius & Saba"),
        CountryDesc(code: 599, iso: "CW", country: "Curaçao"),
        CountryDesc(code: 598, iso: "UY", country: "Uruguay"),
        CountryDesc(code: 597, iso: "SR", country: "Suriname"),
        CountryDesc(code: 596, iso: "MQ", country: "Martinique"),
        CountryDesc(code: 595, iso: "PY", country: "Paraguay"),
        CountryDesc(code: 594, iso: "GF", country: "French Guiana"),
        CountryDesc(code: 593, iso: "EC", country: "Ecuador"),
        CountryDesc(code: 592, iso: "GY", country: "Guyana"),
        CountryDesc(code: 591, iso: "BO", country: "Bolivia"),
        CountryDesc(code: 590, iso: "GP", country: "Guadeloupe"),
        CountryDesc(code: 509, iso: "HT", country: "Haiti"),
        CountryDesc(code: 508, iso: "PM", country: "Saint Pierre & Miquelon"),
        CountryDesc(code: 507, iso: "PA", country: "Panama"),
        CountryDesc(code: 506, iso: "CR", country: "Costa Rica"),
        CountryDesc(code: 505, iso: "NI", country: "Nicaragua"),
        CountryDesc(code: 504, iso: "HN", country: "Honduras"),
        CountryDesc(code: 503, iso: "SV", country: "El Salvador"),
        CountryDesc(code: 502, iso: "GT", country: "Guatemala"),
        CountryDesc(code: 501, iso: "BZ", country: "Belize"),
        CountryDesc(code: 500, iso: "FK", country: "Falkland Islands"),
        CountryDesc(code: 423, iso: "LI", country: "Liechtenstein"),
        CountryDesc(code: 421, iso: "SK", country: "Slovakia"),
        CountryDesc(code: 420, iso: "CZ", country: "Czech Republic"),
        CountryDesc(code: 389, iso: "MK", country: "Macedonia"),
        CountryDesc(code: 387, iso: "BA", country: "Bosnia & Herzegovina"),
        CountryDesc(code: 386, iso: "SI", country: "Slovenia"),
        CountryDesc(code: 385, iso: "HR", country: "Croatia"),
        CountryDesc(code: 382, iso: "ME", country: "Montenegro"),
        CountryDesc(code: 381, iso: "RS", country: "Serbia"),
        CountryDesc(code: 380, iso: "UA", country: "Ukraine"),
        CountryDesc(code: 378, iso: "SM", country: "San Marino"),
        CountryDesc(code: 377, iso: "MC", country: "Monaco"),
        CountryDesc(code: 376, iso: "AD", country: "Andorra"),
        CountryDesc(code: 375, iso: "BY", country: "Belarus"),
        CountryDesc(code: 374, iso: "AM", country: "Armenia"),
        CountryDesc(code: 373, iso: "MD", country: "Moldova"),
        CountryDesc(code: 372, iso: "EE", country: "Estonia"),
        CountryDesc(code: 371, iso: "LV", country: "Latvia"),
        CountryDesc(code: 370, iso: "LT", country: "Lithuania"),
        CountryDesc(code: 359, iso: "BG", country: "Bulgaria"),
        CountryDesc(code: 358, iso: "FI", country: "Finland"),
        CountryDesc(code: 357, iso: "CY", country: "Cyprus"),
        CountryDesc(code: 356, iso: "MT", country: "Malta"),
        CountryDesc(code: 355, iso: "AL", country: "Albania"),
        CountryDesc(code: 354, iso: "IS", country: "Iceland"),
        CountryDesc(code: 353, iso: "IE", country: "Ireland"),
        CountryDesc(code: 352, iso: "LU", country: "Luxembourg"),
        CountryDesc(code: 351, iso: "PT", country: "Portugal"),
        CountryDesc(code: 350, iso: "GI", country: "Gibraltar"),
        CountryDesc(code: 299, iso: "GL", country: "Greenland"),
        CountryDesc(code: 298, iso: "FO", country: "Faroe Islands"),
        CountryDesc(code: 297, iso: "AW", country: "Aruba"),
        CountryDesc(code: 291, iso: "ER", country: "Eritrea"),
        CountryDesc(code: 290, iso: "SH", country: "Saint Helena"),
        CountryDesc(code: 269, iso: "KM", country: "Comoros"),
        CountryDesc(code: 268, iso: "SZ", country: "Swaziland"),
        CountryDesc(code: 267, iso: "BW", country: "Botswana"),
        CountryDesc(code: 266, iso: "LS", country: "Lesotho"),
        CountryDesc(code: 265, iso: "MW", country: "Malawi"),
        CountryDesc(code: 264, iso: "NA", country: "Namibia"),
        CountryDesc(code: 263, iso: "ZW", country: "Zimbabwe"),
        CountryDesc(code: 262, iso: "RE", country: "Réunion"),
        CountryDesc(code: 261, iso: "MG", country: "Madagascar"),
        CountryDesc(code: 260, iso: "ZM", country: "Zambia"),
        CountryDesc(code: 258, iso: "MZ", country: "Mozambique"),
        CountryDesc(code: 257, iso: "BI", country: "Burundi"),
        CountryDesc(code: 256, iso: "UG", country: "Uganda"),
        CountryDesc(code: 255, iso: "TZ", country: "Tanzania"),
        CountryDesc(code: 254, iso: "KE", country: "Kenya"),
        CountryDesc(code: 253, iso: "DJ", country: "Djibouti"),
        CountryDesc(code: 252, iso: "SO", country: "Somalia"),
        CountryDesc(code: 251, iso: "ET", country: "Ethiopia"),
        CountryDesc(code: 250, iso: "RW", country: "Rwanda"),
        CountryDesc(code: 249, iso: "SD", country: "Sudan"),
        CountryDesc(code: 248, iso: "SC", country: "Seychelles"),
        CountryDesc(code: 247, iso: "SH", country: "Saint Helena"),
        CountryDesc(code: 246, iso: "IO", country: "Diego Garcia"),
        CountryDesc(code: 245, iso: "GW", country: "Guinea-Bissau"),
        CountryDesc(code: 244, iso: "AO", country: "Angola"),
        CountryDesc(code: 243, iso: "CD", country: "Congo (Dem. Rep.)"),
        CountryDesc(code: 242, iso: "CG", country: "Congo (Rep.)"),
        CountryDesc(code: 241, iso: "GA", country: "Gabon"),
        CountryDesc(code: 240, iso: "GQ", country: "Equatorial Guinea"),
        CountryDesc(code: 239, iso: "ST", country: "São Tomé & Príncipe"),
        CountryDesc(code: 238, iso: "CV", country: "Cape Verde"),
        CountryDesc(code: 237, iso: "CM", country: "Cameroon"),
        CountryDesc(code: 236, iso: "CF", country: "Central African Rep."),
        CountryDesc(code: 235, iso: "TD", country: "Chad"),
        CountryDesc(code: 234, iso: "NG", country: "Nigeria"),
        CountryDesc(code: 233, iso: "GH", country: "Ghana"),
        CountryDesc(code: 232, iso: "SL", country: "Sierra Leone"),
        CountryDesc(code: 231, iso: "LR", country: "Liberia"),
        CountryDesc(code: 230, iso: "MU", country: "Mauritius"),
        CountryDesc(code: 229, iso: "BJ", country: "Benin"),
        CountryDesc(code: 228, iso: "TG", country: "Togo"),
        CountryDesc(code: 227, iso: "NE", country: "Niger"),
        CountryDesc(code: 226, iso: "BF", country: "Burkina Faso"),
        CountryDesc(code: 225, iso: "CI", country: "Côte d`Ivoire"),
        CountryDesc(code: 224, iso: "GN", country: "Guinea"),
        CountryDesc(code: 223, iso: "ML", country: "Mali"),
        CountryDesc(code: 222, iso: "MR", country: "Mauritania"),
        CountryDesc(code: 221, iso: "SN", country: "Senegal"),
        CountryDesc(code: 220, iso: "GM", country: "Gambia"),
        CountryDesc(code: 218, iso: "LY", country: "Libya"),
        CountryDesc(code: 216, iso: "TN", country: "Tunisia"),
        CountryDesc(code: 213, iso: "DZ", country: "Algeria"),
        CountryDesc(code: 212, iso: "MA", country: "Morocco"),
        CountryDesc(code: 211, iso: "SS", country: "South Sudan"),
        CountryDesc(code: 98, iso: "IR", country: "Iran"),
        CountryDesc(code: 95, iso: "MM", country: "Myanmar"),
        CountryDesc(code: 94, iso: "LK", country: "Sri Lanka"),
        CountryDesc(code: 93, iso: "AF", country: "Afghanistan"),
        CountryDesc(code: 92, iso: "PK", country: "Pakistan"),
        CountryDesc(code: 91, iso: "IN", country: "India"),
        CountryDesc(code: 90, iso: "TR", country: "Turkey"),
        CountryDesc(code: 86, iso: "CN", country: "China"),
        CountryDesc(code: 84, iso: "VN", country: "Vietnam"),
        CountryDesc(code: 82, iso: "KR", country: "South Korea"),
        CountryDesc(code: 81, iso: "JP", country: "Japan"),
        CountryDesc(code: 66, iso: "TH", country: "Thailand"),
        CountryDesc(code: 65, iso: "SG", country: "Singapore"),
        CountryDesc(code: 64, iso: "NZ", country: "New Zealand"),
        CountryDesc(code: 63, iso: "PH", country: "Philippines"),
        CountryDesc(code: 62, iso: "ID", country: "Indonesia"),
        CountryDesc(code: 61, iso: "AU", country: "Australia"),
        CountryDesc(code: 60, iso: "MY", country: "Malaysia"),
        CountryDesc(code: 58, iso: "VE", country: "Venezuela"),
        CountryDesc(code: 57, iso: "CO", country: "Colombia"),
        CountryDesc(code: 56, iso: "CL", country: "Chile"),
        CountryDesc(code: 55, iso: "BR", country: "Brazil"),
        CountryDesc(code: 54, iso: "AR", country: "Argentina"),
        CountryDesc(code: 53, iso: "CU", country: "Cuba"),
        CountryDesc(code: 52, iso: "MX", country: "Mexico"),
        CountryDesc(code: 51, iso: "PE", country: "Peru"),
        CountryDesc(code: 49, iso: "DE", country: "Germany"),
        CountryDesc(code: 48, iso: "PL", country: "Poland"),
        CountryDesc(code: 47, iso: "NO", country: "Norway"),
        CountryDesc(code: 46, iso: "SE", country: "Sweden"),
        CountryDesc(code: 45, iso: "DK", country: "Denmark"),
        CountryDesc(code: 44, iso: "GB", country: "United Kingdom"),
        CountryDesc(code: 43, iso: "AT", country: "Austria"),
        CountryDesc(code: 41, iso: "CH", country: "Switzerland"),
        CountryDesc(code: 40, iso: "RO", country: "Romania"),
        CountryDesc(code: 39, iso: "IT", country: "Italy"),
        CountryDesc(code: 36, iso: "HU", country: "Hungary"),
        CountryDesc(code: 34, iso: "ES", country: "Spain"),
        CountryDesc(code: 33, iso: "FR", country: "France"),
        CountryDesc(code: 32, iso: "BE", country: "Belgium"),
        CountryDesc(code: 31, iso: "NL", country: "Netherlands"),
        CountryDesc(code: 30, iso: "GR", country: "Greece"),
        CountryDesc(code: 27, iso: "ZA", country: "South Africa"),
        CountryDesc(code: 20, iso: "EG", country: "Egypt"),
        CountryDesc(code: 7, iso: "RU", country: "Russian Federation"),
        CountryDesc(code: 7, iso: "KZ", country: "Kazakhstan"),
        CountryDesc(code: 1, iso: "US", country: "USA"),
        CountryDesc(code: 1, iso: "PR", country: "Puerto Rico"),
        CountryDesc(code: 1, iso: "DO", country: "Dominican Rep."),
        CountryDesc(code: 1, iso: "CA", country: "Canada")
    ]
}

class CountryDesc {
    
    let code: Int
    let iso: String
    let country: String
    
    init(code: Int, iso: String, country: String) {
        self.code = code
        self.iso = iso
        self.country = country
    }
}