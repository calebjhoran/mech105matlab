function nd = days(mo, da, leap)
%This Function, days(mo, day, leap), calculates the elapsed days in a year
%when given the month (1-12) day (1-31) and information regarding wheather
%it is a leap year or not (1 for leap year, 0 for non-leap year).
%INPUTS: mo(months), da(days), leap (1 for leap year, 0 for non-leap year)
%OUTPUTS:# of days that have leaped in the year up to the given date.
msg= 'not possible...self destruct initiated...run';
if mo>12 || mo <1 || da > 31 || da < 1 ||leap ~= 1 && leap ~= 0
    error (msg)
end %deciding if the input variable values are realistic, if not, error+ message
nd= ((mo-1)*30)+ da + (round((mo-1)/2));% core equation that calculates days past, taking into acount the extra day every other month(not including leap years or february.
if mo > 2 && leap == 1
    nd=nd-1;% calculates in leap year for the months after february when applicable.
elseif mo > 2
    nd=nd-2;% Calculates february into the system in the case that it is not a leapyear.
end
disp(nd)% Displays Answer
end