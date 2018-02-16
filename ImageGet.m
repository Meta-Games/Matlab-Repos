clc;
clear all;
close all;

vid = VideoReader('Bebop_20180212155846-0500.mp4');
numFrames = 0;
while hasFrame(vid)
    readFrame(vid);
    numFrames = numFrames + 1;
end
n = numFrames;

vid = VideoReader('Bebop_20180212155846-0500.mp4');
Folder = 'C:/Users/Kody/Documents';
for iFrame = 1:n
    frames = read(vid, iFrame);
    imwrite(frames, fullfile(Folder, sprintf('%06d.jpg', iFrame)));
end
FileList = dir(fullfile(Folder, '*.jpg'));
for iFile = 1:length(FileList)
    aFile = fullfile(Folder, FileList(iFile).name);
    img   = imread(aFile);
end