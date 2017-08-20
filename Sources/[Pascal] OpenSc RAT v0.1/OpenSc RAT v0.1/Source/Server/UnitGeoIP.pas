unit UnitGeoIP; //by wrh1d3

interface

uses
  UnitCountry, GeoIP, SysUtils;

function GeoIpCountryName(GeoIpFile, Ip: string): string;
function GeoIpFlagIndex(GeoIpFile, Ip: string): Integer;
function GeoIpLatitude(GeoIpFile, Ip: string): string;
function GeoIpLongitude(GeoIpFile, Ip: string): string;
function GeoIpRegionName(GeoIpFile, Ip: string): string;
function GeoIpCityName(GeoIpFile, Ip: string): string;
function GeoIpZipCode(GeoIpFile, Ip: string): string;

//GeoIpFile = GeoIP.dat file location

implementation


function GeoIpFlagIndex(GeoIpFile, Ip: string): Integer;
var
  GeoIP: TGeoIP;
  GeoIPCountry: TGeoIPCountry;
begin
  Result := -1;

  try
    GeoIP := TGeoIP.Create(GeoIpFile);
    if GeoIP.GetCountry(Ip, GeoIPCountry) = GEOIP_SUCCESS then
      Result := GetFlagIndex(GeoIPCountry.CountryCode);
    GeoIP.Free;
  except
  end;
end;


var
  GeoIP: TGeoIP;
  GeoIPCountry: TGeoIPCountry;
begin
  Result := '-';

  try
    GeoIP := TGeoIP.Create(GeoIpFile);
    if GeoIP.GetCountry(Ip, GeoIPCountry) = GEOIP_SUCCESS then
      Result := GeoIPCountry.CountryName;
    GeoIP.Free;
  except
  end;
end;

















function GeoIpLongitude(GeoIpFile, Ip: string): string;















function GeoIpRegionName(GeoIpFile, Ip: string): string;















function GeoIpCityName(GeoIpFile, Ip: string): string;















function GeoIpZipCode(GeoIpFile, Ip: string): string;















end.