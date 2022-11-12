function data = importfile19(filename, dataLines)
%IMPORTFILE Import data from a text file
%  DATA = IMPORTFILE(FILENAME) reads data from text file FILENAME for
%  the default selection.  Returns the data as a table.
%
%  DATA = IMPORTFILE(FILE, DATALINES) reads data for the specified row
%  interval(s) of text file FILENAME. Specify DATALINES as a positive
%  scalar integer or a N-by-2 array of positive scalar integers for
%  dis-contiguous row intervals.
%
%  Example:
%  data = importfile("C:\Users\pepik\Desktop\PJIN\data.txt", [1, Inf]);
%
%  See also READTABLE.
%
% Auto-generated by MATLAB on 01-Oct-2022 21:53:03

%% Input handling

% If dataLines is not specified, define defaults
if nargin < 2
    dataLines = [1, Inf];
end

%% Set up the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 441);

% Specify range and delimiter
opts.DataLines = dataLines;
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["Var1", "Var2", "Var3", "Var4", "Var5", "Var6", "Var7", "Var8", "Var9", "Var10", "Var11", "Var12", "Var13", "Var14", "Var15", "Var16", "Var17", "Var18", "Var19", "Var20", "Var21", "Var22", "Var23", "Var24", "Var25", "Var26", "Var27", "Var28", "Var29", "Var30", "Var31", "Var32", "Var33", "Var34", "Var35", "Var36", "Var37", "Var38", "Var39", "Var40", "Var41", "Var42", "Var43", "Var44", "Var45", "Var46", "Var47", "Var48", "Var49", "Var50", "Var51", "Var52", "Var53", "Var54", "Var55", "Var56", "Var57", "Var58", "Var59", "Var60", "Var61", "Var62", "Var63", "Var64", "Var65", "Var66", "Var67", "Var68", "Var69", "Var70", "Var71", "Var72", "Var73", "Var74", "Var75", "Var76", "Var77", "Var78", "Var79", "Var80", "Var81", "Var82", "Var83", "Var84", "Var85", "Var86", "Var87", "Var88", "Var89", "Var90", "Var91", "Var92", "Var93", "Var94", "Var95", "Var96", "Var97", "Var98", "Var99", "Var100", "Var101", "Var102", "Var103", "Var104", "Var105", "Var106", "Var107", "Var108", "Var109", "Var110", "Var111", "Var112", "Var113", "Var114", "Var115", "Var116", "Var117", "Var118", "Var119", "Var120", "Var121", "Var122", "Var123", "Var124", "Var125", "Var126", "Var127", "Var128", "Var129", "Var130", "Var131", "Var132", "Var133", "Var134", "Var135", "Var136", "Var137", "Var138", "Var139", "Var140", "Var141", "Var142", "Var143", "Var144", "Var145", "Var146", "Var147", "Var148", "Var149", "Var150", "Var151", "Var152", "Var153", "Var154", "Var155", "Var156", "Var157", "Var158", "Var159", "Var160", "Var161", "Var162", "Var163", "Var164", "Var165", "Var166", "Var167", "Var168", "Var169", "Var170", "Var171", "Var172", "Var173", "Var174", "Var175", "Var176", "Var177", "Var178", "Var179", "Var180", "Var181", "Var182", "Var183", "Var184", "Var185", "Var186", "Var187", "Var188", "Var189", "Var190", "Var191", "Var192", "Var193", "Var194", "Var195", "Var196", "Var197", "Var198", "Var199", "Var200", "Var201", "Var202", "Var203", "Var204", "Var205", "Var206", "Var207", "Var208", "Var209", "Var210", "Var211", "Var212", "Var213", "Var214", "Var215", "Var216", "Var217", "Var218", "Var219", "Var220", "Var221", "Var222", "Var223", "Var224", "Var225", "Var226", "Var227", "Var228", "Var229", "Var230", "Var231", "Var232", "Var233", "Var234", "Var235", "Var236", "Var237", "Var238", "Var239", "Var240", "Var241", "Var242", "Var243", "Var244", "Var245", "Var246", "Var247", "Var248", "Var249", "Var250", "Var251", "Var252", "Var253", "Var254", "Var255", "Var256", "Var257", "Var258", "Var259", "Var260", "Var261", "Var262", "Var263", "Var264", "Var265", "Var266", "Var267", "Var268", "Var269", "Var270", "Var271", "Var272", "Var273", "Var274", "Var275", "Var276", "Var277", "Var278", "Var279", "Var280", "Var281", "Var282", "Var283", "Var284", "Var285", "Var286", "Var287", "Var288", "Var289", "Var290", "Var291", "Var292", "Var293", "Var294", "Var295", "Var296", "Var297", "Var298", "Var299", "Var300", "Var301", "Var302", "Var303", "Var304", "Var305", "Var306", "Var307", "Var308", "Var309", "Var310", "Var311", "Var312", "Var313", "Var314", "Var315", "Var316", "Var317", "Var318", "Var319", "Var320", "Var321", "Var322", "Var323", "Var324", "Var325", "Var326", "Var327", "Var328", "Var329", "Var330", "Var331", "Var332", "Var333", "Var334", "Var335", "Var336", "Var337", "Var338", "Var339", "Var340", "Var341", "Var342", "Var343", "Var344", "Var345", "Var346", "Var347", "Var348", "Var349", "Var350", "Var351", "Var352", "Var353", "Var354", "Var355", "Var356", "Var357", "Var358", "Var359", "Var360", "Var361", "Var362", "Var363", "Var364", "Var365", "Var366", "Var367", "Var368", "Var369", "Var370", "Var371", "Var372", "Var373", "Var374", "Var375", "Var376", "Var377", "Var378", "VarName379", "VarName380", "VarName381", "VarName382", "VarName383", "VarName384", "VarName385", "VarName386", "VarName387", "VarName388", "VarName389", "VarName390", "VarName391", "VarName392", "VarName393", "VarName394", "VarName395", "VarName396", "VarName397", "VarName398", "VarName399", "Var400", "Var401", "Var402", "Var403", "Var404", "Var405", "Var406", "Var407", "Var408", "Var409", "Var410", "Var411", "Var412", "Var413", "Var414", "Var415", "Var416", "Var417", "Var418", "Var419", "Var420", "Var421", "Var422", "Var423", "Var424", "Var425", "Var426", "Var427", "Var428", "Var429", "Var430", "Var431", "Var432", "Var433", "Var434", "Var435", "Var436", "Var437", "Var438", "Var439", "Var440", "Var441"];
opts.SelectedVariableNames = ["VarName379", "VarName380", "VarName381", "VarName382", "VarName383", "VarName384", "VarName385", "VarName386", "VarName387", "VarName388", "VarName389", "VarName390", "VarName391", "VarName392", "VarName393", "VarName394", "VarName395", "VarName396", "VarName397", "VarName398", "VarName399"];
opts.VariableTypes = ["string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, ["Var1", "Var2", "Var3", "Var4", "Var5", "Var6", "Var7", "Var8", "Var9", "Var10", "Var11", "Var12", "Var13", "Var14", "Var15", "Var16", "Var17", "Var18", "Var19", "Var20", "Var21", "Var22", "Var23", "Var24", "Var25", "Var26", "Var27", "Var28", "Var29", "Var30", "Var31", "Var32", "Var33", "Var34", "Var35", "Var36", "Var37", "Var38", "Var39", "Var40", "Var41", "Var42", "Var43", "Var44", "Var45", "Var46", "Var47", "Var48", "Var49", "Var50", "Var51", "Var52", "Var53", "Var54", "Var55", "Var56", "Var57", "Var58", "Var59", "Var60", "Var61", "Var62", "Var63", "Var64", "Var65", "Var66", "Var67", "Var68", "Var69", "Var70", "Var71", "Var72", "Var73", "Var74", "Var75", "Var76", "Var77", "Var78", "Var79", "Var80", "Var81", "Var82", "Var83", "Var84", "Var85", "Var86", "Var87", "Var88", "Var89", "Var90", "Var91", "Var92", "Var93", "Var94", "Var95", "Var96", "Var97", "Var98", "Var99", "Var100", "Var101", "Var102", "Var103", "Var104", "Var105", "Var106", "Var107", "Var108", "Var109", "Var110", "Var111", "Var112", "Var113", "Var114", "Var115", "Var116", "Var117", "Var118", "Var119", "Var120", "Var121", "Var122", "Var123", "Var124", "Var125", "Var126", "Var127", "Var128", "Var129", "Var130", "Var131", "Var132", "Var133", "Var134", "Var135", "Var136", "Var137", "Var138", "Var139", "Var140", "Var141", "Var142", "Var143", "Var144", "Var145", "Var146", "Var147", "Var148", "Var149", "Var150", "Var151", "Var152", "Var153", "Var154", "Var155", "Var156", "Var157", "Var158", "Var159", "Var160", "Var161", "Var162", "Var163", "Var164", "Var165", "Var166", "Var167", "Var168", "Var169", "Var170", "Var171", "Var172", "Var173", "Var174", "Var175", "Var176", "Var177", "Var178", "Var179", "Var180", "Var181", "Var182", "Var183", "Var184", "Var185", "Var186", "Var187", "Var188", "Var189", "Var190", "Var191", "Var192", "Var193", "Var194", "Var195", "Var196", "Var197", "Var198", "Var199", "Var200", "Var201", "Var202", "Var203", "Var204", "Var205", "Var206", "Var207", "Var208", "Var209", "Var210", "Var211", "Var212", "Var213", "Var214", "Var215", "Var216", "Var217", "Var218", "Var219", "Var220", "Var221", "Var222", "Var223", "Var224", "Var225", "Var226", "Var227", "Var228", "Var229", "Var230", "Var231", "Var232", "Var233", "Var234", "Var235", "Var236", "Var237", "Var238", "Var239", "Var240", "Var241", "Var242", "Var243", "Var244", "Var245", "Var246", "Var247", "Var248", "Var249", "Var250", "Var251", "Var252", "Var253", "Var254", "Var255", "Var256", "Var257", "Var258", "Var259", "Var260", "Var261", "Var262", "Var263", "Var264", "Var265", "Var266", "Var267", "Var268", "Var269", "Var270", "Var271", "Var272", "Var273", "Var274", "Var275", "Var276", "Var277", "Var278", "Var279", "Var280", "Var281", "Var282", "Var283", "Var284", "Var285", "Var286", "Var287", "Var288", "Var289", "Var290", "Var291", "Var292", "Var293", "Var294", "Var295", "Var296", "Var297", "Var298", "Var299", "Var300", "Var301", "Var302", "Var303", "Var304", "Var305", "Var306", "Var307", "Var308", "Var309", "Var310", "Var311", "Var312", "Var313", "Var314", "Var315", "Var316", "Var317", "Var318", "Var319", "Var320", "Var321", "Var322", "Var323", "Var324", "Var325", "Var326", "Var327", "Var328", "Var329", "Var330", "Var331", "Var332", "Var333", "Var334", "Var335", "Var336", "Var337", "Var338", "Var339", "Var340", "Var341", "Var342", "Var343", "Var344", "Var345", "Var346", "Var347", "Var348", "Var349", "Var350", "Var351", "Var352", "Var353", "Var354", "Var355", "Var356", "Var357", "Var358", "Var359", "Var360", "Var361", "Var362", "Var363", "Var364", "Var365", "Var366", "Var367", "Var368", "Var369", "Var370", "Var371", "Var372", "Var373", "Var374", "Var375", "Var376", "Var377", "Var378", "Var400", "Var401", "Var402", "Var403", "Var404", "Var405", "Var406", "Var407", "Var408", "Var409", "Var410", "Var411", "Var412", "Var413", "Var414", "Var415", "Var416", "Var417", "Var418", "Var419", "Var420", "Var421", "Var422", "Var423", "Var424", "Var425", "Var426", "Var427", "Var428", "Var429", "Var430", "Var431", "Var432", "Var433", "Var434", "Var435", "Var436", "Var437", "Var438", "Var439", "Var440", "Var441"], "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["Var1", "Var2", "Var3", "Var4", "Var5", "Var6", "Var7", "Var8", "Var9", "Var10", "Var11", "Var12", "Var13", "Var14", "Var15", "Var16", "Var17", "Var18", "Var19", "Var20", "Var21", "Var22", "Var23", "Var24", "Var25", "Var26", "Var27", "Var28", "Var29", "Var30", "Var31", "Var32", "Var33", "Var34", "Var35", "Var36", "Var37", "Var38", "Var39", "Var40", "Var41", "Var42", "Var43", "Var44", "Var45", "Var46", "Var47", "Var48", "Var49", "Var50", "Var51", "Var52", "Var53", "Var54", "Var55", "Var56", "Var57", "Var58", "Var59", "Var60", "Var61", "Var62", "Var63", "Var64", "Var65", "Var66", "Var67", "Var68", "Var69", "Var70", "Var71", "Var72", "Var73", "Var74", "Var75", "Var76", "Var77", "Var78", "Var79", "Var80", "Var81", "Var82", "Var83", "Var84", "Var85", "Var86", "Var87", "Var88", "Var89", "Var90", "Var91", "Var92", "Var93", "Var94", "Var95", "Var96", "Var97", "Var98", "Var99", "Var100", "Var101", "Var102", "Var103", "Var104", "Var105", "Var106", "Var107", "Var108", "Var109", "Var110", "Var111", "Var112", "Var113", "Var114", "Var115", "Var116", "Var117", "Var118", "Var119", "Var120", "Var121", "Var122", "Var123", "Var124", "Var125", "Var126", "Var127", "Var128", "Var129", "Var130", "Var131", "Var132", "Var133", "Var134", "Var135", "Var136", "Var137", "Var138", "Var139", "Var140", "Var141", "Var142", "Var143", "Var144", "Var145", "Var146", "Var147", "Var148", "Var149", "Var150", "Var151", "Var152", "Var153", "Var154", "Var155", "Var156", "Var157", "Var158", "Var159", "Var160", "Var161", "Var162", "Var163", "Var164", "Var165", "Var166", "Var167", "Var168", "Var169", "Var170", "Var171", "Var172", "Var173", "Var174", "Var175", "Var176", "Var177", "Var178", "Var179", "Var180", "Var181", "Var182", "Var183", "Var184", "Var185", "Var186", "Var187", "Var188", "Var189", "Var190", "Var191", "Var192", "Var193", "Var194", "Var195", "Var196", "Var197", "Var198", "Var199", "Var200", "Var201", "Var202", "Var203", "Var204", "Var205", "Var206", "Var207", "Var208", "Var209", "Var210", "Var211", "Var212", "Var213", "Var214", "Var215", "Var216", "Var217", "Var218", "Var219", "Var220", "Var221", "Var222", "Var223", "Var224", "Var225", "Var226", "Var227", "Var228", "Var229", "Var230", "Var231", "Var232", "Var233", "Var234", "Var235", "Var236", "Var237", "Var238", "Var239", "Var240", "Var241", "Var242", "Var243", "Var244", "Var245", "Var246", "Var247", "Var248", "Var249", "Var250", "Var251", "Var252", "Var253", "Var254", "Var255", "Var256", "Var257", "Var258", "Var259", "Var260", "Var261", "Var262", "Var263", "Var264", "Var265", "Var266", "Var267", "Var268", "Var269", "Var270", "Var271", "Var272", "Var273", "Var274", "Var275", "Var276", "Var277", "Var278", "Var279", "Var280", "Var281", "Var282", "Var283", "Var284", "Var285", "Var286", "Var287", "Var288", "Var289", "Var290", "Var291", "Var292", "Var293", "Var294", "Var295", "Var296", "Var297", "Var298", "Var299", "Var300", "Var301", "Var302", "Var303", "Var304", "Var305", "Var306", "Var307", "Var308", "Var309", "Var310", "Var311", "Var312", "Var313", "Var314", "Var315", "Var316", "Var317", "Var318", "Var319", "Var320", "Var321", "Var322", "Var323", "Var324", "Var325", "Var326", "Var327", "Var328", "Var329", "Var330", "Var331", "Var332", "Var333", "Var334", "Var335", "Var336", "Var337", "Var338", "Var339", "Var340", "Var341", "Var342", "Var343", "Var344", "Var345", "Var346", "Var347", "Var348", "Var349", "Var350", "Var351", "Var352", "Var353", "Var354", "Var355", "Var356", "Var357", "Var358", "Var359", "Var360", "Var361", "Var362", "Var363", "Var364", "Var365", "Var366", "Var367", "Var368", "Var369", "Var370", "Var371", "Var372", "Var373", "Var374", "Var375", "Var376", "Var377", "Var378", "Var400", "Var401", "Var402", "Var403", "Var404", "Var405", "Var406", "Var407", "Var408", "Var409", "Var410", "Var411", "Var412", "Var413", "Var414", "Var415", "Var416", "Var417", "Var418", "Var419", "Var420", "Var421", "Var422", "Var423", "Var424", "Var425", "Var426", "Var427", "Var428", "Var429", "Var430", "Var431", "Var432", "Var433", "Var434", "Var435", "Var436", "Var437", "Var438", "Var439", "Var440", "Var441"], "EmptyFieldRule", "auto");

% Import the data
data = readtable(filename, opts);

end