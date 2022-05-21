import 'package:flutter/material.dart';
import 'package:world_time/services/WorldTime.dart';
class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  late List<WorldTime> searchedTimeZones;
  List<WorldTime> availableTimeZones= [
    WorldTime(location: 'Nairobi', url: 'Africa/Nairobi', flag: 'assets/kenya.png'),
    WorldTime(location: 'Johannesburg', url: 'Africa/Johannesburg', flag: 'assets/south_africa.jpg'),
    WorldTime(location: 'Cairo', url: 'Africa/Cairo', flag: 'assets/egypt.png'),
    WorldTime(location: 'New York', url: 'America/New_York', flag: 'assets/usa.png'),
    WorldTime(location: 'London', url: 'Europe/London', flag: 'assets/uk.png'),
    WorldTime(location: 'Berlin', url: 'Europe/Berlin', flag: 'assets/germany.png'),
    WorldTime(location: 'Seoul', url: 'Asia/Seoul', flag: 'assets/south_korea.png'),
    WorldTime(location: 'Athens', url: 'Europe/Athens', flag: 'assets/greece.png'),
    WorldTime(location: 'Jakarta', url: 'Asia/Jakarta', flag: 'assets/indonesia.png'),

    WorldTime(location: 'Abidjan', url: 'Africa/Abidjan'),
    WorldTime(location: 'Accra', url: 'Africa/Accra'),
    WorldTime(location: 'Algiers', url: 'Africa/Algiers'),
    WorldTime(location: 'Bissau', url: 'Africa/Bissau'),
    WorldTime(location: 'Casablanca', url: 'Africa/Casablanca'),
    WorldTime(location: 'Ceuta', url: 'Africa/Ceuta'),
    WorldTime(location: 'El_Aaiun', url: 'Africa/El_Aaiun'),
    WorldTime(location: 'Juba', url: 'Africa/Juba'),
    WorldTime(location: 'Khartoum', url: 'Africa/Khartoum'),
    WorldTime(location: 'Lagos', url: 'Africa/Lagos'),
    WorldTime(location: 'Maputo', url: 'Africa/Maputo'),
    WorldTime(location: 'Monrovia', url: 'Africa/Monrovia'),
    WorldTime(location: 'Ndjamena', url: 'Africa/Ndjamena'),
    WorldTime(location: 'Sao_Tome', url: 'Africa/Sao_Tome'),
    WorldTime(location: 'Tripoli', url: 'Africa/Tripoli'),
    WorldTime(location: 'Tunis', url: 'Africa/Tunis'),
    WorldTime(location: 'Windhoek', url: 'Africa/Windhoek'),
    WorldTime(location: 'Adak', url: 'America/Adak'),
    WorldTime(location: 'Anchorage', url: 'America/Anchorage'),
    WorldTime(location: 'Araguaina', url: 'America/Araguaina'),
    WorldTime(location: 'Buenos_Aires', url: 'America/Argentina/Buenos_Aires'),
    WorldTime(location: 'Catamarca', url: 'America/Argentina/Catamarca'),
    WorldTime(location: 'Cordoba', url: 'America/Argentina/Cordoba'),
    WorldTime(location: 'Jujuy', url: 'America/Argentina/Jujuy'),
    WorldTime(location: 'La_Rioja', url: 'America/Argentina/La_Rioja'),
    WorldTime(location: 'Mendoza', url: 'America/Argentina/Mendoza'),
    WorldTime(location: 'Rio_Gallegos', url: 'America/Argentina/Rio_Gallegos'),
    WorldTime(location: 'Salta', url: 'America/Argentina/Salta'),
    WorldTime(location: 'San_Juan', url: 'America/Argentina/San_Juan'),
    WorldTime(location: 'San_Luis', url: 'America/Argentina/San_Luis'),
    WorldTime(location: 'Tucuman', url: 'America/Argentina/Tucuman'),
    WorldTime(location: 'Ushuaia', url: 'America/Argentina/Ushuaia'),
    WorldTime(location: 'Asuncion', url: 'America/Asuncion'),
    WorldTime(location: 'Atikokan', url: 'America/Atikokan'),
    WorldTime(location: 'Bahia', url: 'America/Bahia'),
    WorldTime(location: 'Bahia_Banderas', url: 'America/Bahia_Banderas'),
    WorldTime(location: 'Barbados', url: 'America/Barbados'),
    WorldTime(location: 'Belem', url: 'America/Belem'),
    WorldTime(location: 'Belize', url: 'America/Belize'),
    WorldTime(location: 'Blanc-Sablon', url: 'America/Blanc-Sablon'),
    WorldTime(location: 'Boa_Vista', url: 'America/Boa_Vista'),
    WorldTime(location: 'Bogota', url: 'America/Bogota'),
    WorldTime(location: 'Boise', url: 'America/Boise'),
    WorldTime(location: 'Cambridge_Bay', url: 'America/Cambridge_Bay'),
    WorldTime(location: 'Campo_Grande', url: 'America/Campo_Grande'),
    WorldTime(location: 'Cancun', url: 'America/Cancun'),
    WorldTime(location: 'Caracas', url: 'America/Caracas'),
    WorldTime(location: 'Cayenne', url: 'America/Cayenne'),
    WorldTime(location: 'Chicago', url: 'America/Chicago'),
    WorldTime(location: 'Chihuahua', url: 'America/Chihuahua'),
    WorldTime(location: 'Costa_Rica', url: 'America/Costa_Rica'),
    WorldTime(location: 'Creston', url: 'America/Creston'),
    WorldTime(location: 'Cuiaba', url: 'America/Cuiaba'),
    WorldTime(location: 'Curacao', url: 'America/Curacao'),
    WorldTime(location: 'Danmarkshavn', url: 'America/Danmarkshavn'),
    WorldTime(location: 'Dawson', url: 'America/Dawson'),
    WorldTime(location: 'Dawson_Creek', url: 'America/Dawson_Creek'),
    WorldTime(location: 'Denver', url: 'America/Denver'),
    WorldTime(location: 'Detroit', url: 'America/Detroit'),
    WorldTime(location: 'Edmonton', url: 'America/Edmonton'),
    WorldTime(location: 'Eirunepe', url: 'America/Eirunepe'),
    WorldTime(location: 'El_Salvador', url: 'America/El_Salvador'),
    WorldTime(location: 'Fort_Nelson', url: 'America/Fort_Nelson'),
    WorldTime(location: 'Fortaleza', url: 'America/Fortaleza'),
    WorldTime(location: 'Glace_Bay', url: 'America/Glace_Bay'),
    WorldTime(location: 'Goose_Bay', url: 'America/Goose_Bay'),
    WorldTime(location: 'Grand_Turk', url: 'America/Grand_Turk'),
    WorldTime(location: 'Guatemala', url: 'America/Guatemala'),
    WorldTime(location: 'Guayaquil', url: 'America/Guayaquil'),
    WorldTime(location: 'Guyana', url: 'America/Guyana'),
    WorldTime(location: 'Halifax', url: 'America/Halifax'),
    WorldTime(location: 'Havana', url: 'America/Havana'),
    WorldTime(location: 'Hermosillo', url: 'America/Hermosillo'),
    WorldTime(location: 'Indianapolis', url: 'America/Indiana/Indianapolis'),
    WorldTime(location: 'Knox', url: 'America/Indiana/Knox'),
    WorldTime(location: 'Marengo', url: 'America/Indiana/Marengo'),
    WorldTime(location: 'Petersburg', url: 'America/Indiana/Petersburg'),
    WorldTime(location: 'Tell_City', url: 'America/Indiana/Tell_City'),
    WorldTime(location: 'Vevay', url: 'America/Indiana/Vevay'),
    WorldTime(location: 'Vincennes', url: 'America/Indiana/Vincennes'),
    WorldTime(location: 'Winamac', url: 'America/Indiana/Winamac'),
    WorldTime(location: 'Inuvik', url: 'America/Inuvik'),
    WorldTime(location: 'Iqaluit', url: 'America/Iqaluit'),
    WorldTime(location: 'Jamaica', url: 'America/Jamaica'),
    WorldTime(location: 'Juneau', url: 'America/Juneau'),
    WorldTime(location: 'Louisville', url: 'America/Kentucky/Louisville'),
    WorldTime(location: 'Monticello', url: 'America/Kentucky/Monticello'),
    WorldTime(location: 'La_Paz', url: 'America/La_Paz'),
    WorldTime(location: 'Lima', url: 'America/Lima'),
    WorldTime(location: 'Los_Angeles', url: 'America/Los_Angeles'),
    WorldTime(location: 'Maceio', url: 'America/Maceio'),
    WorldTime(location: 'Managua', url: 'America/Managua'),
    WorldTime(location: 'Manaus', url: 'America/Manaus'),
    WorldTime(location: 'Martinique', url: 'America/Martinique'),
    WorldTime(location: 'Matamoros', url: 'America/Matamoros'),
    WorldTime(location: 'Mazatlan', url: 'America/Mazatlan'),
    WorldTime(location: 'Menominee', url: 'America/Menominee'),
    WorldTime(location: 'Merida', url: 'America/Merida'),
    WorldTime(location: 'Metlakatla', url: 'America/Metlakatla'),
    WorldTime(location: 'Mexico_City', url: 'America/Mexico_City'),
    WorldTime(location: 'Miquelon', url: 'America/Miquelon'),
    WorldTime(location: 'Moncton', url: 'America/Moncton'),
    WorldTime(location: 'Monterrey', url: 'America/Monterrey'),
    WorldTime(location: 'Montevideo', url: 'America/Montevideo'),
    WorldTime(location: 'Nassau', url: 'America/Nassau'),
    WorldTime(location: 'New_York', url: 'America/New_York'),
    WorldTime(location: 'Nipigon', url: 'America/Nipigon'),
    WorldTime(location: 'Nome', url: 'America/Nome'),
    WorldTime(location: 'Noronha', url: 'America/Noronha'),
    WorldTime(location: 'Beulah', url: 'America/North_Dakota/Beulah'),
    WorldTime(location: 'Center', url: 'America/North_Dakota/Center'),
    WorldTime(location: 'New_Salem', url: 'America/North_Dakota/New_Salem'),
    WorldTime(location: 'Nuuk', url: 'America/Nuuk'),
    WorldTime(location: 'Ojinaga', url: 'America/Ojinaga'),
    WorldTime(location: 'Panama', url: 'America/Panama'),
    WorldTime(location: 'Pangnirtung', url: 'America/Pangnirtung'),
    WorldTime(location: 'Paramaribo', url: 'America/Paramaribo'),
    WorldTime(location: 'Phoenix', url: 'America/Phoenix'),
    WorldTime(location: 'Port-au-Prince', url: 'America/Port-au-Prince'),
    WorldTime(location: 'Port_of_Spain', url: 'America/Port_of_Spain'),
    WorldTime(location: 'Porto_Velho', url: 'America/Porto_Velho'),
    WorldTime(location: 'Puerto_Rico', url: 'America/Puerto_Rico'),
    WorldTime(location: 'Punta_Arenas', url: 'America/Punta_Arenas'),
    WorldTime(location: 'Rainy_River', url: 'America/Rainy_River'),
    WorldTime(location: 'Rankin_Inlet', url: 'America/Rankin_Inlet'),
    WorldTime(location: 'Recife', url: 'America/Recife'),
    WorldTime(location: 'Regina', url: 'America/Regina'),
    WorldTime(location: 'Resolute', url: 'America/Resolute'),
    WorldTime(location: 'Rio_Branco', url: 'America/Rio_Branco'),
    WorldTime(location: 'Santarem', url: 'America/Santarem'),
    WorldTime(location: 'Santiago', url: 'America/Santiago'),
    WorldTime(location: 'Santo_Domingo', url: 'America/Santo_Domingo'),
    WorldTime(location: 'Sao_Paulo', url: 'America/Sao_Paulo'),
    WorldTime(location: 'Scoresbysund', url: 'America/Scoresbysund'),
    WorldTime(location: 'Sitka', url: 'America/Sitka'),
    WorldTime(location: 'St_Johns', url: 'America/St_Johns'),
    WorldTime(location: 'Swift_Current', url: 'America/Swift_Current'),
    WorldTime(location: 'Tegucigalpa', url: 'America/Tegucigalpa'),
    WorldTime(location: 'Thule', url: 'America/Thule'),
    WorldTime(location: 'Thunder_Bay', url: 'America/Thunder_Bay'),
    WorldTime(location: 'Tijuana', url: 'America/Tijuana'),
    WorldTime(location: 'Toronto', url: 'America/Toronto'),
    WorldTime(location: 'Vancouver', url: 'America/Vancouver'),
    WorldTime(location: 'Whitehorse', url: 'America/Whitehorse'),
    WorldTime(location: 'Winnipeg', url: 'America/Winnipeg'),
    WorldTime(location: 'Yakutat', url: 'America/Yakutat'),
    WorldTime(location: 'Yellowknife', url: 'America/Yellowknife'),
    WorldTime(location: 'Casey', url: 'Antarctica/Casey'),
    WorldTime(location: 'Davis', url: 'Antarctica/Davis'),
    WorldTime(location: 'DumontDUrville', url: 'Antarctica/DumontDUrville'),
    WorldTime(location: 'Macquarie', url: 'Antarctica/Macquarie'),
    WorldTime(location: 'Mawson', url: 'Antarctica/Mawson'),
    WorldTime(location: 'Palmer', url: 'Antarctica/Palmer'),
    WorldTime(location: 'Rothera', url: 'Antarctica/Rothera'),
    WorldTime(location: 'Syowa', url: 'Antarctica/Syowa'),
    WorldTime(location: 'Troll', url: 'Antarctica/Troll'),
    WorldTime(location: 'Vostok', url: 'Antarctica/Vostok'),
    WorldTime(location: 'Almaty', url: 'Asia/Almaty'),
    WorldTime(location: 'Amman', url: 'Asia/Amman'),
    WorldTime(location: 'Anadyr', url: 'Asia/Anadyr'),
    WorldTime(location: 'Aqtau', url: 'Asia/Aqtau'),
    WorldTime(location: 'Aqtobe', url: 'Asia/Aqtobe'),
    WorldTime(location: 'Ashgabat', url: 'Asia/Ashgabat'),
    WorldTime(location: 'Atyrau', url: 'Asia/Atyrau'),
    WorldTime(location: 'Baghdad', url: 'Asia/Baghdad'),
    WorldTime(location: 'Baku', url: 'Asia/Baku'),
    WorldTime(location: 'Bangkok', url: 'Asia/Bangkok'),
    WorldTime(location: 'Barnaul', url: 'Asia/Barnaul'),
    WorldTime(location: 'Beirut', url: 'Asia/Beirut'),
    WorldTime(location: 'Bishkek', url: 'Asia/Bishkek'),
    WorldTime(location: 'Brunei', url: 'Asia/Brunei'),
    WorldTime(location: 'Chita', url: 'Asia/Chita'),
    WorldTime(location: 'Choibalsan', url: 'Asia/Choibalsan'),
    WorldTime(location: 'Colombo', url: 'Asia/Colombo'),
    WorldTime(location: 'Damascus', url: 'Asia/Damascus'),
    WorldTime(location: 'Dhaka', url: 'Asia/Dhaka'),
    WorldTime(location: 'Dili', url: 'Asia/Dili'),
    WorldTime(location: 'Dubai', url: 'Asia/Dubai'),
    WorldTime(location: 'Dushanbe', url: 'Asia/Dushanbe'),
    WorldTime(location: 'Famagusta', url: 'Asia/Famagusta'),
    WorldTime(location: 'Gaza', url: 'Asia/Gaza'),
    WorldTime(location: 'Hebron', url: 'Asia/Hebron'),
    WorldTime(location: 'Ho_Chi_Minh', url: 'Asia/Ho_Chi_Minh'),
    WorldTime(location: 'Hong_Kong', url: 'Asia/Hong_Kong'),
    WorldTime(location: 'Hovd', url: 'Asia/Hovd'),
    WorldTime(location: 'Irkutsk', url: 'Asia/Irkutsk'),
    WorldTime(location: 'Jayapura', url: 'Asia/Jayapura'),
    WorldTime(location: 'Jerusalem', url: 'Asia/Jerusalem'),
    WorldTime(location: 'Kabul', url: 'Asia/Kabul'),
    WorldTime(location: 'Kamchatka', url: 'Asia/Kamchatka'),
    WorldTime(location: 'Karachi', url: 'Asia/Karachi'),
    WorldTime(location: 'Kathmandu', url: 'Asia/Kathmandu'),
    WorldTime(location: 'Khandyga', url: 'Asia/Khandyga'),
    WorldTime(location: 'Kolkata', url: 'Asia/Kolkata'),
    WorldTime(location: 'Krasnoyarsk', url: 'Asia/Krasnoyarsk'),
    WorldTime(location: 'Kuala_Lumpur', url: 'Asia/Kuala_Lumpur'),
    WorldTime(location: 'Kuching', url: 'Asia/Kuching'),
    WorldTime(location: 'Macau', url: 'Asia/Macau'),
    WorldTime(location: 'Magadan', url: 'Asia/Magadan'),
    WorldTime(location: 'Makassar', url: 'Asia/Makassar'),
    WorldTime(location: 'Manila', url: 'Asia/Manila'),
    WorldTime(location: 'Nicosia', url: 'Asia/Nicosia'),
    WorldTime(location: 'Novokuznetsk', url: 'Asia/Novokuznetsk'),
    WorldTime(location: 'Novosibirsk', url: 'Asia/Novosibirsk'),
    WorldTime(location: 'Omsk', url: 'Asia/Omsk'),
    WorldTime(location: 'Oral', url: 'Asia/Oral'),
    WorldTime(location: 'Pontianak', url: 'Asia/Pontianak'),
    WorldTime(location: 'Pyongyang', url: 'Asia/Pyongyang'),
    WorldTime(location: 'Qatar', url: 'Asia/Qatar'),
    WorldTime(location: 'Qostanay', url: 'Asia/Qostanay'),
    WorldTime(location: 'Qyzylorda', url: 'Asia/Qyzylorda'),
    WorldTime(location: 'Riyadh', url: 'Asia/Riyadh'),
    WorldTime(location: 'Sakhalin', url: 'Asia/Sakhalin'),
    WorldTime(location: 'Samarkand', url: 'Asia/Samarkand'),
    WorldTime(location: 'Shanghai', url: 'Asia/Shanghai'),
    WorldTime(location: 'Singapore', url: 'Asia/Singapore'),
    WorldTime(location: 'Srednekolymsk', url: 'Asia/Srednekolymsk'),
    WorldTime(location: 'Taipei', url: 'Asia/Taipei'),
    WorldTime(location: 'Tashkent', url: 'Asia/Tashkent'),
    WorldTime(location: 'Tbilisi', url: 'Asia/Tbilisi'),
    WorldTime(location: 'Tehran', url: 'Asia/Tehran'),
    WorldTime(location: 'Thimphu', url: 'Asia/Thimphu'),
    WorldTime(location: 'Tokyo', url: 'Asia/Tokyo'),
    WorldTime(location: 'Tomsk', url: 'Asia/Tomsk'),
    WorldTime(location: 'Ulaanbaatar', url: 'Asia/Ulaanbaatar'),
    WorldTime(location: 'Urumqi', url: 'Asia/Urumqi'),
    WorldTime(location: 'Ust-Nera', url: 'Asia/Ust-Nera'),
    WorldTime(location: 'Vladivostok', url: 'Asia/Vladivostok'),
    WorldTime(location: 'Yakutsk', url: 'Asia/Yakutsk'),
    WorldTime(location: 'Yangon', url: 'Asia/Yangon'),
    WorldTime(location: 'Yekaterinburg', url: 'Asia/Yekaterinburg'),
    WorldTime(location: 'Yerevan', url: 'Asia/Yerevan'),
    WorldTime(location: 'Azores', url: 'Atlantic/Azores'),
    WorldTime(location: 'Bermuda', url: 'Atlantic/Bermuda'),
    WorldTime(location: 'Canary', url: 'Atlantic/Canary'),
    WorldTime(location: 'Cape_Verde', url: 'Atlantic/Cape_Verde'),
    WorldTime(location: 'Faroe', url: 'Atlantic/Faroe'),
    WorldTime(location: 'Madeira', url: 'Atlantic/Madeira'),
    WorldTime(location: 'Reykjavik', url: 'Atlantic/Reykjavik'),
    WorldTime(location: 'South_Georgia', url: 'Atlantic/South_Georgia'),
    WorldTime(location: 'Stanley', url: 'Atlantic/Stanley'),
    WorldTime(location: 'Adelaide', url: 'Australia/Adelaide'),
    WorldTime(location: 'Brisbane', url: 'Australia/Brisbane'),
    WorldTime(location: 'Broken_Hill', url: 'Australia/Broken_Hill'),
    WorldTime(location: 'Darwin', url: 'Australia/Darwin'),
    WorldTime(location: 'Eucla', url: 'Australia/Eucla'),
    WorldTime(location: 'Hobart', url: 'Australia/Hobart'),
    WorldTime(location: 'Lindeman', url: 'Australia/Lindeman'),
    WorldTime(location: 'Lord_Howe', url: 'Australia/Lord_Howe'),
    WorldTime(location: 'Melbourne', url: 'Australia/Melbourne'),
    WorldTime(location: 'Perth', url: 'Australia/Perth'),
    WorldTime(location: 'Sydney', url: 'Australia/Sydney'),
    WorldTime(location: 'CET', url: 'CET'),
    WorldTime(location: 'CST6CDT', url: 'CST6CDT'),
    WorldTime(location: 'EET', url: 'EET'),
    WorldTime(location: 'EST', url: 'EST'),
    WorldTime(location: 'EST5EDT', url: 'EST5EDT'),
    WorldTime(location: 'GMT', url: 'Etc/GMT'),
    WorldTime(location: 'GMT+1', url: 'Etc/GMT+1'),
    WorldTime(location: 'GMT+10', url: 'Etc/GMT+10'),
    WorldTime(location: 'GMT+11', url: 'Etc/GMT+11'),
    WorldTime(location: 'GMT+12', url: 'Etc/GMT+12'),
    WorldTime(location: 'GMT+2', url: 'Etc/GMT+2'),
    WorldTime(location: 'GMT+3', url: 'Etc/GMT+3'),
    WorldTime(location: 'GMT+4', url: 'Etc/GMT+4'),
    WorldTime(location: 'GMT+5', url: 'Etc/GMT+5'),
    WorldTime(location: 'GMT+6', url: 'Etc/GMT+6'),
    WorldTime(location: 'GMT+7', url: 'Etc/GMT+7'),
    WorldTime(location: 'GMT+8', url: 'Etc/GMT+8'),
    WorldTime(location: 'GMT+9', url: 'Etc/GMT+9'),
    WorldTime(location: 'GMT-1', url: 'Etc/GMT-1'),
    WorldTime(location: 'GMT-10', url: 'Etc/GMT-10'),
    WorldTime(location: 'GMT-11', url: 'Etc/GMT-11'),
    WorldTime(location: 'GMT-12', url: 'Etc/GMT-12'),
    WorldTime(location: 'GMT-13', url: 'Etc/GMT-13'),
    WorldTime(location: 'GMT-14', url: 'Etc/GMT-14'),
    WorldTime(location: 'GMT-2', url: 'Etc/GMT-2'),
    WorldTime(location: 'GMT-3', url: 'Etc/GMT-3'),
    WorldTime(location: 'GMT-4', url: 'Etc/GMT-4'),
    WorldTime(location: 'GMT-5', url: 'Etc/GMT-5'),
    WorldTime(location: 'GMT-6', url: 'Etc/GMT-6'),
    WorldTime(location: 'GMT-7', url: 'Etc/GMT-7'),
    WorldTime(location: 'GMT-8', url: 'Etc/GMT-8'),
    WorldTime(location: 'GMT-9', url: 'Etc/GMT-9'),
    WorldTime(location: 'UTC', url: 'Etc/UTC'),
    WorldTime(location: 'Amsterdam', url: 'Europe/Amsterdam'),
    WorldTime(location: 'Andorra', url: 'Europe/Andorra'),
    WorldTime(location: 'Astrakhan', url: 'Europe/Astrakhan'),
    WorldTime(location: 'Belgrade', url: 'Europe/Belgrade'),
    WorldTime(location: 'Brussels', url: 'Europe/Brussels'),
    WorldTime(location: 'Bucharest', url: 'Europe/Bucharest'),
    WorldTime(location: 'Budapest', url: 'Europe/Budapest'),
    WorldTime(location: 'Chisinau', url: 'Europe/Chisinau'),
    WorldTime(location: 'Copenhagen', url: 'Europe/Copenhagen'),
    WorldTime(location: 'Dublin', url: 'Europe/Dublin'),
    WorldTime(location: 'Gibraltar', url: 'Europe/Gibraltar'),
    WorldTime(location: 'Helsinki', url: 'Europe/Helsinki'),
    WorldTime(location: 'Istanbul', url: 'Europe/Istanbul'),
    WorldTime(location: 'Kaliningrad', url: 'Europe/Kaliningrad'),
    WorldTime(location: 'Kiev', url: 'Europe/Kiev'),
    WorldTime(location: 'Kirov', url: 'Europe/Kirov'),
    WorldTime(location: 'Lisbon', url: 'Europe/Lisbon'),
    WorldTime(location: 'Luxembourg', url: 'Europe/Luxembourg'),
    WorldTime(location: 'Madrid', url: 'Europe/Madrid'),
    WorldTime(location: 'Malta', url: 'Europe/Malta'),
    WorldTime(location: 'Minsk', url: 'Europe/Minsk'),
    WorldTime(location: 'Monaco', url: 'Europe/Monaco'),
    WorldTime(location: 'Moscow', url: 'Europe/Moscow'),
    WorldTime(location: 'Oslo', url: 'Europe/Oslo'),
    WorldTime(location: 'Paris', url: 'Europe/Paris'),
    WorldTime(location: 'Prague', url: 'Europe/Prague'),
    WorldTime(location: 'Riga', url: 'Europe/Riga'),
    WorldTime(location: 'Rome', url: 'Europe/Rome'),
    WorldTime(location: 'Samara', url: 'Europe/Samara'),
    WorldTime(location: 'Saratov', url: 'Europe/Saratov'),
    WorldTime(location: 'Simferopol', url: 'Europe/Simferopol'),
    WorldTime(location: 'Sofia', url: 'Europe/Sofia'),
    WorldTime(location: 'Stockholm', url: 'Europe/Stockholm'),
    WorldTime(location: 'Tallinn', url: 'Europe/Tallinn'),
    WorldTime(location: 'Tirane', url: 'Europe/Tirane'),
    WorldTime(location: 'Ulyanovsk', url: 'Europe/Ulyanovsk'),
    WorldTime(location: 'Uzhgorod', url: 'Europe/Uzhgorod'),
    WorldTime(location: 'Vienna', url: 'Europe/Vienna'),
    WorldTime(location: 'Vilnius', url: 'Europe/Vilnius'),
    WorldTime(location: 'Volgograd', url: 'Europe/Volgograd'),
    WorldTime(location: 'Warsaw', url: 'Europe/Warsaw'),
    WorldTime(location: 'Zaporozhye', url: 'Europe/Zaporozhye'),
    WorldTime(location: 'Zurich', url: 'Europe/Zurich'),
    WorldTime(location: 'HST', url: 'HST'),
    WorldTime(location: 'Chagos', url: 'Indian/Chagos'),
    WorldTime(location: 'Christmas', url: 'Indian/Christmas'),
    WorldTime(location: 'Cocos', url: 'Indian/Cocos'),
    WorldTime(location: 'Kerguelen', url: 'Indian/Kerguelen'),
    WorldTime(location: 'Mahe', url: 'Indian/Mahe'),
    WorldTime(location: 'Maldives', url: 'Indian/Maldives'),
    WorldTime(location: 'Mauritius', url: 'Indian/Mauritius'),
    WorldTime(location: 'Reunion', url: 'Indian/Reunion'),
    WorldTime(location: 'MET', url: 'MET'),
    WorldTime(location: 'MST', url: 'MST'),
    WorldTime(location: 'MST7MDT', url: 'MST7MDT'),
    WorldTime(location: 'PST8PDT', url: 'PST8PDT'),
    WorldTime(location: 'Apia', url: 'Pacific/Apia'),
    WorldTime(location: 'Auckland', url: 'Pacific/Auckland'),
    WorldTime(location: 'Bougainville', url: 'Pacific/Bougainville'),
    WorldTime(location: 'Chatham', url: 'Pacific/Chatham'),
    WorldTime(location: 'Chuuk', url: 'Pacific/Chuuk'),
    WorldTime(location: 'Easter', url: 'Pacific/Easter'),
    WorldTime(location: 'Efate', url: 'Pacific/Efate'),
    WorldTime(location: 'Enderbury', url: 'Pacific/Enderbury'),
    WorldTime(location: 'Fakaofo', url: 'Pacific/Fakaofo'),
    WorldTime(location: 'Fiji', url: 'Pacific/Fiji'),
    WorldTime(location: 'Funafuti', url: 'Pacific/Funafuti'),
    WorldTime(location: 'Galapagos', url: 'Pacific/Galapagos'),
    WorldTime(location: 'Gambier', url: 'Pacific/Gambier'),
    WorldTime(location: 'Guadalcanal', url: 'Pacific/Guadalcanal'),
    WorldTime(location: 'Guam', url: 'Pacific/Guam'),
    WorldTime(location: 'Honolulu', url: 'Pacific/Honolulu'),
    WorldTime(location: 'Kiritimati', url: 'Pacific/Kiritimati'),
    WorldTime(location: 'Kosrae', url: 'Pacific/Kosrae'),
    WorldTime(location: 'Kwajalein', url: 'Pacific/Kwajalein'),
    WorldTime(location: 'Majuro', url: 'Pacific/Majuro'),
    WorldTime(location: 'Marquesas', url: 'Pacific/Marquesas'),
    WorldTime(location: 'Nauru', url: 'Pacific/Nauru'),
    WorldTime(location: 'Niue', url: 'Pacific/Niue'),
    WorldTime(location: 'Norfolk', url: 'Pacific/Norfolk'),
    WorldTime(location: 'Noumea', url: 'Pacific/Noumea'),
    WorldTime(location: 'Pago_Pago', url: 'Pacific/Pago_Pago'),
    WorldTime(location: 'Palau', url: 'Pacific/Palau'),
    WorldTime(location: 'Pitcairn', url: 'Pacific/Pitcairn'),
    WorldTime(location: 'Pohnpei', url: 'Pacific/Pohnpei'),
    WorldTime(location: 'Port_Moresby', url: 'Pacific/Port_Moresby'),
    WorldTime(location: 'Rarotonga', url: 'Pacific/Rarotonga'),
    WorldTime(location: 'Tahiti', url: 'Pacific/Tahiti'),
    WorldTime(location: 'Tarawa', url: 'Pacific/Tarawa'),
    WorldTime(location: 'Tongatapu', url: 'Pacific/Tongatapu'),
    WorldTime(location: 'Wake', url: 'Pacific/Wake'),
    WorldTime(location: 'Wallis', url: 'Pacific/Wallis'),
    WorldTime(location: 'WET', url: 'WET')
  ];
  bool searchPressed = false;
  bool noResultsFound = false;
  PreferredSizeWidget SearchState (){
    if(searchPressed){
      var searchFocusNode = FocusNode();
      searchFocusNode.requestFocus();
      return AppBar(
        actions: <Widget>[
          Expanded(
              child: Row(
                children: [
                  SizedBox(width: 50.0,),
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white
                      ),
                      focusNode: searchFocusNode,
                      onChanged: (text) {
                        searchLocation(text);
                      },
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: "Search"),
                        ),
                      ),
                  IconButton(onPressed: () {
                    setState(() {
                      searchPressed = false;
                      if(noResultsFound){
                        noResultsFound = false;
                        setState(() {
                          searchedTimeZones = availableTimeZones;
                        });
                      }
                    });
                  }, icon: Icon(Icons.cancel))
                ],
              )
          )
        ],
      );
    }else{
      searchedTimeZones = availableTimeZones;
      return AppBar(
        title: Text('Choose Location'),
          actions: <Widget>[
          IconButton(onPressed: (){
        setState(() {
          searchPressed = true;
        });
      }, icon: Icon(Icons.search))
          ]
      );
    }
  }

  Widget TheBody(){
      if(noResultsFound){
        return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(),
              SizedBox(height: 20.0),
              Text("No Results where found.", style: TextStyle(fontSize: 20.0),)
            ],
          ) ;
      }else{
        return ListView.builder(itemCount: searchedTimeZones.length,itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                onTap: () async {
                  WorldTime chosenOne = searchedTimeZones[index];
                  await chosenOne.getTime();
                  Navigator.pop(context, {
                    'location': chosenOne.location, 'time': chosenOne.time, 'flag': chosenOne.flag, 'isDaytime': chosenOne.isDayTime
                  });
                },
                title: Text(searchedTimeZones[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(searchedTimeZones[index].flag!),
                ),
              )
          );
        });
    }
  }
  
  void searchLocation(String searchText){
    final results = availableTimeZones.where((element) {
      String searchTextLower = searchText.toLowerCase();
      String urlText = element.url.toLowerCase();
      return urlText.contains(searchTextLower);
    }
    ).toList();
    setState(() {
      if(results.isEmpty){
        noResultsFound = true;
      }else{
        if(noResultsFound){
          noResultsFound = false;
        }
        searchedTimeZones = results;
      }
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: SearchState(),
      body: TheBody()
    );
  }
}
