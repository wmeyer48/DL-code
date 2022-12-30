{*************************************************************************}
{
   LsConsts.pas
   ------------
     version : 2.886
     Updated : 12/5/2005
 =========================================================================
 ResourceStrings for the following languages:
   - English (Default)
   - Chinese_Tra (Chinese Tradition)
   - Chinese_Sim (Chinese Simplified)
   - Dutch
   - French
   - German
   - Italian
   - Japanese
   - Korean
   - Polish
   - Brazillian Portuguese
   - Slovenian
   - Slovak
   - Spanish
   - Swedish
   - Turkish

 ACKNOWLEDGMENTS
 ===============
   I would like thank Andreas Roth, Bernd Ohse, Bernard Bourguignon,
   Ferruccio Accalai, David Abdaleon, Alberto Meyer, Sam Francke, Zenon
   Mieszkuniec, Martin Berta, Scarfman Lin, Yoshihiro Sugahara,
   Matjaz Prtenjak, Olle Johansson, Do-wan Kim and Yasar Ozanlagan for
   their German, French, Italian, Spanish, Brazillian-Portuguese, Dutch,
   Polish, Slovak, Chinese(Traditional and Simplified), Japanese, Slovenian,
   Swedish, Korean and Turkish language translations.
}
{*************************************************************************}

unit LsConsts;

interface

ResourceString

//------------------------------------------
//               English
//------------------------------------------
  //872<
  //LsFileListview28 Column Caption
  ENGLISH_ColIdName   = 'Name';
  ENGLISH_ColIdSize   = 'Size';
  ENGLISH_ColIdType   = 'Type';
  ENGLISH_ColIdDate   = 'Modified';
  ENGLISH_ColIdAttr   = 'Attr';
  ENGLISH_ColIdHdSize = 'Disk Size';
  ENGLISH_ColIdFSpace = 'Free Space';
  //Drive Type
  ENGLISH_DrvTypeStr0 = 'Unknown';
  ENGLISH_DrvTypeStr1 = 'Not exist';
  ENGLISH_DrvTypeStr2 = 'Removable Disk';
  ENGLISH_DrvTypeStr3 = 'Fixed Disk';
  ENGLISH_DrvTypeStr4 = 'Network Disk';
  ENGLISH_DrvTypeStr5 = 'CD-ROM Disk';
  ENGLISH_DrvTypeStr6 = 'RAM Disk';
  //LsFileListview28Popup MenuItem Caption
  ENGLISH_LvItemID_0  = '&Open';
  ENGLISH_LvItemID_1  = '&View';
  ENGLISH_LvItemID_3  = 'Se&nd To';
  ENGLISH_LvItemID_5  = 'Cu&t';
  ENGLISH_LvItemID_6  = '&Copy';
  ENGLISH_LvItemID_7  = '&Paste';
  ENGLISH_LvItemID_9  = '&Rename';
  ENGLISH_LvItemID_10 = '&Delete';
  ENGLISH_LvItemID_12 = '&Properties';
  ENGLISH_LvItemID_14 = '&New Folder...';
  ENGLISH_LvItemID_30 = 'Any Folder ...';
  ENGLISH_LvItemID_31 = 'Clipboard as Contents';
  ENGLISH_LvItemID_32 = 'Clipboard as FileName';
  ENGLISH_LvItemID_33 = 'DeskTop as ShortCut';
  //LsDirTree21Popup MenuItem Caption
  ENGLISH_TvItemID_0  = '&New Folder';
  ENGLISH_TvItemID_1  = '&Rename Folder';
  ENGLISH_TvItemID_2  = '&Delete Folder';
  ENGLISH_TvItemID_4  = 'Cu&t';
  ENGLISH_TvItemID_5  = '&Copy';
  ENGLISH_TvItemID_6  = '&Paste';
  ENGLISH_TvItemID_8  = 'Tree &Size';
  ENGLISH_TvItemID_9  = '&Folder Contents';
  ENGLISH_TvItemID_11 = '&Map Network Drive ...';
  ENGLISH_TvItemID_12 = 'Dis&Connect Network Drive';
  ENGLISH_TvItemID_14 = '&Property';
  //Error words
  ENGLISH_ewDrive = 'Drive ';  //873
  ENGLISH_ewFolder = 'Folder "';  //873
  ENGLISH_ewError = 'ERROR - ';
  ENGLISH_ewFile = ' file ';
  ENGLISH_ewFrom = 'From  : ';
  ENGLISH_ewTo = 'To     : ';
  ENGLISH_ewCancel = 'Cancel';
  ENGLISH_ewBrowse = 'Browse';
  ENGLISH_ewReadOnly = 'ReadOnly';
  ENGLISH_ewArchive = 'Archive';
  ENGLISH_ewHidden = 'Hidden';
  ENGLISH_ewSystem = 'System';
  //Error strings
  ENGLISH_esCannot = 'ERROR - Can''t ';
  ENGLISH_esSpecifyDir = 'Please specify a directory';
  ENGLISH_esInvalidDrvID = 'Not a valid Drive ID';
  ENGLISH_esDrvNotReady = 'There is no disk in Drive or Drive is not ready';
  ENGLISH_esExists = 'already exists !';
  ENGLISH_esInvalidDirName = 'Error - Invalid Directory Name';
  ENGLISH_esConfirmRename = 'Do you want to rename the selected folder';
  ENGLISH_esCannotAddDrv = 'Can''t add drives';
  ENGLISH_esNewFolder = 'New Folder';
  ENGLISH_esInvalidChars = 'Folder Name contains invalid characters';
  ENGLISH_esNotFound = 'not found';
  ENGLISH_esFilesIn = 'Files in ';
  ENGLISH_esFileOpFailed = 'File operation failed';
  ENGLISH_esReadOnly = 'It''s ReadOnly';
  ENGLISH_esNoFileSelected = 'No file(s) selected';
  ENGLISH_esSendToFolder = 'Send to any folder';
  ENGLISH_esSendToPath = 'Please enter the send_to path';
  ENGLISH_esPersistSaveError = 'Error - PersistFile.Save failed';
  ENGLISH_esSetAttr = 'Set Attributes';
  ENGLISH_esTreeSize = 'TREE SIZE';  //873
  ENGLISH_esAllSubDir = 'and all its Sub-Folders ';  //873
  //>872

//------------------------------------------
//               Chinese Tradition
//------------------------------------------
  //879<
  //LsFileListview28 Column Caption
  CHINESE_Tra_ColIdName   = '�W��';
  CHINESE_Tra_ColIdSize   = '�j�p';
  CHINESE_Tra_ColIdType   = '����';
  CHINESE_Tra_ColIdDate   = '�w�ק�';
  CHINESE_Tra_ColIdAttr   = '�ݩ�';
  CHINESE_Tra_ColIdHdSize = '�ϺЮe�q';
  CHINESE_Tra_ColIdFSpace = '�Ѿl�Ŷ�';
  //Drive Type
  CHINESE_Tra_DrvTypeStr0 = '����';
  CHINESE_Tra_DrvTypeStr1 = '���s�b';
  CHINESE_Tra_DrvTypeStr2 = '�i�������Ϻ�';
  CHINESE_Tra_DrvTypeStr3 = '�����Ϻ�';
  CHINESE_Tra_DrvTypeStr4 = '�����Ϻо�';
  CHINESE_Tra_DrvTypeStr5 = '���о�';
  CHINESE_Tra_DrvTypeStr6 = '�����Ϻо�';
  //LsFileListview28Popup MenuItem Caption
  CHINESE_Tra_LvItemID_0  = '�}��(&O)';
  CHINESE_Tra_LvItemID_1  = '�˵�(&V)';
  CHINESE_Tra_LvItemID_3  = '�ǰe��(&N)';
  CHINESE_Tra_LvItemID_5  = '�ŤU(&T)';
  CHINESE_Tra_LvItemID_6  = '�ƻs(&C)';
  CHINESE_Tra_LvItemID_7  = '�K�W(&P)';
  CHINESE_Tra_LvItemID_9  = '��W(&R)';
  CHINESE_Tra_LvItemID_10 = '�R��(&D)';
  CHINESE_Tra_LvItemID_12 = '���e(&P)';
  CHINESE_Tra_LvItemID_14 = '�s�W��Ƨ�(&N)...';
  CHINESE_Tra_LvItemID_30 = '��L��Ƨ� ...';
  CHINESE_Tra_LvItemID_31 = '�ƻs���e��ŶKï';
  CHINESE_Tra_LvItemID_32 = '�ƻs�ɦW��ŶKï';
  CHINESE_Tra_LvItemID_33 = '�b�ୱ�إ߱��|';
  //LsDirTree21Popup MenuItem Caption
  CHINESE_Tra_TvItemID_0  = '�s�W�l��Ƨ�(&N)';
  CHINESE_Tra_TvItemID_1  = '��W��Ƨ�(&R)';
  CHINESE_Tra_TvItemID_2  = '�R����Ƨ�(&D)';
  CHINESE_Tra_TvItemID_4  = '�ŤU(&T)';
  CHINESE_Tra_TvItemID_5  = '�ƻs(&C)';
  CHINESE_Tra_TvItemID_6  = '�K�W(&P)';
  CHINESE_Tra_TvItemID_8  = '��Ƨ��j�p(&S)';
  CHINESE_Tra_TvItemID_9  = '��Ƨ����e(&F)';
  CHINESE_Tra_TvItemID_11 = '�s�u�����Ϻо�(&M)';
  CHINESE_Tra_TvItemID_12 = '���_�����Ϻо�(&C)';
  CHINESE_Tra_TvItemID_14 = '���e(&P)';
  //Error words
  CHINESE_Tra_ewDrive = '�Ϻ� ';  //873
  CHINESE_Tra_ewFolder = '��Ƨ� "';  //873
  CHINESE_Tra_ewError = '���~ - ';
  CHINESE_Tra_ewFile = ' �ɮ� ';
  CHINESE_Tra_ewFrom = '�q  : ';
  CHINESE_Tra_ewTo = '��     : ';
  CHINESE_Tra_ewCancel = '����';
  CHINESE_Tra_ewBrowse = '�s��';
  CHINESE_Tra_ewReadOnly = '��Ū';
  CHINESE_Tra_ewArchive = '�O�s';
  CHINESE_Tra_ewHidden = '����';
  CHINESE_Tra_ewSystem = '�t��';
  //Error strings
  CHINESE_Tra_esCannot = '���~- �L�k ';
  CHINESE_Tra_esSpecifyDir = '�Ы��w�@�Ӹ��|';
  CHINESE_Tra_esInvalidDrvID = '���O���Ī��Ϻо��N��';
  CHINESE_Tra_esDrvNotReady = '�Ϻо����S���Ф��A�κϺо��|���ݾ�';
  CHINESE_Tra_esExists = '�w�g�s�b !';
  CHINESE_Tra_esInvalidDirName = '���~ - �L�Ī����|�W��';
  CHINESE_Tra_esConfirmRename = '�A�n��ʳo�Ӹ�Ƨ����W�ٶ�';
  CHINESE_Tra_esCannotAddDrv = '�L�k�[�J�Ϻо�';
  CHINESE_Tra_esNewFolder = '�s�W��Ƨ�';
  CHINESE_Tra_esInvalidChars = '��Ƨ��W�٤��t���L�Ħr��';
  CHINESE_Tra_esNotFound = '�䤣��';
  CHINESE_Tra_esFilesIn = '�ɮצb ';
  CHINESE_Tra_esFileOpFailed = '�ɮק@�~����';
  CHINESE_Tra_esReadOnly = '�o�O��Ū��';
  CHINESE_Tra_esNoFileSelected = '�S������ɮ�';
  CHINESE_Tra_esSendToFolder = '�ǰe���L��Ƨ�';
  CHINESE_Tra_esSendToPath = '�п�J�ǰe�����|';
  CHINESE_Tra_esPersistSaveError = '���~ - PersistFile.Save ����';
  CHINESE_Tra_esSetAttr = '�]�w�ɮ��ݩ�';
  CHINESE_Tra_esTreeSize = '��Ƨ����e�j�p';  //873
  CHINESE_Tra_esAllSubDir = '�P��������l��Ƨ� ';  //873
  //>879

//------------------------------------------
//               Chinese Simplified
//------------------------------------------
  //879<
  //LsFileListview28 Column Caption
  CHINESE_Sim_ColIdName   = '����';
  CHINESE_Sim_ColIdSize   = '��С';
  CHINESE_Sim_ColIdType   = '����';
  CHINESE_Sim_ColIdDate   = '���޸�';
  CHINESE_Sim_ColIdAttr   = '����';
  CHINESE_Sim_ColIdHdSize = '��������';
  CHINESE_Sim_ColIdFSpace = 'ʣ��ռ�';
  //Drive Type
  CHINESE_Sim_DrvTypeStr0 = '����';
  CHINESE_Sim_DrvTypeStr1 = '������';
  CHINESE_Sim_DrvTypeStr2 = '���Ƴ�ʽ����';
  CHINESE_Sim_DrvTypeStr3 = '��������';
  CHINESE_Sim_DrvTypeStr4 = '������̻�';
  CHINESE_Sim_DrvTypeStr5 = '�����';
  CHINESE_Sim_DrvTypeStr6 = '���̻�';
  //LsFileListview28Popup MenuItem Caption
  CHINESE_Sim_LvItemID_0  = '����(&O)';
  CHINESE_Sim_LvItemID_1  = '����(&V)';
  CHINESE_Sim_LvItemID_3  = '���͵�(&N)';
  CHINESE_Sim_LvItemID_5  = '����(&T)';
  CHINESE_Sim_LvItemID_6  = '����(&C)';
  CHINESE_Sim_LvItemID_7  = '����(&P)';
  CHINESE_Sim_LvItemID_9  = '����(&R)';
  CHINESE_Sim_LvItemID_10 = 'ɾ��(&D)';
  CHINESE_Sim_LvItemID_12 = '����(&P)';
  CHINESE_Sim_LvItemID_14 = '�������ϼ�(&N)...';
  CHINESE_Sim_LvItemID_30 = '�������ϼ� ...';
  CHINESE_Sim_LvItemID_31 = '�������ݵ�������';
  CHINESE_Sim_LvItemID_32 = '���Ƶ�����������';
  CHINESE_Sim_LvItemID_33 = '�����洴���ݾ�';
  //LsDirTree21Popup MenuItem Caption
  CHINESE_Sim_TvItemID_0  = '���������ϼ�(&N)';
  CHINESE_Sim_TvItemID_1  = '�������ϼ�(&R)';
  CHINESE_Sim_TvItemID_2  = 'ɾ�����ϼ�(&D)';
  CHINESE_Sim_TvItemID_4  = '����(&T)';
  CHINESE_Sim_TvItemID_5  = '����(&C)';
  CHINESE_Sim_TvItemID_6  = '����(&P)';
  CHINESE_Sim_TvItemID_8  = '���ϼд�С(&S)';
  CHINESE_Sim_TvItemID_9  = '���ϼ�����(&F)';
  CHINESE_Sim_TvItemID_11 = '����������̻�(&M)';
  CHINESE_Sim_TvItemID_12 = '�ж�������̻�(&C)';
  CHINESE_Sim_TvItemID_14 = '����(&P)';
  //Error words
  CHINESE_Sim_ewDrive = '���� ';  //873
  CHINESE_Sim_ewFolder = '���ϼ� "';  //873
  CHINESE_Sim_ewError = '���� - ';
  CHINESE_Sim_ewFile = ' �ļ� ';
  CHINESE_Sim_ewFrom = '��  : ';
  CHINESE_Sim_ewTo = '��     : ';
  CHINESE_Sim_ewCancel = 'ȡ��';
  CHINESE_Sim_ewBrowse = '���';
  CHINESE_Sim_ewReadOnly = 'Ψ��';
  CHINESE_Sim_ewArchive = '����';
  CHINESE_Sim_ewHidden = '����';
  CHINESE_Sim_ewSystem = 'ϵͳ';
  //Error strings
  CHINESE_Sim_esCannot = '����- �޷� ';
  CHINESE_Sim_esSpecifyDir = '��ָ��һ��·��';
  CHINESE_Sim_esInvalidDrvID = '������Ч�Ĵ��̻�����';
  CHINESE_Sim_esDrvNotReady = '���̻���û�е�Ƭ������̻���δ����';
  CHINESE_Sim_esExists = '�Ѿ����� !';
  CHINESE_Sim_esInvalidDirName = '���� - ��Ч��·������';
  CHINESE_Sim_esConfirmRename = '��Ҫ����������ϼе�������';
  CHINESE_Sim_esCannotAddDrv = '�޷�������̻�';
  CHINESE_Sim_esNewFolder = '�������ϼ�';
  CHINESE_Sim_esInvalidChars = '���ϼ������к�����Ч�ַ�';
  CHINESE_Sim_esNotFound = '�Ҳ���';
  CHINESE_Sim_esFilesIn = '�ļ��� ';
  CHINESE_Sim_esFileOpFailed = '�ļ���ҵʧ��';
  CHINESE_Sim_esReadOnly = '����Ψ����';
  CHINESE_Sim_esNoFileSelected = 'û��ѡ���ļ�';
  CHINESE_Sim_esSendToFolder = '���͵��������ϼ�';
  CHINESE_Sim_esSendToPath = '�����봫�͵�·��';
  CHINESE_Sim_esPersistSaveError = '���� - PersistFile.Save ʧ��';
  CHINESE_Sim_esSetAttr = '�趨�ļ�����';
  CHINESE_Sim_esTreeSize = '���ϼ����ݴ�С';  //873
  CHINESE_Sim_esAllSubDir = '����ȫ���������ϼ� ';  //873
  //>879

//------------------------------------------
//               Dutch
//------------------------------------------
  //875<
  //LsFileListview28 Column Caption
  DUTCH_ColIdName   = 'Naam';
  DUTCH_ColIdSize   = 'Grootte';
  DUTCH_ColIdType   = 'Type';
  DUTCH_ColIdDate   = 'Gewijzigd op';
  DUTCH_ColIdAttr   = 'Attr';
  DUTCH_ColIdHdSize = 'Schijf groote';
  DUTCH_ColIdFSpace = 'Vrije ruimte';
  //Drive Type
  DUTCH_DrvTypeStr0 = 'Onbekend';
  DUTCH_DrvTypeStr1 = 'Bestaat niet';
  DUTCH_DrvTypeStr2 = 'Verwijderbare schijf';
  DUTCH_DrvTypeStr3 = 'Vaste schijf';
  DUTCH_DrvTypeStr4 = 'Netwerk schijf';
  DUTCH_DrvTypeStr5 = 'CD-ROM';
  DUTCH_DrvTypeStr6 = 'RAM schijf';
  //LsFileListview28Popup MenuItem Caption
  DUTCH_LvItemID_0  = '&Open';
  DUTCH_LvItemID_1  = '&Beeld';
  DUTCH_LvItemID_3  = '&Versturen naar';
  DUTCH_LvItemID_5  = '&Knippen';
  DUTCH_LvItemID_6  = 'K&opi�ren';
  DUTCH_LvItemID_7  = '&Plakken';
  DUTCH_LvItemID_9  = '&Naam wijzigen';
  DUTCH_LvItemID_10 = '&Verwijderen';
  DUTCH_LvItemID_12 = '&Eigenschappen';
  DUTCH_LvItemID_14 = '&Nieuwe map ...';
  DUTCH_LvItemID_30 = 'Elke map ...';
  DUTCH_LvItemID_31 = 'Klembord als inhoud';
  DUTCH_LvItemID_32 = 'Klembord als bestandsnaam';
  DUTCH_LvItemID_33 = 'Bureaublad als snelkoppeling';
  //LsDirTree21Popup MenuItem Caption
  DUTCH_TvItemID_0  = '&Nieuwe map';
  DUTCH_TvItemID_1  = '&Geef map andere naam';
  DUTCH_TvItemID_2  = '&Verwijer map';
  DUTCH_TvItemID_4  = 'Knippen';
  DUTCH_TvItemID_5  = '&Kopi�ren';
  DUTCH_TvItemID_6  = '&Plakken';
  DUTCH_TvItemID_8  = 'Map grootte';
  DUTCH_TvItemID_9  = '&Map inhoud';
  DUTCH_TvItemID_11 = '&Map netwerk schijf ...';
  DUTCH_TvItemID_12 = 'Verbreek verbinding met netwerk schijf';
  DUTCH_TvItemID_14 = '&Eigenschap';
  //Error words
  DUTCH_ewDrive = 'Schijf ';  //873
  DUTCH_ewFolder = 'Map "';  //873
  DUTCH_ewError = 'FOUT - ';
  DUTCH_ewFile = ' bestand ';
  DUTCH_ewFrom = 'Van  : ';
  DUTCH_ewTo = 'Naar     : ';
  DUTCH_ewCancel = 'Afbreken';
  DUTCH_ewBrowse = 'Verkennen';
  DUTCH_ewReadOnly = 'Alleen lezen';
  DUTCH_ewArchive = 'Archief';
  DUTCH_ewHidden = 'Verborgen';
  DUTCH_ewSystem = 'Systeem';
  //Error strings
  DUTCH_esCannot = 'FOUT - kan niet ';
  DUTCH_esSpecifyDir = 'Geef svp directorie op';
  DUTCH_esInvalidDrvID = 'Geen geldige drive ID';
  DUTCH_esDrvNotReady = 'Er is geen disk in de drive of de drive is niet klaar';
  DUTCH_esExists = 'bestaat al !';
  DUTCH_esInvalidDirName = 'FOUT - verkeerde directorie naam';
  DUTCH_esConfirmRename = 'Wilt u de geselecteerde map een ander naam geven';
  DUTCH_esCannotAddDrv = 'Kan geen schijven toevoegen';
  DUTCH_esNewFolder = 'Nieuwe map';
  DUTCH_esInvalidChars = 'De map naam bevat ongeldige letters';
  DUTCH_esNotFound = 'niet gevonden';
  DUTCH_esFilesIn = 'Bestanden in ';
  DUTCH_esFileOpFailed = 'Bestands operatie mislukte';
  DUTCH_esReadOnly = 'Het is aleen-lezen';
  DUTCH_esNoFileSelected = 'Geen bestand(en) geselecteerd';
  DUTCH_esSendToFolder = 'Stuur naar welke map dan ook';
  DUTCH_esSendToPath = 'Geef svp het doel pad';
  DUTCH_esPersistSaveError = 'ERROR - herhaalde bestand.opslaan mislukte';
  DUTCH_esSetAttr = 'Zet attributen';
  DUTCH_esTreeSize = 'BOOM GROOTTE';  //873
  DUTCH_esAllSubDir = 'en alle-sub-mappen ';  //873
  //>875

//------------------------------------------
//               French
//------------------------------------------
  //872<
  //LsFileListview28 Column Caption
  FRENCH_ColIdName    = 'Nom';
  FRENCH_ColIdSize    = 'Taille';
  FRENCH_ColIdType    = 'Type';
  FRENCH_ColIdDate    = 'Date';
  FRENCH_ColIdAttr    = 'Attributs';
  FRENCH_ColIdHdSize  = 'Taille Disque';
  FRENCH_ColIdFSpace  = 'Espace libre';
  //Drive Type
  FRENCH_DrvTypeStr0  = 'Inconnu';
  FRENCH_DrvTypeStr1  = 'N''existe pas';
  FRENCH_DrvTypeStr2  = 'Disque amovible';
  FRENCH_DrvTypeStr3  = 'Disque Fixe';
  FRENCH_DrvTypeStr4  = 'Disque R�seau';
  FRENCH_DrvTypeStr5  = 'CD-ROM';
  FRENCH_DrvTypeStr6  = 'RAM Disk';
  //LsFileListview28Popup MenuItem Caption
  FRENCH_LvItemID_0   = '&Ouvrir';
  FRENCH_LvItemID_1   = '&Voir';
  FRENCH_LvItemID_3   = 'Co&pier dans';
  FRENCH_LvItemID_5   = 'C&ouper';
  FRENCH_LvItemID_6   = '&Copier';
  FRENCH_LvItemID_7   = 'Co&ller';
  FRENCH_LvItemID_9   = '&Renommer';
  FRENCH_LvItemID_10  = '&Supprimer';
  FRENCH_LvItemID_12  = '&Propri�t�s';
  FRENCH_LvItemID_14  = '&Nouveau Dossier ...';
  FRENCH_LvItemID_30  = 'le Dossier ...';  //873
  FRENCH_LvItemID_31  = 'Contenu dans le Presse-Papier';
  FRENCH_LvItemID_32  = 'Nom du fichier  dans le Presse-Papier';  //873
  FRENCH_LvItemID_33  = 'Comme Raccourci sur le Bureau';
  //LsDirTree21Popup MenuItem Caption
  FRENCH_TvItemID_0   = '&Nouveau Dossier';
  FRENCH_TvItemID_1   = '&Renommer le Dossier';
  FRENCH_TvItemID_2   = '&Effacer le Dossier';
  FRENCH_TvItemID_4   = 'Cou&per';
  FRENCH_TvItemID_5   = '&Copier';
  FRENCH_TvItemID_6   = 'Co&ller';
  FRENCH_TvItemID_8   = 'Taille de l''&arborescence';
  FRENCH_TvItemID_9   = '&Contenu du Dossier';
  FRENCH_TvItemID_11  = '&Connecter Lecteur R�seau ...';
  FRENCH_TvItemID_12  = '&D�connecter Lecteur R�seau';
  FRENCH_TvItemID_14  = '&Propri�t�s';
  //Error words
  FRENCH_ewDrive = 'Lecteur ';  //873
  FRENCH_ewFolder = 'Dossier "';  //873
  FRENCH_ewError = 'ERREUR - ';
  FRENCH_ewFile = ' le fichier  ';
  FRENCH_ewFrom = 'de  : ';
  FRENCH_ewTo = '�     : ';
  FRENCH_ewCancel = 'Annule';
  FRENCH_ewBrowse = 'Parcourir';  //873
  FRENCH_ewReadOnly = 'Lecture Seule';
  FRENCH_ewArchive = 'Archive';  //873
  FRENCH_ewHidden = 'Cach�';
  FRENCH_ewSystem = 'Syst�me';
  //Error strings
  FRENCH_esCannot = 'ERREUR - Impossible de ';
  FRENCH_esSpecifyDir = 'SVP choisissez un r�pertoire';
  FRENCH_esInvalidDrvID = 'ID de lecteur non valide';
  FRENCH_esDrvNotReady = 'Il n''y a pas de disque dans le lecteur' +
                          'ou le lecteur n''est pas pr�t.';
  FRENCH_esExists = '" existe d�j� !';
  FRENCH_esInvalidDirName = 'Erreur - Nom de r�pertoire invalide';
  FRENCH_esConfirmRename = 'Voulez-vous renommer le dossier s�lectionn�';
  FRENCH_esCannotAddDrv = 'Impossible d''ajouter des lecteurs';
  FRENCH_esNewFolder = 'Nouveau Dossier';
  FRENCH_esInvalidChars = 'Le nom de dossier contient des caract�res interdits';
  FRENCH_esNotFound = 'pas trouv�';
  FRENCH_esFilesIn = 'Fichiers dans ';
  FRENCH_esFileOpFailed = 'L''op�ration sur le fichier a �chou�';
  FRENCH_esReadOnly = 'Lecteur en Lecture Seule';  //873
  FRENCH_esNoFileSelected = 'Pas de fichier s�lectionn�';
  FRENCH_esSendToFolder = 'Copier dans le dossier...';
  FRENCH_esSendToPath = 'Veuillez donner le chemin de destination';
  FRENCH_esPersistSaveError = 'Erreur - Fichier prot�g�.L''enregistrement � �chou�';
  FRENCH_esSetAttr = 'Donnez les Attributs';
  FRENCH_esTreeSize = 'Taille de l''arbre';  //873
  FRENCH_esAllSubDir = 'et de tous ses sous-dossiers ';  //873
  //>872

//------------------------------------------
//               German
//------------------------------------------
  //872<
  //LsFileListview28 Column Caption
  GERMAN_ColIdName    = 'Dateiname';
  GERMAN_ColIdSize    = 'Gr��e';
  GERMAN_ColIdType    = 'Typ';
  GERMAN_ColIdDate    = 'Ge�ndert am';
  GERMAN_ColIdAttr    = 'Attribute';
  GERMAN_ColIdHdSize  = 'Gesamtgr��e';
  GERMAN_ColIdFSpace  = 'Freier Speicher';
  //Drive Type
  GERMAN_DrvTypeStr0  = 'Unbekannt';
  GERMAN_DrvTypeStr1  = 'Nicht existent';
  GERMAN_DrvTypeStr2  = 'Disketten-Laufwerk';
  GERMAN_DrvTypeStr3  = 'Lokales Laufwerk';
  GERMAN_DrvTypeStr4  = 'Netz-Laufwerk';
  GERMAN_DrvTypeStr5  = 'CD-ROM-Laufwerk';
  GERMAN_DrvTypeStr6  = 'RAM-Laufwerk';
  //LsFileListview28Popup MenuItem Caption
  GERMAN_LvItemID_0   =  '�&ffnen';
  GERMAN_LvItemID_1   =  'An&zeigen';
  GERMAN_LvItemID_3   =  'Se&nden an';
  GERMAN_LvItemID_5   =  '&Ausschneiden';
  GERMAN_LvItemID_6   =  '&Kopieren';
  GERMAN_LvItemID_7   =  '&Einf�gen';
  GERMAN_LvItemID_9   =  '&Umbenennen';
  GERMAN_LvItemID_10  =  '&L�schen';
  GERMAN_LvItemID_12  =  'Eigen&schaften';
  GERMAN_LvItemID_14  =  'Neuer &Ordner';
  GERMAN_LvItemID_30  =  'Ordne&r...';
  GERMAN_LvItenID_31  =  '&Datei(en) an Zwischenablage';
  GERMAN_LvItemID_32  =  'Dateiname(n) an Z&wischenablage';
  GERMAN_LvItemID_33  =  '&Verkn�pfung auf den Desktop';
  //LsDirTree21Popup MenuItem Caption
  GERMAN_TvItemID_0   = '&Neuer Ordner';
  GERMAN_TvItemID_1   = '&Ordner umbenennen';
  GERMAN_TvItemID_2   = 'Ordner &l�schen';
  GERMAN_TvItemID_4   = '&Ausschneiden';
  GERMAN_TvItemID_5   = '&Kopieren';
  GERMAN_TvItemID_6   = '&Einf�gen';
  GERMAN_TvItemID_8   = 'Ordner&gr��e';
  GERMAN_TvItemID_9   = 'Ordner&inhalt';
  GERMAN_TvItemID_11  = 'Netzlaufwerk &verbinden...';
  GERMAN_TvItemID_12  = 'Netzlaufwerk &trennen...';
  GERMAN_TvItemID_14  = 'Eigen&schaften';
  //Error words
  GERMAN_ewDrive = 'Laufwerk ';  //873
  GERMAN_ewFolder = 'Ordner "';  //873
  GERMAN_ewError = 'Fehler - ';
  GERMAN_ewFile = '" ist fehlgeschlagen mit Datei ';
  GERMAN_ewFrom = 'Von  : ';
  GERMAN_ewTo = 'Nach : ';
  GERMAN_ewCancel = '&Abbrechen';
  GERMAN_ewBrowse = 'Ordner &w�hlen';
  GERMAN_ewReadOnly = 'Schreibgesch�tzt';
  GERMAN_ewArchive = 'Archiv';
  GERMAN_ewHidden = 'Versteckt';
  GERMAN_ewSystem = 'System';
  //Error strings
  GERMAN_esCannot = 'Fehler - Dateioperation "';
  GERMAN_esSpecifyDir = 'Bitte w�hlen Sie ein Verzeichnis:';
  GERMAN_esInvalidDrvID = 'Keine g�ltige Laufwerksbezeichnung!';
  GERMAN_esDrvNotReady = 'Kein Datentr�ger im Laufwerk ' +
                          'oder Laufwerk nicht bereit!';
  GERMAN_esExists = ' existiert bereits!';
  GERMAN_esInvalidDirName = 'Fehler - Ung�ltiger Verzeichnisname:';
  GERMAN_esConfirmRename = 'Wollen Sie den markierten Ordner umbenennen';
  GERMAN_esCannotAddDrv = 'Hinzuf�gen von Laufwerken nicht m�glich!';
  GERMAN_esNewFolder = 'Neuer Ordner';
  GERMAN_esInvalidChars = 'Ordnername enth�lt ung�ltige Zeichen!';
  GERMAN_esNotFound = ' nicht gefunden!';
  GERMAN_esFilesIn = 'Dateien in ';
  GERMAN_esFileOpFailed = 'Dateioperation ist fehlgeschlagen!';
  GERMAN_esReadOnly = 'Die Datei ist schreibgesch�tzt!';
  GERMAN_esNoFileSelected = 'Keine Datei(en) markiert!';
  GERMAN_esSendToFolder = 'An Ordner senden...';
  GERMAN_esSendToPath = 'Bitte geben Sie den Zielpfad ein:';
  GERMAN_esPersistSaveError = 'Verkn�pfung konnte nicht erstellt werden!';
  GERMAN_esSetAttr = 'Attribute setzen...';
  GERMAN_esTreeSize = 'BAUMGR��E';  //873
  GERMAN_esAllSubDir = 'und alle untergeordneten Ordner ';  //873
  //>872

//------------------------------------------
//               Italiano
//------------------------------------------
  //874<
  //LsFileListview28 Column Caaption
  ITALIAN_ColIdName   = 'Nome';
  ITALIAN_ColIdSize   = 'Capacit�';
  ITALIAN_ColIdType   = 'Tipo';
  ITALIAN_ColIdDate   = 'Modificato';
  ITALIAN_ColIdAttr   = 'Attributi';
  ITALIAN_ColIdHdSize = 'Capacit� disco';
  ITALIAN_ColIdFSpace = 'Disponibile';
  //Drive Type
  ITALIAN_DrvTypeStr0 = 'Sconosciuto';
  ITALIAN_DrvTypeStr1 = 'Inesistente';
  ITALIAN_DrvTypeStr2 = 'Disco rimovibile';
  ITALIAN_DrvTypeStr3 = 'Disco locale';
  ITALIAN_DrvTypeStr4 = 'Disco di rete';
  ITALIAN_DrvTypeStr5 = 'Disco CD-ROM';
  ITALIAN_DrvTypeStr6 = 'Disco RAM';
  //LsFileListview28Popup MenuItem Caption
  ITALIAN_LvItemID_0  = '&Apri';
  ITALIAN_LvItemID_1  = '&An&teprima';
  ITALIAN_LvItemID_3  = 'In&via a';
  ITALIAN_LvItemID_5  = 'Tagl&ia';
  ITALIAN_LvItemID_6  = '&Copia';
  ITALIAN_LvItemID_7  = '&Incolla';
  ITALIAN_LvItemID_9  = '&Rin&omina';
  ITALIAN_LvItemID_10 = '&Elimina';
  ITALIAN_LvItemID_12 = '&Propriet�';
  ITALIAN_LvItemID_14 = '&Nuova Cartella...';
  ITALIAN_LvItemID_30 = 'Cartella ...';
  ITALIAN_LvItemID_31 = 'Copia il contenuto negli appunti';
  ITALIAN_LvItemID_32 = 'Copia il nome negli appunti';
  ITALIAN_LvItemID_33 = 'Collegamento al Desktop';
  //LsDirTree21Popup MenuItem Caption
  ITALIAN_TvItemID_0  = '&Nuova Cartella';
  ITALIAN_TvItemID_1  = '&Rinomina Cartella';
  ITALIAN_TvItemID_2  = '&Elimina Cartella';
  ITALIAN_TvItemID_4  = 'Ta&glia';
  ITALIAN_TvItemID_5  = '&Copia';
  ITALIAN_TvItemID_6  = '&Incolla';
  ITALIAN_TvItemID_8  = '&Dimensioni elenco';
  ITALIAN_TvItemID_9  = 'Co&ntenuto Cartella';
  ITALIAN_TvItemID_11 = 'Connetti &unit� di rete...';
  ITALIAN_TvItemID_12 = 'Dis&connetti unit� di rete';
  ITALIAN_TvItemID_14 = '&Proriet�';
  //Error words
  ITALIAN_ewDrive = 'Unit� ';
  ITALIAN_ewFolder = 'Cartella "';
  ITALIAN_ewError = 'ERRORE - ';
  ITALIAN_ewFile = ' file ';
  ITALIAN_ewFrom = 'Da  : ';
  ITALIAN_ewTo = 'A     : ';
  ITALIAN_ewCancel = 'Annulla';
  ITALIAN_ewBrowse = 'Esplora';
  ITALIAN_ewReadOnly = 'Sola lettura';
  ITALIAN_ewArchive = 'Archivio';
  ITALIAN_ewHidden = 'Nascosto';
  ITALIAN_ewSystem = 'Sistema';
  //Error strings
  ITALIAN_esCannot = 'ERRORE - Impossibile ';
  ITALIAN_esSpecifyDir = 'Specificare una cartella';
  ITALIAN_esInvalidDrvID = 'Lettera di unit� non valida';
  ITALIAN_esDrvNotReady = 'Nessun disco nell''unit� o unit� non pronta';
  ITALIAN_esExists = 'gi� esistente !';
  ITALIAN_esInvalidDirName = 'Errore - Nome cartella non valido';
  ITALIAN_esConfirmRename = 'Vuoi rinominare la cartella selezionata';
  ITALIAN_esCannotAddDrv = 'Impossibile aggiungere unit�';
  ITALIAN_esNewFolder = 'Nuova cartella';
  ITALIAN_esInvalidChars = 'Il nome della cartella contiene un carattere non valido';
  ITALIAN_esNotFound = 'non trovato';
  ITALIAN_esFilesIn = 'Files in ';
  ITALIAN_esFileOpFailed = 'Operazione fallita';
  ITALIAN_esReadOnly = 'E'' in sola lettura';
  ITALIAN_esNoFileSelected = 'Nessun file selezionato';
  ITALIAN_esSendToFolder = 'Invia alla cartella';
  ITALIAN_esSendToPath = 'Inserire il percorso di destinazione';
  ITALIAN_esPersistSaveError = 'Errore - PersistFile.Save fallito';
  ITALIAN_esSetAttr = 'Fissa attributi';
  ITALIAN_esTreeSize = 'Capacit�';  //873
  ITALIAN_esAllSubDir = 'e tutte le sotto-cartelle ';
  //>874

//------------------------------------------
//               Japanese
//------------------------------------------
  //880<
  //LsFileListview28 Column Caption
  JAPANESE_ColIdName   = '���O';
  JAPANESE_ColIdSize   = '�T�C�Y';
  JAPANESE_ColIdType   = '���';
  JAPANESE_ColIdDate   = '�X�V����';
  JAPANESE_ColIdAttr   = '����';
  JAPANESE_ColIdHdSize = '���v�T�C�Y';
  JAPANESE_ColIdFSpace = '�󂫗̈�';
  //Drive Type
  JAPANESE_DrvTypeStr0 = '�s��';
  JAPANESE_DrvTypeStr1 = '���݂��܂���';
  JAPANESE_DrvTypeStr2 = '�����[�o�u���f�o�C�X';
  JAPANESE_DrvTypeStr3 = '�n�[�h�f�B�X�N';
  JAPANESE_DrvTypeStr4 = '�l�b�g���[�N�h���C�u';
  JAPANESE_DrvTypeStr5 = 'CD-ROM �h���C�u';
  JAPANESE_DrvTypeStr6 = 'RAM Disk';
  //LsFileListview28Popup MenuItem Caption
  JAPANESE_LvItemID_0  = '�J��(&O)';
  JAPANESE_LvItemID_1  = '����(&V)';
  JAPANESE_LvItemID_3  = '����(&n)';
  JAPANESE_LvItemID_5  = '�؂���(&t)';
  JAPANESE_LvItemID_6  = '�R�s�[(&C)';
  JAPANESE_LvItemID_7  = '�\��t��(&P)';
  JAPANESE_LvItemID_9  = '���O�̕ύX(&R)';
  JAPANESE_LvItemID_10 = '�폜(&D)';
  JAPANESE_LvItemID_12 = '�v���p�e�B(&P)';
  JAPANESE_LvItemID_14 = '�V�K�t�H���_�쐬(&N)';
  JAPANESE_LvItemID_30 = '�t�H���_�̎w�� ...';
  JAPANESE_LvItemID_31 = '�t�@�C���̓��e���N���b�v�{�[�h�փR�s�[';
  JAPANESE_LvItemID_32 = '�t�@�C�������N���b�v�{�[�h�փR�s�[';
  JAPANESE_LvItemID_33 = '�f�X�N�g�b�v�փV���[�g�J�b�g���쐬';
  //LsDirTree21Popup MenuItem Caption
  JAPANESE_TvItemID_0  = '�V�K�t�H���_�쐬(&N)';
  JAPANESE_TvItemID_1  = '�t�H���_���ύX(&R)';
  JAPANESE_TvItemID_2  = '�t�H���_�폜(&D)';
  JAPANESE_TvItemID_4  = '�؂���(&t)';
  JAPANESE_TvItemID_5  = '�R�s�[(&C)';
  JAPANESE_TvItemID_6  = '�\��t��(&P)';
  JAPANESE_TvItemID_8  = '�t�H���_�T�C�Y(&S)';
  JAPANESE_TvItemID_9  = '�t�H���_���e(&F)';
  JAPANESE_TvItemID_11 = '�l�b�g���[�N�h���C�u�̊��蓖��(&M)';
  JAPANESE_TvItemID_12 = '�l�b�g���[�N�h���C�u�̐ؒf(&C)';
  JAPANESE_TvItemID_14 = '�v���p�e�B(&P)';
  //Error words
  JAPANESE_ewDrive = '�h���C�u ';  //873
  JAPANESE_ewFolder = '�t�H���_ "';  //873
  JAPANESE_ewError = '�G���[ - ';
  JAPANESE_ewFile = ' �t�@�C�� ';
  JAPANESE_ewFrom = '����  : ';
  JAPANESE_ewTo = '��     : ';
  JAPANESE_ewCancel = '�L�����Z��';
  JAPANESE_ewBrowse = '...�Q��';
  JAPANESE_ewReadOnly = '�ǂݎ���p';
  JAPANESE_ewArchive = '�A�[�J�C�u';
  JAPANESE_ewHidden = '�B���t�@�C��';
  JAPANESE_ewSystem = '�V�X�e���t�@�C��';
  //Error strings
  JAPANESE_esCannot = '�G���[ - ���s�o���܂��� ';
  JAPANESE_esSpecifyDir = '�f�B���N�g�����w�肵�ĉ�����';
  JAPANESE_esInvalidDrvID = '�s���� �h���C�uID �ł�';
  JAPANESE_esDrvNotReady = '�f�B�X�N���}������Ă��Ȃ����A�h���C�u�̏������o���Ă��܂���';
  JAPANESE_esExists = '���ɓ����̂��̂����݂��Ă��܂� !';
  JAPANESE_esInvalidDirName = '�G���[ - �s���ȃf�B���N�g�����ł�';
  JAPANESE_esConfirmRename = '�I�������t�H���_�̖��O��ύX���܂����H';
  JAPANESE_esCannotAddDrv = '�h���C�u��ǉ��ł��܂���';
  JAPANESE_esNewFolder = '�V�����t�H���_';
  JAPANESE_esInvalidChars = '�t�H���_���ɕs���ȕ������܂܂�Ă��܂�';
  JAPANESE_esNotFound = '������܂���';
  JAPANESE_esFilesIn = '�t�@�C�� in ';
  JAPANESE_esFileOpFailed = '�t�@�C���̑���Ɏ��s���܂���';
  JAPANESE_esReadOnly = '�ǂݎ���p�ł�';
  JAPANESE_esNoFileSelected = '�t�@�C�����I������Ă��܂���';
  JAPANESE_esSendToFolder = '�w��̃t�H���_�ցu����v';
  JAPANESE_esSendToPath = '�u����v��̃p�X����͂��Ă�������';
  JAPANESE_esPersistSaveError = '�G���[ - �V���[�g�J�b�g�̍쐬���s';
  JAPANESE_esSetAttr = '�����ύX';
  JAPANESE_esTreeSize = '�t�H���_�T�C�Y';
  JAPANESE_esAllSubDir = '�ƈȉ��S�ẴT�u�t�H���_�̃T�C�Y ';
  //>880
//------------------------------------------
//               Korean
//------------------------------------------
  //885<
  //LsFileListview28 Column Caption
  KOREAN_ColIdName   = '�̸�';
  KOREAN_ColIdSize   = 'ũ��';
  KOREAN_ColIdType   = '����';
  KOREAN_ColIdDate   = '������ ��¥';
  KOREAN_ColIdAttr   = '�Ӽ�';
  KOREAN_ColIdHdSize = '��ũ ũ��';
  KOREAN_ColIdFSpace = '���� ����';
  //Drive Type
  KOREAN_DrvTypeStr0 = '��';
  KOREAN_DrvTypeStr1 = '�������� ����';
  KOREAN_DrvTypeStr2 = '���Ű��� ��ũ ����̺�';
  KOREAN_DrvTypeStr3 = '���� ��ũ ����̺�';
  KOREAN_DrvTypeStr4 = '��Ʈ�� ��ũ ����̺�';
  KOREAN_DrvTypeStr5 = 'CD-ROM ��ũ ����̺�';
  KOREAN_DrvTypeStr6 = 'RAM ��ũ ����̺�';
  //LsFileListview28Popup MenuItem Caption
  KOREAN_LvItemID_0  = '����(&O)';
  KOREAN_LvItemID_1  = '����(&V)';
  KOREAN_LvItemID_3  = '������(&S)';
  KOREAN_LvItemID_5  = '�ڸ���(&X)';
  KOREAN_LvItemID_6  = '����(&C)';
  KOREAN_LvItemID_7  = '���̱�(&P)';
  KOREAN_LvItemID_9  = '�̸� ����(&R)';
  KOREAN_LvItemID_10 = '�����(&D)';
  KOREAN_LvItemID_12 = '����(&P)';
  KOREAN_LvItemID_14 = '�� ����(&N)...';
  KOREAN_LvItemID_30 = '������(&O)...';
  KOREAN_LvItemID_31 = 'Ŭ������� ���� ����(&K)';
  KOREAN_LvItemID_32 = 'Ŭ������� ���� �̸� ����(&L)';
  KOREAN_LvItemID_33 = '����ȭ�鿡 �ٷΰ���� �����(&S)';
  //LsDirTree21Popup MenuItem Caption
  KOREAN_TvItemID_0  = '�� ����(&N)';
  KOREAN_TvItemID_1  = '���� �̸� �ٲٱ�(&R)';
  KOREAN_TvItemID_2  = '���� �����(&D)';
  KOREAN_TvItemID_4  = '�ڸ���(&T)';
  KOREAN_TvItemID_5  = '����(&C)';
  KOREAN_TvItemID_6  = '���̱�(&P)';
  KOREAN_TvItemID_8  = 'Ʈ�� ũ��(&S)';
  KOREAN_TvItemID_9  = '���� ����(&F)';
  KOREAN_TvItemID_11 = '��Ʈ�� ����̺� �����(&N)...';
  KOREAN_TvItemID_12 = '��Ʈ�� ����̺� �������(&U)';
  KOREAN_TvItemID_14 = '����(&P)';
  //Error words
  KOREAN_ewDrive = '����̺� ';  //873
  KOREAN_ewFolder = '���� "';  //873
  KOREAN_ewError = '���� - ';
  KOREAN_ewFile = ' ���� ';
  KOREAN_ewFrom = '����  : ';
  KOREAN_ewTo = '(��)��     : ';
  KOREAN_ewCancel = '���';
  KOREAN_ewBrowse = '����';
  KOREAN_ewReadOnly = '�б�����';
  KOREAN_ewArchive = '����';
  KOREAN_ewHidden = '����';
  KOREAN_ewSystem = '�ý���';
  //Error strings
  KOREAN_esCannot = '���� - �Ҽ� ���� ';
  KOREAN_esSpecifyDir = '���丮�� �˷��ּſ�';
  KOREAN_esInvalidDrvID = '���� �ʴ� ����̺� ID';
  KOREAN_esDrvNotReady = '��ũ�� ���ų� �غ���� �ʾҽ��ϴ�';
  KOREAN_esExists = '�̹� �����մϴ� !';
  KOREAN_esInvalidDirName = '���� - �߸��� ���丮 �̸��Դϴ�';
  KOREAN_esConfirmRename = '������ �̸��� �ٲٽðڽ��ϱ� -';
  KOREAN_esCannotAddDrv = '����̺긦 �߰��� �� �����ϴ�';
  KOREAN_esNewFolder = '�� ����';
  KOREAN_esInvalidChars = '���� �̸��� �߸��� ���ڰ� �ֽ��ϴ�';
  KOREAN_esNotFound = 'ã�� �� �����ϴ�';
  KOREAN_esFilesIn = '���� ';
  KOREAN_esFileOpFailed = '���� ó�� ����';
  KOREAN_esReadOnly = '�б� ���� �����Դϴ�';
  KOREAN_esNoFileSelected = '���õ� ������ �����ϴ�';
  KOREAN_esSendToFolder = '������ ������';
  KOREAN_esSendToPath = '�����⸦ �� ������ �Է����ּſ� ';
  KOREAN_esPersistSaveError = '���� - PersistFile.Save ����';
  KOREAN_esSetAttr = '�Ӽ� ����';
  KOREAN_esTreeSize = 'Ʈ�� ũ��';  //873
  KOREAN_esAllSubDir = '�׸��� ��� ���� ���� ';  //873
  //>885
//------------------------------------------
//               Polish
//------------------------------------------
  //876<
  //LsFileListview28 Column Caption
  POLISH_ColIdName = 'Nazwa';
  POLISH_ColIdSize = 'Rozmiar';
  POLISH_ColIdType = 'Typ';
  POLISH_ColIdDate = 'Modyfikowany';
  POLISH_ColIdAttr = 'Atrybut';
  POLISH_ColIdHdSize = 'Rozmiar Dysku';
  POLISH_ColIdFSpace = 'Wolne Miejsce';
  //Drive Type
  POLISH_DrvTypeStr0 = 'Nieznany';
  POLISH_DrvTypeStr1 = 'Nie Istnieje';
  POLISH_DrvTypeStr2 = 'Dysk Wymienny';
  POLISH_DrvTypeStr3 = 'Dysk Sta�y';
  POLISH_DrvTypeStr4 = 'Dysk Sieciowy';
  POLISH_DrvTypeStr5 = 'CD-ROM Dysk';
  POLISH_DrvTypeStr6 = 'RAM Dysk';
  //LsFileListView28Popup MenuItem Caption
  POLISH_LvItemID_0 = '&Otw�rz';
  POLISH_LvItemID_1 = '&Podgl�d';
  POLISH_LvItemID_3 = 'Wy�lij &do';
  POLISH_LvItemID_5 = 'Wyt&nij';
  POLISH_LvItemID_6 = '&Kopiuj';
  POLISH_LvItemID_7 = 'Wkl&ej';
  POLISH_LvItemID_9 = '&Zmiana Nazwy';
  POLISH_LvItemID_10 = '&Usu�';
  POLISH_LvItemID_12 = '&W�a�ciwo�ci';
  POLISH_LvItemID_14 = 'Nowy &Folder';
  POLISH_LvItemID_30 = 'Nast�pny Folder';
  POLISH_LvItemID_31 = 'Zapisz jako Tre��';
  POLISH_LvItemID_32 = 'Zapisz jako Nazwa Pliku';
  POLISH_LvItemID_33 = 'Utw�rz Skr�t na Pulpicie';
  //LsDirTree21Popup MenuItem Caption
  POLISH_TvItemID_0 = 'Nowy &Folder';
  POLISH_TvItemID_1 = 'Zmiana &Nazwy Foldera';
  POLISH_TvItemID_2 = '&Usu� Folder';
  POLISH_TvItemID_4 = 'Wyt&nij';
  POLISH_TvItemID_5 = '&Kopiuj';
  POLISH_TvItemID_6 = 'Wkl&ej';
  POLISH_TvItemID_8 = 'Poka� &Drzewo';
  POLISH_TvItemID_9 = '&Poka� Tre�� Foldera';
  POLISH_TvItemID_11 = 'Po��cz z Dyskiem Sieciowym';
  POLISH_TvItemID_12 = 'Roz��cz Dysk Sieciowy';
  POLISH_TvItemID_14 = '&W�a�ciwo�ci';
  //Error words
  POLISH_ewDrive = 'Dysk ';
  POLISH_ewFolder = 'Folder "';
  POLISH_ewError = 'B��D - ';
  POLISH_ewFile = ' plik ';
  POLISH_ewFrom = 'Z   : ';
  POLISH_ewTo = 'Do   : ';
  POLISH_ewCancel = 'Anuluj';
  POLISH_ewBrowse = 'Przegl�daj';
  POLISH_ewReadOnly = 'Tylko do Odczytu';
  POLISH_ewArchive = 'Archiwalny';
  POLISH_ewHidden = 'Ukryty';
  POLISH_ewSystem = 'Systemowy';
  //Error strings
  POLISH_esCannot = 'B��D - "';
  POLISH_esSpecifyDir = 'Prosz� wybra� miejsce docelowe ';
  POLISH_esInvalidDrvID = 'Nie mog� zidentyfikowa� dysku, wybierz inny';
  POLISH_esDrvNotReady = 'Ten dysk jest tylko do odczytu';
  POLISH_esExists = 'ju� istnieje';
  POLISH_esInvalidDirName = 'B��D - �le podano �cie�k�';
  POLISH_esConfirmRename = 'Czy napewno chcesz zmieni� nazw� wybranego foldera ?';
  POLISH_esCannotAddDrv = 'Nie mog� doda� dysku';
  POLISH_esNewFolder = 'Nowy Folder';
  POLISH_esInvalidChars = '��a nazwa folderu';
  POLISH_esNotFound = 'nie znalaz�em';
  POLISH_esFilesIn = 'Plik�w w ';
  POLISH_esFileOpFailed = 'Operacja na pliku nie udana';
  POLISH_esReadOnly = 'Plik " jest tylko do odczytu';
  POLISH_esNoFileSelected = 'Nie wybrano pliku(�w)';
  POLISH_esSendToFolder = 'Wy�lij do nast�pnego foldera ';
  POLISH_esSendToPath = 'Prosz� wybra� �cie�k� i nacisn�� Enter';
  POLISH_esPersistSaveError = 'B��d - PersistFile.Zapis nie powi�d� si�';
  POLISH_esSetAttr = 'Dodaj atrybuty';
  POLISH_esTreeSize = 'POKA� DRZEWO';
  POLISH_esAllSubDir = 'oraz wszystkie jego Sub-Foldery';
  //>876

//------------------------------------------
//         Brazillian Portuguese
//------------------------------------------
  //873<
  //LsFileListview28 Column Caption
  BRAZ_PORT_ColIdName   = 'Nome';
  BRAZ_PORT_ColIdSize   = 'Tamanho';
  BRAZ_PORT_ColIdType   = 'Tipo';
  BRAZ_PORT_ColIdDate   = 'Modificado';
  BRAZ_PORT_ColIdAttr   = 'Atributos';
  BRAZ_PORT_ColIdHdSize = 'Tamanho total';
  BRAZ_PORT_ColIdFSpace = 'Espa�o livre';
  //Drive Type
  BRAZ_PORT_DrvTypeStr0 = 'Desconhecido';
  BRAZ_PORT_DrvTypeStr1 = 'N�o existe';
  BRAZ_PORT_DrvTypeStr2 = 'Disco remov�vel';
  BRAZ_PORT_DrvTypeStr3 = 'Disco fixo';
  BRAZ_PORT_DrvTypeStr4 = 'Disco de rede';
  BRAZ_PORT_DrvTypeStr5 = 'CD-ROM';
  BRAZ_PORT_DrvTypeStr6 = 'Disco RAM';
  //LsFileListview28Popup MenuItem Caption
  BRAZ_PORT_LvItemID_0   = '&Abrir';
  BRAZ_PORT_LvItemID_1   = '&Visualizar';
  BRAZ_PORT_LvItemID_3   = 'E&nviar para';
  BRAZ_PORT_LvItemID_5   = 'Cor&tar';
  BRAZ_PORT_LvItemID_6   = '&Copiar';
  BRAZ_PORT_LvItemID_7   = 'Col&ar';
  BRAZ_PORT_LvItemID_9   = '&Renomear';
  BRAZ_PORT_LvItemID_10  = '&Apagar';
  BRAZ_PORT_LvItemID_12  = '&Propriedades';
  BRAZ_PORT_LvItemID_14  = '&Nova pasta ...';
  BRAZ_PORT_LvItemID_30  = 'Para a pasta ...';
  BRAZ_PORT_LvItemID_31  = 'Copiar conte�do para �rea de transfer�ncia';
  BRAZ_PORT_LvItemID_32  = 'Copiar somente o nome para �rea de transfer�ncia';
  BRAZ_PORT_LvItemID_33  = '�rea de Trabalhao como Atalho';
  //LsDirTree21Popup MenuItem Caption
  BRAZ_PORT_TvItemID_0   = '&Nova pasta';
  BRAZ_PORT_TvItemID_1   = '&Renomear pasta';
  BRAZ_PORT_TvItemID_2   = '&Apagar pasta';
  BRAZ_PORT_TvItemID_4   = 'Cor&tar';
  BRAZ_PORT_TvItemID_5   = '&Copiar';
  BRAZ_PORT_TvItemID_6   = 'Col&ar';
  BRAZ_PORT_TvItemID_8   = 'Ta&manho do diret�rio';
  BRAZ_PORT_TvItemID_9   = 'C&onte�do da pasta';
  BRAZ_PORT_TvItemID_11  = 'Con&ectar unidade de rede';
  BRAZ_PORT_TvItemID_12  = 'De&sconectar unidade de rede';
  BRAZ_PORT_TvItemID_14  = '&Propriedades';
  //Error words
  BRAZ_PORT_ewDrive = 'Unidade ';
  BRAZ_PORT_ewFolder = 'Pasta "';
  BRAZ_PORT_ewError = 'ERRO - ';
  BRAZ_PORT_ewFile = ' arquivo  ';
  BRAZ_PORT_ewFrom = 'De  : ';
  BRAZ_PORT_ewTo = 'Para     : ';
  BRAZ_PORT_ewCancel = 'Cancelar';
  BRAZ_PORT_ewBrowse = 'Explorar';
  BRAZ_PORT_ewReadOnly = 'Somente leitura';
  BRAZ_PORT_ewArchive = 'Arquivo';
  BRAZ_PORT_ewHidden = 'Oculto';
  BRAZ_PORT_ewSystem = 'Sistema';
  //Error strings
  BRAZ_PORT_esCannot = 'ERRO - imposs�vel ';
  BRAZ_PORT_esSpecifyDir = 'Por favor especifique uma pasta';
  BRAZ_PORT_esInvalidDrvID = 'N�o � uma letra de unidade v�lida';
  BRAZ_PORT_esDrvNotReady = 'N�o h� um disco na unidade ' +
                          'ou a unidade n�o est� preparada.';
  BRAZ_PORT_esExists = ' j� existe !';
  BRAZ_PORT_esInvalidDirName = 'Erro - Nome da pasta n�o � v�lido';
  BRAZ_PORT_esConfirmRename = 'Deseja renomear a pasta selecionada';
  BRAZ_PORT_esCannotAddDrv = 'N�o � poss�vel adicionar unidades';
  BRAZ_PORT_esNewFolder = 'Nova pasta';
  BRAZ_PORT_esInvalidChars = 'o nome da pasta cont�m caracteres inv�lidos.';
  BRAZ_PORT_esNotFound = 'n�o encontrado';
  BRAZ_PORT_esFilesIn = 'Arquivos em ';
  BRAZ_PORT_esFileOpFailed = 'Opera��o com arquivos falhou';
  BRAZ_PORT_esReadOnly = 'Somente para leitura';
  BRAZ_PORT_esNoFileSelected = 'N�o h� pasta(s) selecionada(s)';
  BRAZ_PORT_esSendToFolder = 'Enviar para a pasta';
  BRAZ_PORT_esSendToPath = 'Por favor digite caminho da pasta de destino';
  BRAZ_PORT_esPersistSaveError = 'Erro - PersistFile.Save falhou';
  BRAZ_PORT_esSetAttr = 'Setar atributos';
  BRAZ_PORT_esTreeSize = 'Tamanho do diret�rio';
  BRAZ_PORT_esAllSubDir = 'e todas as sub-pastas ';
  //>873
//MPX1
//------------------------------------------
//   Slovenian
//------------------------------------------
  //881<
  //LsFileListview28 Column Caaption
  SLO_ColIdName   = 'Ime';
  SLO_ColIdSize   = 'Velikost';
  SLO_ColIdType   = 'Tip';
  SLO_ColIdDate   = 'Popravljeno';
  SLO_ColIdAttr   = 'Attr';
  SLO_ColIdHdSize = 'Velikost diska';
  SLO_ColIdFSpace = 'Prazen prostor';
  //Drive Type
  SLO_DrvTypeStr0 = 'Neznan';
  SLO_DrvTypeStr1 = 'Ne obstaja';
  SLO_DrvTypeStr2 = 'Odstranljiv disk';
  SLO_DrvTypeStr3 = 'Trdi disk';
  SLO_DrvTypeStr4 = 'Omre�ni disk';
  SLO_DrvTypeStr5 = 'CD-ROM';
  SLO_DrvTypeStr6 = 'RAM disk';
  //LsFileListview28Popup MenuItem Caption
  SLO_LvItemID_0  = '&Odpri';
  SLO_LvItemID_1  = '&Poglej';
  SLO_LvItemID_3  = 'Po�&lji na';
  SLO_LvItemID_5  = '&Re�i';
  SLO_LvItemID_6  = '&Kopiraj';
  SLO_LvItemID_7  = 'Pr&ilepi';
  SLO_LvItemID_9  = 'Pr&eimenuj';
  SLO_LvItemID_10 = '&Bri�i';
  SLO_LvItemID_12 = '&Lastnosti';
  SLO_LvItemID_14 = '&Nova mapa...';
  SLO_LvItemID_30 = 'katerakoli mapa ...';
  SLO_LvItemID_31 = 'Odlagali��e kot vsebina';
  SLO_LvItemID_32 = 'Odlagali��e kot ime';
  SLO_LvItemID_33 = 'Namizje kot blji�nica';
  //LsDirTree21Popup MenuItem Caption
  SLO_TvItemID_0  = '&Nova mapa';
  SLO_TvItemID_1  = '&Preimenuj mapo';
  SLO_TvItemID_2  = '&Bri�i mapo';
  SLO_TvItemID_4  = '&Re�i';
  SLO_TvItemID_5  = '&Kopiraj';
  SLO_TvItemID_6  = 'Pr&ilepi';
  SLO_TvItemID_8  = 'Velikost &drevesa';
  SLO_TvItemID_9  = '&Vsebina mape';
  SLO_TvItemID_11 = 'Prikl&ju�i omre�ni disk ...';
  SLO_TvItemID_12 = '&Odklju�i omre�ni disk ...';
  SLO_TvItemID_14 = '&Lastnosti';
  //Error words
  SLO_ewDrive = 'Disk ';  //873
  SLO_ewFolder = 'mapa "';  //873
  SLO_ewError = 'NAPAKA - ';
  SLO_ewFile = ' datoteka ';
  SLO_ewFrom = 'Iz  : ';
  SLO_ewTo = 'Na     : ';
  SLO_ewCancel = 'Prekini';
  SLO_ewBrowse = 'Prebrskaj';
  SLO_ewReadOnly = 'SamoBranje';
  SLO_ewArchive = 'Arhiva';
  SLO_ewHidden = 'Skrito';
  SLO_ewSystem = 'Sistem';
  //Error strings
  SLO_esCannot = 'NAPAKA - Ne morem ';
  SLO_esSpecifyDir = 'Prosim dolo�ite mapo';
  SLO_esInvalidDrvID = 'Nepravilen disk';
  SLO_esDrvNotReady = 'Ni diskete ali pa je disk nepripravljen';
  SLO_esExists = '�e obstoja !';
  SLO_esInvalidDirName = 'NAPAKA - napa�no ime';
  SLO_esConfirmRename = 'Ali �elite preimenovati izbrano mapo?';
  SLO_esCannotAddDrv = 'Diskov ne morem dodati!';
  SLO_esNewFolder = 'Nova mapa';
  SLO_esInvalidChars = 'Ime vsebuje neveljavne znake';
  SLO_esNotFound = 'ne najdem';
  SLO_esFilesIn = 'Datoteke v ';
  SLO_esFileOpFailed = 'Operacija se ni izvedla';
  SLO_esReadOnly = 'Ozne�ena je samo za branje';
  SLO_esNoFileSelected = 'Niste izbrali datotek';
  SLO_esSendToFolder = 'Po�lji v katerokoli mapo';
  SLO_esSendToPath = 'Prosim dolo�ite pot.';
  SLO_esPersistSaveError = 'NAPAKA - PersistFile.Save failed';
  SLO_esSetAttr = 'Postavi atributr';
  SLO_esTreeSize = 'Velikost drevesa';  //873
  SLO_esAllSubDir = 'in vseh podmapah ';  //873
  //>881
//------------------------------------------
//               Slovak
//------------------------------------------
  //876<
  //LsFileListview28 Column Caption
  SLOVAK_ColIdName   = 'N�zov';
  SLOVAK_ColIdSize   = 'Ve�kos�';
  SLOVAK_ColIdType   = 'Typ';
  SLOVAK_ColIdDate   = 'Zmenen�';
  SLOVAK_ColIdAttr   = 'Atrib�ty';
  SLOVAK_ColIdHdSize = 'Kapacita';
  SLOVAK_ColIdFSpace = 'Vo�n� miesto';
  //Drive Type
  SLOVAK_DrvTypeStr0 = 'Nezn�my typ';
  SLOVAK_DrvTypeStr1 = 'Neexistuje';
  SLOVAK_DrvTypeStr2 = 'Vymenite�n� disk';
  SLOVAK_DrvTypeStr3 = 'Pevn� disk';
  SLOVAK_DrvTypeStr4 = 'Sie�ov� disk';
  SLOVAK_DrvTypeStr5 = 'CD-ROM';
  SLOVAK_DrvTypeStr6 = 'RAM disk';
  //LsFileListview28Popup MenuItem Caption
  SLOVAK_LvItemID_0  = '&Otvori�';
  SLOVAK_LvItemID_1  = '&Zobrazi�';
  SLOVAK_LvItemID_3  = 'Odos&la� kam';
  SLOVAK_LvItemID_5  = '&Vystrihn��';
  SLOVAK_LvItemID_6  = '&Kop�rova�';
  SLOVAK_LvItemID_7  = '&Prilepi�';
  SLOVAK_LvItemID_9  = 'Pre&menova�';
  SLOVAK_LvItemID_10 = 'O&dstr�ni�';
  SLOVAK_LvItemID_12 = 'Vl&astnosti';
  SLOVAK_LvItemID_14 = '&Nov� prie�inok...';
  SLOVAK_LvItemID_30 = 'Prie�inok ...';
  SLOVAK_LvItemID_31 = 'Schr�nka - obsah s�boru';
  SLOVAK_LvItemID_32 = 'Schr�nka - n�zov s�boru';
  SLOVAK_LvItemID_33 = 'Pracovn� plocha - vytvori� odkaz';
  //LsDirTree21Popup MenuItem Caption
  SLOVAK_TvItemID_0  = '&Nov� prie�inok';
  SLOVAK_TvItemID_1  = 'Pre&menova� prie�inok';
  SLOVAK_TvItemID_2  = 'O&dstr�ni� prie�inok';
  SLOVAK_TvItemID_4  = '&Vystrihn��';
  SLOVAK_TvItemID_5  = '&Kop�rova�';
  SLOVAK_TvItemID_6  = '&Prilepi�';
  SLOVAK_TvItemID_8  = 'Ve�kos� pod&stromu';
  SLOVAK_TvItemID_9  = '&Obsah prie�inka';
  SLOVAK_TvItemID_11 = 'Pripo&ji� sie�ov� disk ...';
  SLOVAK_TvItemID_12 = 'Odpo&ji� sie�ov� disk';
  SLOVAK_TvItemID_14 = 'Vl&astnosti';
  //Error words
  SLOVAK_ewDrive = 'Jednotka ';  //873
  SLOVAK_ewFolder = 'Prie�inok "';  //873
  SLOVAK_ewError = 'CHYBA - ';
  SLOVAK_ewFile = ' s�bor ';
  SLOVAK_ewFrom = 'Z  : ';
  SLOVAK_ewTo = 'Do     : ';
  SLOVAK_ewCancel = 'Zru�i�';
  SLOVAK_ewBrowse = 'Preh�ad�va�';
  SLOVAK_ewReadOnly = 'Iba na ��tanie';
  SLOVAK_ewArchive = 'Arch�vny';
  SLOVAK_ewHidden = 'Skryt�';
  SLOVAK_ewSystem = 'Syst�mov�';
  //Error strings
  SLOVAK_esCannot = 'CHYBA - Nie je mo�n� ';
  SLOVAK_esSpecifyDir = 'Pros�m upresnite adres�r';
  SLOVAK_esInvalidDrvID = 'ID jednotky nie je spr�vne';
  SLOVAK_esDrvNotReady = 'Jednotka nie je pripraven�, alebo sa v nej nenach�dza disk';
  SLOVAK_esExists = 'u� existuje !';
  SLOVAK_esInvalidDirName = 'Chyba - nepovolen� n�zov adres�ra';
  SLOVAK_esConfirmRename = '�el�te si premenova� vybran� adres�r';
  SLOVAK_esCannotAddDrv = 'Nie je mo�n� prida� jednotky';
  SLOVAK_esNewFolder = 'Nov� prie�inok';
  SLOVAK_esInvalidChars = 'N�zov prie�inka obsahuje nepovolen� znaky';
  SLOVAK_esNotFound = 'nebol n�jden�';
  SLOVAK_esFilesIn = 'S�bory v ';
  SLOVAK_esFileOpFailed = 'Oper�cia so s�borom zlyhala';
  SLOVAK_esReadOnly = 'Je to iba na ��tanie';
  SLOVAK_esNoFileSelected = 'Nebol vybran� �iadny s�bor';
  SLOVAK_esSendToFolder = 'Odosla� do prie�inka';
  SLOVAK_esSendToPath = 'Pros�m vlo�te cel� cestu k zvolen�mu prie�inku';
  SLOVAK_esPersistSaveError = 'Chyba - zlyhalo PersistFile.Save';
  SLOVAK_esSetAttr = 'Nastavenie atrib�tov';
  SLOVAK_esTreeSize = 'VE�KOS� PODSTROMU';  //873
  SLOVAK_esAllSubDir = 'a v�etky jeho podadres�re ';  //873
  //>876

//------------------------------------------
//               Spanish
//------------------------------------------
  //872<
  //LsFileListview28 Column Caption
  SPANISH_ColIdName   = 'Nombre';
  SPANISH_ColIdSize   = 'Tama�o';
  SPANISH_ColIdType   = 'Tipo';
  SPANISH_ColIdDate   = 'Modificado';
  SPANISH_ColIdAttr   = 'Attributos';
  SPANISH_ColIdHdSize = 'Tama�o total';
  SPANISH_ColIdFSpace = 'Espacio libre';
  //Drive Type
  SPANISH_DrvTypeStr0 = 'Desconocido';
  SPANISH_DrvTypeStr1 = 'No existe';
  SPANISH_DrvTypeStr2 = 'Disco extraible';
  SPANISH_DrvTypeStr3 = 'Disco fijo';
  SPANISH_DrvTypeStr4 = 'Disco de red';
  SPANISH_DrvTypeStr5 = 'CD-ROM';
  SPANISH_DrvTypeStr6 = 'Disco RAM';
  //LsFileListview28Popup MenuItem Caption
  SPANISH_LvItemID_0   = '&Abrir';
  SPANISH_LvItemID_1   = '&Ver';
  SPANISH_LvItemID_3   = 'E&nviar a';
  SPANISH_LvItemID_5   = 'Cor&tar';
  SPANISH_LvItemID_6   = '&Copiar';
  SPANISH_LvItemID_7   = '&Pegar';
  SPANISH_LvItemID_9   = '&Renombrar';
  SPANISH_LvItemID_10  = '&Borrar';
  SPANISH_LvItemID_12  = '&Propiedades';
  SPANISH_LvItemID_14  = '&Nueva carpeta ...';
  SPANISH_LvItemID_30  = 'Una carpeta ...';
  SPANISH_LvItemID_31  = 'Copiar contenido al portapapeles';
  SPANISH_LvItemID_32  = 'Copiar nombre del fichero al portapapeles';
  SPANISH_LvItemID_33  = 'Acceso directo al escritorio';
  //LsDirTree21Popup MenuItem Caption
  SPANISH_TvItemID_0   = '&Nueva carpeta';
  SPANISH_TvItemID_1   = '&Renombrar carpeta';
  SPANISH_TvItemID_2   = '&Borrar carpeta';
  SPANISH_TvItemID_4   = 'Cor&tar';
  SPANISH_TvItemID_5   = '&Copiar';
  SPANISH_TvItemID_6   = '&Pegar';
  SPANISH_TvItemID_8   = 'Ta&ma�o del �rbol';
  SPANISH_TvItemID_9   = 'C&ontenido de la carpeta';
  SPANISH_TvItemID_11  = 'Con&ectar unidad de red';
  SPANISH_TvItemID_12  = 'De&sconectar unidad de red';
  SPANISH_TvItemID_14  = '&Propiedades';
  //Error words
  SPANISH_ewDrive = 'Unidad ';   //873
  SPANISH_ewFolder = 'Carpeta "';   //873
  SPANISH_ewError = 'ERROR - ';
  SPANISH_ewFile = ' el fichero  ';
  SPANISH_ewFrom = 'De  : ';
  SPANISH_ewTo = 'A     : ';
  SPANISH_ewCancel = 'Cancelar';
  SPANISH_ewBrowse = 'Explorar';
  SPANISH_ewReadOnly = 'S�lo lectura';
  SPANISH_ewArchive = 'Archivo';
  SPANISH_ewHidden = 'Oculto';
  SPANISH_ewSystem = 'Sistema';
  //Error strings
  SPANISH_esCannot = 'ERROR - No se puede ';
  SPANISH_esSpecifyDir = 'Por favor especifique un directorio';
  SPANISH_esInvalidDrvID = 'No es una letra de unidad v�lida';
  SPANISH_esDrvNotReady = 'No hay disco en la unidad ' +
                          'o la unidad no est� preparada.';
  SPANISH_esExists = '" ya existe !';
  SPANISH_esInvalidDirName = 'Error - nombre de carpeta no v�lido';
  SPANISH_esConfirmRename = 'Quiere renombrar la carpeta seleccionada';
  SPANISH_esCannotAddDrv = 'No se pueden a�adir unidades';
  SPANISH_esNewFolder = 'Nueva carpeta';
  SPANISH_esInvalidChars = 'El nombre de la carpeta contiene caracteres inv�lidos.';
  SPANISH_esNotFound = 'no encontrado';
  SPANISH_esFilesIn = 'Ficheros en ';
  SPANISH_esFileOpFailed = 'La operaci�n con el fichero ha fallado';
  SPANISH_esReadOnly = 'Es de s�lo lectura';
  SPANISH_esNoFileSelected = 'No hay fichero(s) seleccionado(s)';
  SPANISH_esSendToFolder = 'Enviar a carpeta';
  SPANISH_esSendToPath = 'Por favor intruduzca la carpeta donde enviar';
  SPANISH_esPersistSaveError = 'Error - PersistFile.Save fall�';
  SPANISH_esSetAttr = 'Poner atributos';
  SPANISH_esTreeSize = 'TAMA�O DEL �RBOL';  //873
  SPANISH_esAllSubDir = 'y todas sus subcarpetas ';  //873
  //>872

//------------------------------------------
//               Swedish
//------------------------------------------
  //882<
  //LsFileListview28 Column Caption
  SWEDISH_ColIdName   = 'Namn';
  SWEDISH_ColIdSize   = 'Storlek';
  SWEDISH_ColIdType   = 'Typ';
  SWEDISH_ColIdDate   = 'Modifierad';
  SWEDISH_ColIdAttr   = 'Attr';
  SWEDISH_ColIdHdSize = 'Disk Storlek';
  SWEDISH_ColIdFSpace = 'Fritt utrymma';
  //Drive Type
  SWEDISH_DrvTypeStr0 = 'Ok�nd';
  SWEDISH_DrvTypeStr1 = 'Finns Ej';
  SWEDISH_DrvTypeStr2 = 'Flyttbar Disk';
  SWEDISH_DrvTypeStr3 = 'Fast Disk';
  SWEDISH_DrvTypeStr4 = 'N�tverks Disk';
  SWEDISH_DrvTypeStr5 = 'CD-ROM Disk';
  SWEDISH_DrvTypeStr6 = 'RAM Disk';
  //LsFileListview28Popup MenuItem Caption
  SWEDISH_LvItemID_0  = '�&ppna';
  SWEDISH_LvItemID_1  = '&Visa';
  SWEDISH_LvItemID_3  = 'Sk&icka Till';
  SWEDISH_LvItemID_5  = 'Klipp U&t';
  SWEDISH_LvItemID_6  = '&Kopiera';
  SWEDISH_LvItemID_7  = 'K&listra In';
  SWEDISH_LvItemID_9  = '&Byt Namn';
  SWEDISH_LvItemID_10 = '&Radera';
  SWEDISH_LvItemID_12 = '&Egenskaper';
  SWEDISH_LvItemID_14 = '&Ny Katalog...';
  SWEDISH_LvItemID_30 = 'Valfri Katalog ...';
  SWEDISH_LvItemID_31 = 'Klipboard som Inneh�ll';
  SWEDISH_LvItemID_32 = 'Klippbord som FileNamn';
  SWEDISH_LvItemID_33 = 'Skrivbord som Genv�g';
  //LsDirTree21Popup MenuItem Caption
  SWEDISH_TvItemID_0  = '&Ny Katalog';
  SWEDISH_TvItemID_1  = '&D�p om Katalog';
  SWEDISH_TvItemID_2  = '&Radera Katalog';
  SWEDISH_TvItemID_4  = 'Klip&p ut';
  SWEDISH_TvItemID_5  = '&Kopiera';
  SWEDISH_TvItemID_6  = '&Klistra IN';
  SWEDISH_TvItemID_8  = 'Tr�d &Storlek';
  SWEDISH_TvItemID_9  = '&Katalog Inneh�ll';
  SWEDISH_TvItemID_11 = '&Koppla N�tverks Disk ...';
  SWEDISH_TvItemID_12 = 'Frig�r N�tv&erksdisk';
  SWEDISH_TvItemID_14 = '&Egenskaper';
  //Error words
  SWEDISH_ewDrive = 'Enhet ';
  SWEDISH_ewFolder = 'Katalog "';
  SWEDISH_ewError = 'FEL - ';
  SWEDISH_ewFile = ' fil ';
  SWEDISH_ewFrom = 'Fr�n  : ';
  SWEDISH_ewTo = 'Till     : ';
  SWEDISH_ewCancel = 'Avbryt';
  SWEDISH_ewBrowse = 'S�k';
  SWEDISH_ewReadOnly = 'Skrivskyddad';
  SWEDISH_ewArchive = 'Arkiv';
  SWEDISH_ewHidden = 'Dold';
  SWEDISH_ewSystem = 'System';
  //Error strings
  SWEDISH_esCannot = 'FEL - Kan Inte ';
  SWEDISH_esSpecifyDir = 'Ange en Katalog';
  SWEDISH_esInvalidDrvID = 'Inte ett Giltigt Enhets ID';
  SWEDISH_esDrvNotReady = 'Det finns ingen disk i enheten, eller s� �r inte enheten klar';
  SWEDISH_esExists = 'finns redan !';
  SWEDISH_esInvalidDirName = 'Fel - Ogiltigt Katalog Namn';
  SWEDISH_esConfirmRename = 'Vill du byta namn p� den valda katalogen';
  SWEDISH_esCannotAddDrv = 'Kan inte l�gga till enheter';
  SWEDISH_esNewFolder = 'Ny Katalog';
  SWEDISH_esInvalidChars = 'Katalognamnet inneh�ller ogiltiga tecken';
  SWEDISH_esNotFound = 'hittar inte';
  SWEDISH_esFilesIn = 'Filer i ';
  SWEDISH_esFileOpFailed = 'Fil�tg�rd avbr�ts';
  SWEDISH_esReadOnly = 'File �r Skrivskyddad';
  SWEDISH_esNoFileSelected = 'Inga Fil(er) valda';
  SWEDISH_esSendToFolder = 'Skicka till valfri katalog';
  SWEDISH_esSendToPath = 'ANge s�kv�gen f�r Skicka Till';
  SWEDISH_esPersistSaveError = 'Fel - Best�endeFile.Spara kunde inte utf�ras';
  SWEDISH_esSetAttr = 'S�tt Attribut';
  SWEDISH_esTreeSize = 'TR�D STORLEK';
  SWEDISH_esAllSubDir = 'och alla underkataloger ';
  //>882
//------------------------------------------
//               Turkish
//------------------------------------------
  //886<
  //LsFileListview28 Column Caption
  TURKISH_ColIdName   = '�sim';
  TURKISH_ColIdSize   = 'Boyut';
  TURKISH_ColIdType   = 'Tip';
  TURKISH_ColIdDate   = 'De�i�mi�';
  TURKISH_ColIdAttr   = 'Attr';
  TURKISH_ColIdHdSize = 'Disk Boyutu';
  TURKISH_ColIdFSpace = 'Bo� Alan';
  //Drive Type
  TURKISH_DrvTypeStr0 = 'Bilinmeyen';
  TURKISH_DrvTypeStr1 = 'Yok';
  TURKISH_DrvTypeStr2 = '��kart�labilir Disk';
  TURKISH_DrvTypeStr3 = 'Sabit Disk';
  TURKISH_DrvTypeStr4 = 'Network Disk';
  TURKISH_DrvTypeStr5 = 'CD-ROM Disk';
  TURKISH_DrvTypeStr6 = 'RAM Disk';
  //LsFileListview28Popup MenuItem Caption
  TURKISH_LvItemID_0  = '&A�';
  TURKISH_LvItemID_1  = '&Bak';
  TURKISH_LvItemID_3  = '&G�nder';
  TURKISH_LvItemID_5  = 'K&es';
  TURKISH_LvItemID_6  = '&Kopyala';
  TURKISH_LvItemID_7  = '&Yap��t�r';
  TURKISH_LvItemID_9  = 'Ad &De�i�tir';
  TURKISH_LvItemID_10 = '&Sil';
  TURKISH_LvItemID_12 = '&�zellikler';
  TURKISH_LvItemID_14 = '&Yeni Dizin...';
  TURKISH_LvItemID_30 = 'Bir Dizine ...';
  TURKISH_LvItemID_31 = 'Not defteri i�eri�i';
  TURKISH_LvItemID_32 = 'Not defteri dosya ad�';
  TURKISH_LvItemID_33 = 'Masa�st�ne K�sayol';
  //LsDirTree21Popup MenuItem Caption
  TURKISH_TvItemID_0  = '&Yeni Dizin';
  TURKISH_TvItemID_1  = '&Dizin Ad�n� De�i�tir';
  TURKISH_TvItemID_2  = 'Dizin &Sil';
  TURKISH_TvItemID_4  = 'K&es';
  TURKISH_TvItemID_5  = '&Kopyala';
  TURKISH_TvItemID_6  = '&Yap��t�r';
  TURKISH_TvItemID_8  = 'Aga� &Boyutu';
  TURKISH_TvItemID_9  = 'Dizin &��eri�i';
  TURKISH_TvItemID_11 = '&A� S�r�c�s�ne Ba�lan ...';
  TURKISH_TvItemID_12 = 'A� S&�r�c�s� Ba�lant�s�n� Kes';
  TURKISH_TvItemID_14 = '&�zellikler';
  //Error words
  TURKISH_ewDrive = 'S�r�c� ';  //873
  TURKISH_ewFolder = 'Dizin "';  //873
  TURKISH_ewError = 'HATA - ';
  TURKISH_ewFile = ' Dosra ';
  TURKISH_ewFrom = 'From  : ';
  TURKISH_ewTo = 'To     : ';
  TURKISH_ewCancel = 'Vazge�';
  TURKISH_ewBrowse = 'Listele';
  TURKISH_ewReadOnly = 'Salt Okunur';
  TURKISH_ewArchive = 'Ar�iv';
  TURKISH_ewHidden = 'Gizli';
  TURKISH_ewSystem = 'Sistem';
  //Error strings
  TURKISH_esCannot = 'HATA - Yap�lamayan i�lem ';
  TURKISH_esSpecifyDir = 'L�tfen Dizin Belirtin';
  TURKISH_esInvalidDrvID = 'Ge�erli bir s�r�c� harfi de�il';
  TURKISH_esDrvNotReady = 'Disk veya s�r�c� haz�r de�il';
  TURKISH_esExists = 'Zaten Var !';
  TURKISH_esInvalidDirName = 'Hata - Yanl�� dizin ad�';
  TURKISH_esConfirmRename = 'Se�ili dizin ad�n� de�i�tirmek istiyormusunuz';
  TURKISH_esCannotAddDrv = 'S�r�c� eklenemedi';
  TURKISH_esNewFolder = 'Yeni dizin';
  TURKISH_esInvalidChars = 'Diizin ad� i�erisinde yanl�� harf(ler) var';
  TURKISH_esNotFound = 'Bulunamad�';
  TURKISH_esFilesIn = 'Dosyalar i�erisinde ';
  TURKISH_esFileOpFailed = 'Dosya i�lemi Hatal�';
  TURKISH_esReadOnly = 'Dosya Salt Okunur';
  TURKISH_esNoFileSelected = 'Dosya Se�ilmedi';
  TURKISH_esSendToFolder = 'Bir dizin g�nder';
  TURKISH_esSendToPath = 'L�tfen g�nderilecek dizin ad�n� girin';
  TURKISH_esPersistSaveError = 'Hata - PersistFile. Kaydetme yap�lamad�';
  TURKISH_esSetAttr = 'Dosya niteliklerini ayarla';
  TURKISH_esTreeSize = 'A�A� BOYUTU';
  TURKISH_esAllSubDir = 've b�t�n alt dizinler ';
  //>886


implementation

end.

