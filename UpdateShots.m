cd /home/acneto/isttok_scripts
client=SdasStart;
maxShot=GetMaxShot(client);
shot=maxShot;
while(client.parameterExists('POST.PROCESSED.DENSITY', '0x0000', shot) == 0)
	UpdateDensity(client, shot);
	shot;
	shot=shot-1;
end
shot=maxShot;
while(client.parameterExists('POST.PROCESSED.IPLASMA', '0x0000', shot) == 0)
	UpdateIPlasma(client, shot);
	shot;
	shot=shot-1;
end
%shot=maxShot;
%while(client.parameterExists('POST.PROCESSED.SPECTRE_HALPHA', '0x0000', shot) == 0)
%	UpdateSpectrumPeaks(client, shot);
%	shot;
%	shot=shot-1;
%end

%shot=maxShot;
%while(client.parameterExists('POST.PROCESSED.RMAGN', '0x0000', shot) == 0)
%	UpdateRZMagn(client, shot);
%	shot;
%	shot=shot-1;
%end
client.logout
