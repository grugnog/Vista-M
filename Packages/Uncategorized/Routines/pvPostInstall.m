pvPostInstall ; Platium VistA Post Install;2018-03-16  11:07 AM
 W "Deleting source code for DSI*",!
 N R,STOP S (R,STOP)="DSI"
 N %
 F  S R=$O(^$ROUTINE(R)) Q:R=""  Q:$E(R,1,3)'=STOP  S %=##class(%Routine).Delete(R,2)
 ;
 W "Deleting source code for VEJD*",!
 N R,STOP S (R,STOP)="VEJD"
 N %
 F  S R=$O(^$ROUTINE(R)) Q:R=""  Q:$E(R,1,3)'=STOP  S %=##class(%Routine).Delete(R,2)
 ;
 W "Deleting source code for VEN*",!
 N R,STOP S (R,STOP)="VEN"
 N %
 F  S R=$O(^$ROUTINE(R)) Q:R=""  Q:$E(R,1,3)'=STOP  S %=##class(%Routine).Delete(R,2)
 ;
 W "Deleting source code for DSS*",!
 N R,STOP S (R,STOP)="DSS"
 N %
 F  S R=$O(^$ROUTINE(R)) Q:R=""  Q:$E(R,1,3)'=STOP  S %=##class(%Routine).Delete(R,2)
 ;
 W "Deleting invalid fields...",!
 F I=0:0 S I=$O(^DD(I)) Q:'I  F J=0:0 S J=$O(^DD(I,J)) Q:'J  K:'$D(^DD(I,J,0)) ^DD(I,J)
 ;
 W "Fixing ISO-8859-1 to ASCII as ISO-8859-1 cannot be exported to JSON in Vivian",!
 S ^ONCO(164.33,55,7,5,0)="    (plaque +/- patch)'. The T1a & T1b values are not part of the AJCC algorithm."
 S ^ONCO(164.33,55,7,8,0)="    (plaque +/- patch)'. The T2a & T2b values are not part of the AJCC algorithm."
 S ^ETSRXN(129.2,21892,1)="Cinnarizine 15 MG Oral Tablet [Cinaziere]" 
 S ^ETSRXN(129.2,21893,1)="Cinaziere 15 MG Oral Tablet" 
 S ^ETSRXN(129.2,27318,1)="Cinaziere" 
 S ^ETSRXN(129.2,177135,1)="Cinnarizine Oral Tablet [Cinaziere]" 
 S ^ETSRXN(129.2,224370,1)="Cinnarizine 15 MG [Cinaziere]" 
 S ^ETSRXN(129.2,419705,1)="Cinaziere Oral Product" 
 S ^ETSRXN(129.2,419706,1)="Cinaziere Pill" 
 S ^ONCO(164,67384,11,13,0)="        involvement of diaphragmatic muscle" 
 S ^ONCO(164,67384,11,14,0)="        extension of tumor from visceral pleura into the underlying" 
 S ^ONCO(164,67384,11,20,0)="        involvement of the endothoracic fascia" 
 S ^ONCO(164,67384,11,21,0)="        extension into the mediastinal fat" 
 S ^ONCO(164,67384,11,22,0)="        solitary, completely resectable focus of tumor extending into the" 
 S ^ONCO(164,67384,11,24,0)="        non-transmural involvement of the pericardium" 
 S ^ONCO(164,67384,11,29,0)="        diffuse extension or multifocal masses of tumor in the chest" 
 S ^ONCO(164,67384,11,31,0)="        direct transdiaphragmatic extension of tumor to the peritoneum" 
 S ^ONCO(164,67384,11,32,0)="        direct extension of tumor to the contralateral pleura" 
 S ^ONCO(164,67384,11,33,0)="        direct extension of tumor to mediastinal organs" 
 S ^ONCO(164,67384,11,34,0)="        direct extension of tumor into the spine" 
 S ^ONCO(164,67384,11,35,0)="        tumor extending through to the internal surface of the" 
 S ^DD("165.5",3885,21,12,0)="      Absolute lymphocyte count <= 5,000 cells/ microliters " 
 S ^DD("165.5",3885,21,14,0)="      Absolute lymphocyte count > 5,000 cells/microliters " 
 S ^DD("165.5",3933,21,12,0)="      Platelets (Plt) >= 100,000/microliters " 
 S ^DD("165.5",3933,21,15,0)="      Platelets (Plt) < 100,000/microliters " 
 QUIT
