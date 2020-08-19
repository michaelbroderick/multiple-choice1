questions=readPreso(['.\Stimuli\SampleQuestions.txt'])';
words=readPreso(['.\Stimuli\SampleWords.txt'])';


questions{end+1}='';
words{end+1}='';
for i=1:length(questions)/25
    
    clear SCE PCL
    
    SCE=readPreso(['.\template.sce'])';
PCL=readPreso(['.\template.pcl'])';
    
           SCE{5}=['pcl_file = "Q' int2str(i) '.pcl"; '];
           SCE{52}=[char(9) char(9) 'caption = "Trial ' int2str(i) '";'];
           SCE{282}=['wavefile { filename = "Trial_' int2str(i) '.wav"; };'];
        answers=zeros(1,6);
        
   for j=1:6
       
       if questions{2+(i-1)*25+(j-1)*4+1}(end)=='x'
           PCL{5}(end+1:end+3)=['1 ,'];
           questions{2+(i-1)*25+(j-1)*4+1}(end-1:end)=[];
       else
           if questions{2+(i-1)*25+(j-1)*4+2}(end)=='x'
            PCL{5}(end+1:end+3)=['2 ,'];
            questions{2+(i-1)*25+(j-1)*4+2}(end-1:end)=[];
           else
               disp(['Error ' int2str(i) int2str(j)])
           end
       end
       
       if words{2+(i-1)*25+(j-1)*4+1}(end)=='x'
           PCL{6}(end+1:end+3)=['1 ,'];
           words{2+(i-1)*25+(j-1)*4+1}(end-1:end)=[];
       else
           if words{2+(i-1)*25+(j-1)*4+2}(end)=='x'
            PCL{6}(end+1:end+3)=['2 ,'];
            words{2+(i-1)*25+(j-1)*4+2}(end-1:end)=[];
           else
               disp(['Error ' int2str(i) int2str(j)])
           end
       end
      
      SCE{58+(j-1)*15+3}=[char(9) char(9) 'caption = "' questions{2+(i-1)*25+(j-1)*4} '";'];
      SCE{58+(j-1)*15+9}=[char(9) 'text { caption = "' questions{2+(i-1)*25+(j-1)*4+1} SCE{58+(j-1)*15+9}(20:end)];
      SCE{58+(j-1)*15+12}=[char(9) 'text { caption = "' questions{2+(i-1)*25+(j-1)*4+2} SCE{58+(j-1)*15+12}(20:end)];
      
      SCE{178+(j-1)*15+3}=[char(9) char(9) 'caption = "' words{2+(i-1)*25+(j-1)*4} '";'];


   end
   
          PCL{5}(end:end+1)='};';
          PCL{6}(end:end+1)='};';
          PCL{166}=['out.open(logfile.subject() + "_answers_run_" + string(' int2str(i) ') + ".txt");'];
          PCL{72}=['int  i= ' int2str(i) ';'];


fid=fopen(['.\Trial' int2str(i) '.sce'],'w');

for j=1:length(SCE)
fprintf(fid,'%s',SCE{j});
fprintf(fid,'%s',newline);
end
fclose(fid);

fid=fopen(['.\Trial' int2str(i) '.pcl'],'w');

for j=1:length(PCL)
fprintf(fid,'%s',PCL{j});
fprintf(fid,'%s',newline);
end
fclose(fid);


end