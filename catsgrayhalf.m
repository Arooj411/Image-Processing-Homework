inputDir = 'catsjpg/'; % this is the input directory
 outputDir = 'catshalfgray/';% after processing all the jpg images will be stored into png format in this directory
 
 JPG = dir([inputDir '*.jpg']); % it loads all the files into variable loadJPG
 
 for i=1:length(JPG)
    
    img = imread([inputDir JPG(i).name]); %image is loaded from the inputDir
    name = JPG(i).name; %copies the name of image into variable name
    fprintf('%d) loading %s \t', i, name);
    img(:,1:end/2,:)=repmat(rgb2gray(img(:,1:end/2,:)),1,1,3);
    imwrite(img, [outputDir name]);
    fprintf('%d) writing %s  \n', i, name);
    
 end