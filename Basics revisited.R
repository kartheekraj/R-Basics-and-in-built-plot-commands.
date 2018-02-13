#R basics re visited
ls() #to see the values that are stored in R's memories.
rm() # remove an assigned value () has to be filled
1 # create sequence of numbers from 1 to 7 incrementing 1 at a time
seq(from=1, t=7 , by=1/3)#create sequence of numbers from 1 to 7 
                         #incrementing 1/3 at a time execute the code to check.
rep(1,times=10) #repeat 1 ten times
rep("marin", times= 5) #repeat the string "marin" 5 times
rep(seq(from=2, to=5, by=0.25), times=5)#repeat the sequence 5 times
#if two vectors are of the same length.
#we may add/subtract/multiply/divide
#corresponding elements
matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, byrow = TRUE) # arange the element in row of three
matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, byrow = FALSE)#arange the elements in column of three.
#-----------------------------------------
#Before you execute the code below please assign the above matrix as mat
#Example:
  mat=matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, byrow = TRUE)
# Now execute the following code:
mat[2,]#extract all the elements in row 2
mat[c(1,3),2]#extract 1st and 3rd elements from row 2
data1 = read.csv(file.choose(),header = TRUE)# allows to choose a .csv file to be imported with header in the first row
data2 = read.table(file.choose(),header = T, sep = ",") #Same operation as above.
data3 = read.delim(file.choose(), header = T)#for importing Tab delimited format files.
data4 = read.table(file.choose(),header = T,sep = '\t')# importing using the read.table format
# '$' is used to extract the specific set of data of an attribute.
Data2$Age #here we are trying to extract age from the data set.
attach(Data2) #to attach the imported data set to R's memory to call out easily 
# Example 
mean(Age) #since Data2 has been attached in R's memory its easy to call using meand(Age)
Class(vaiable)#shows the class if the vairable 
levels(vaiable)# shows the different levels (Gender:male, female) in a the variable
summary(Data2) #shows a summary of dataset.
X = as.factor #converting a data set into factor
mean(Age[Gender=="female"])  #mean is a command to find the 
MoreData = cbind(Data2, FemSmoke)# cbind command binds an already defined variable to the existing data set
rm(list = ls()) #Empty the environment and clear the workspace memory
AgeGroups = cut(Age, breaks = c(0,13,15,17,25), labels = c("<13","14/15","16/17","18+"))

#===========================================================================
barplot(count) # to form a barplot
barplot(percent,main = "Title",xlab = "Gender",ylab = "%") #adding title and lables to X,Y axis.
barplot(percent,main = "Title",xlab = "Gender",ylab = "%",las=1) #las=1 aranges the scale on the y axis
barplot(percent,main = "Title",xlab = "Gender",ylab = "%",las=1,names.arg = c("Female","Male"))# name the bars
barplot(percent,main = "Title",xlab = "Gender",ylab = "%",las=1,names.arg = c("Female","Male"),horiz = TRUE)# arrange the barplot in horizontal axis
#===========================================================================

#============================================================================================================
pie(count)# to create a simple pie chart
pie(count,main = "Title")#add title to pie chart
box()#create a box around pie chart
boxplot(LungCap, ylab="LungCapacity",main="Boxplot of LungCap",las=1)
boxplot(LungCap~Smoke, ylab="LungCapacity",main="Boxplot of LungCap",las=1)
boxplot(LungCap~Smoke, ylab="LungCapacity",main="Boxplot of LungCap vs Smoking",las=1)
boxplot(LungCap[Age>=1]~Smoke[Age>=18], ylab="LungCapacity",main="LungCap vs Smoke, for 18+",las=1)
boxplot(LungCap[Age>=18]~Smoke[Age>=18], ylab="LungCapacity",main="LungCap vs Smoke, for 18+",las=1)
boxplot(LungCap~Smoke*AgeGroups, ylab="LungCapacity",main="LungCap vs Smoke, by AgeGroup",las=1)
boxplot(LungCap~Smoke*AgeGroups, ylab="LungCapacity",main="LungCap vs Smoke, by AgeGroup",las=2)
boxplot(LungCap~Smoke*AgeGroups, ylab="LungCapacity",main="LungCap vs Smoke, by AgeGroup",las=2,col=c(4,2))
#===========================================================================================================

#===========================================================================================================
hist(LungCap) #TO CREATE A SIMPLE HISTOGRAM FOR THE FUNCTION
hist(LungCap, freq = FALSE) #TO ADDJUST THE FREQUENCY 
hist(LungCap, prob=T) #ADJUSTING THE DENSITY 
hist(LungCap, prob=T, ylim = c(0,0.2)) #SETTING LIMIT TO THE Y-AXIS
hist(LungCap, prob=T, ylim = c(0,0.2),breaks = 7)# NUMBER OF BARS IN HISTOGRAM
hist(LungCap, prob=T, ylim = c(0,0.2),breaks = c(0,2,4,6,8,10,12,14,16))# CREATING BARS AT THE FOLLOWING INTERVEL
hist(LungCap, prob=T, ylim = c(0,0.2),breaks = seq(from=0, to =16, by=2))# A SEQUENCE COMMAND TO CREATE HISTOGRAMS FROM 0 TO 16 IN INTERVELS OF 2
hist(LungCap, prob=T, ylim = c(0,0.2),breaks = seq(from=0, to =16, by=2), main = "Boxplot of Lung capacity",xlab = "Lung capacity")#LABLEING THE TITLE AND X AXIS
hist(LungCap, prob=T, ylim = c(0,0.2),breaks = seq(from=0, to =16, by=2), main = "Boxplot of Lung capacity",xlab = "Lung capacity",las=1)
lines(density(LungCap)) #CHANGING THE X AND Y ORIENTATION.
lines(density(LungCap),col=2,lw=3)# DRAWING A LINE AND COLORING
#===========================================================================================================


#===========================================================================================================
length(Smoke) # Number of observations available for a variable.
?par # plotting parameters
plot(Age,Height,main= "Scatterplot")# Generate a simple scatter plot with title "Scatterplot"
plot(Age,Height,main= "Scatterplot",cex=0.5)#Plot characteristic reduced in size.
plot(Age,Height,main= "Scatterplot",cex=0.5,cex.main=2)#Larger Title
plot(Age,Height,main= "Scatterplot",cex=0.5,cex.main=2,cex.lab=1.5)#large X and y lables
plot(Age,Height,main= "Scatterplot",cex=0.5,cex.main=2,cex.lab=1.5,cex.axis=0.7)# x and y numbers size change.
plot(Age,Height,main= "Scatterplot",font.main=3)# changing the font =3 is for italisized.
plot(Age,Height,main= "Scatterplot",font.main=4)#Bold italisized
plot(Age,Height,main= "Scatterplot",font.main=4,font.lab=2)#Change font for X and Y lables
plot(Age,Height,main= "Scatterplot",font.main=4,font.lab=2,font.axis=3)#Change the X and Y axis fonts.
plot(Age,Height,main= "Scatterplot",col=5)#change the collor of the plotting characters
plot(Age,Height,main= "Scatterplot",col=5,col.main=4,col.lab=2,col.axis=3)#change the color of the Title, Axis, Axis lables and the polted characters
plot(Age,Height,main= "Scatterplot",pch=2)#change ploting characters in this case 2 is for trainagles
plot(Age,Height,main= "Scatterplot",pch="w")#Plotting characters replaced with w
abline(lm(Height~Age))#Draw a regression line accross the plot
abline(lm(Height~Age),col=4,lty=2,lwd=6)#change the line color, width and type.
plot(Age[Gender=="male"],Height[Gender=="male"],col=4,pch="m",xlab="Age",ylab="Height",main="Height vs Age")#Plotting age and height of males by assigning them col and denoting them with m .
points(Age[Gender=="female"],Height[Gender=="female"],col=6,pch="f")#Include points in the plot as female (height and age) col and plotted as "f"

#============================================================================================
# CREATING MULTIPLE PLOTS
#============================================================================================
# Each time we crate a multiple plot we must execute the below command and then proceed further.
par(mfrow=c(1,2))#Divide the plotting area into 1 row 2 seperate colomuns.
plot(Age[Gender=="male"],Height[Gender=="male"],xlab="Age",ylab="Height",main="Height vs Age for males",xlim=c(0,20),ylim = c(45,85))
plot(Age[Gender=="female"],Height[Gender=="female"],xlab="Age",ylab="Height",main="Height vs Age fr Females",xlim=c(0,20),ylim = c(45,85))
#If we are moddifying any previous plot the "par" should be passed again.

par(mfrow=c(1,1))#Resetting the plot to 1 row 1 column
plot(Age, Height, main="TITLE",axes=F) #No boxes around the plot
axis(side=1,at =c(7,12.3,15), labels =c("sev","mean","15") )# Horizontal axis for side =1 and distance at which the following lables appear
axis(side=2, at = c(55,65,75), labels=c(55,65,75))# Axis on the side
box()#Create a box arround the plot
axis(side=4, at = c(50,60,70), labels = c(50,60,70))# create lables on the right side

#============================================================================================
# ADDING TEXTS TO PLOTS
#============================================================================================
#Before adding texts to plots we must first execute a plot
text(x=5, y=11)# locate the cordinates where you want to add the text on the plot
text(x=5, y=11, label = "r=0.82")#
text(x=5, y=11, label = "r=0.82",adj=0)#Text will start at X=5 and Y=11
text(x=5, y=11, label = "r=0.82",adj=1)#Text will end at X=5 and Y=11
text(x=3.5, y=13, label = "r=0.82",adj=0,cex=0.5, col=4)#The cex is the size of the text.
text(x=3.5, y=13, label = "r=0.82",adj=0,cex=1, col=4,font=4)#change of font.
abline(h=mean(LungCap),col=2)#Horizontal mean line.
abline(h=mean(LungCap),col=2,lwd=2)#increased line width.
text(x=2.5,y=8.5, adj=0, label="Mean lung Cap",cex=0.65,col=2)#Text over the produced line
mtext(text="r=0.82",side=1) #text below the plot
mtext(text="r=0.82",side=2)#text on the left side of the plot
mtext(text="r=0.82",side=1,adj=1)#bottom right
mtext(text="r=0.82",side=3,adj=1,col=4,cex=1.25,font=4)# place a text r =0.82 at the top right corner in blue with bold italisized font.

#============================================================================================
# ADDING LEGENDS
#============================================================================================
?legend
#Always use a plot to work upon the legends in the case execute the following plot
plot(Age[Smoke=="no"],LungCap[Smoke=="no"], main="LungCap vs Age for Smoke/Non-Smoke", col=4,xlab="Age",ylab="Lung Cap")
points(Age[Smoke=="yes"], LungCap[Smoke=="yes"],col=2)# Red points over the plotted graph
legend(x=3.5,y=10,legend = c("Non-Smoke","Smoke"),col=c(4,2),pch=c(16,17))# Plot a legend with box

plot(Age[Smoke=="no"],LungCap[Smoke=="no"], main="LungCap vs Age for Smoke/Non-Smoke", col=4,xlab="Age",ylab="Lung Cap",pch=16)
legend(x=3.5,y=15,legend = c("Non-Smoke","Smoke"),col=c(4,2),pch=c(16,17),bty="n")#Plot a legend without box.

lines(smooth.spline(Age[Smoke=="no"],LungCap[Smoke=="no"]),col=4,lwd=3)# Adding diagonal line
lines(smooth.spline(Age[Smoke=="yes"],LungCap[Smoke=="yes"]),col=2,lwd=3)#Adding a second smooth line.
#==========================================================================================================
# To arrange data in ascending order:
Variable_name = Existing_Dataframe[order(Existing_Dataframe$Column_name),]

