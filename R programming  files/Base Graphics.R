data(cars)
As you can see in the help page, the cars data set has only two variables:
  | speed and stopping distance. Note that the data is from the 1920s.

Before plotting, it is always a good idea to get a sense of the data. Key R
| commands for doing so include, dim(), names(), head(), tail() and summary().

plot(cars)

Second, since we do not provide labels for either axis, R uses the names of the
| columns. Third, it creates axis tick marks at nice round numbers and labels
| them accordingly. Fourth, it uses the other defaults supplied in plot().

We will now spend some time exploring plot, but many of the topics covered here
| will apply to most other R graphics functions. Note that 'plot' is short for
| scatterplot.

For the next set of questions, include the argument names in your
| answers. That is, do not type plot(cars$speed, cars$dist), although that will
| work. Instead, use plot(x = cars$speed, y = cars$dist).

Use plot() command to show speed on the x-axis and dist on the y-axis from the
| cars data frame. Use the form of the plot command in which vectors are
| explicitly passed in as arguments for x and y.

plot(x = cars$speed, y = cars$dist)

Note that this produces a slightly different answer than plot(cars). In this
| case, R is not sure what you want to use as the labels on the axes, so it just
| uses the arguments which you pass in, data frame name and dollar signs
| included.

Note that there are other ways to call the plot command, i.e., using the
| "formula" interface. For example, we get a similar plot to the above with
| plot(dist ~ speed, cars). However, we will wait till later in the lesson before
| using the formula interface.

Use plot() command to show dist on the x-axis and speed on the y-axis from the
| cars data frame. This is the opposite of what we did above.

plot(x=cars$dist,y=cars$speed)

It probably makes more sense for speed to go on the x-axis since stopping
| distance is a function of speed more than the other way around. So, for the
| rest of the questions in this portion of the lesson, always assign the
| arguments accordingly.

In fact, you can assume that the answers to the next few questions are all of
| the form plot(x = cars$speed, y = cars$dist, ...) but with various arguments
| used in place of the ...

Recreate the plot with the label of the x-axis set to "Speed".

plot(x = cars$speed, y = cars$dist, xlab = "Speed")

Recreate the plot with the label of the y-axis set to "Stopping Distance"

plot(x = cars$speed, y = cars$dist, ylab = "Stopping Distance") 

plot(x = cars$speed, y = cars$dist, xlab="Speed",ylab = "Stopping Distance") 

The reason that plots(cars) worked at the beginning of the lesson was that R
| was smart enough to know that the first element (i.e., the first column) in
| cars should be assigned to the x argument and the second element to the y
| argument. To save on typing, the next set of answers will all be of the form,
| plot(cars, ...) with various arguments added.

For each question, we will only want one additional argument at a time. Of
| course, you can pass in more than one argument when doing a real project.

Plot cars with a main title of "My Plot". Note that the argument for the main
| title is "main" not "title".

plot(cars,main="My Plot")

Plot cars with a sub title of "My Plot Subtitle"

plot(cars, sub = "My Plot Subtitle")

The plot help page (?plot) only covers a small number of the many arguments
| that can be passed in to plot() and to other graphical functions. To begin to
| explore the many other options, look at ?par. Lets look at some of the more
| commonly used ones. Continue using plot(cars, ...) as the base answer to these
| questions.

Plot cars so that the plotted points are colored red. (Use col = 2 to achieve
| this effect.)

plot(cars,col=58)

Plot cars while limiting the x-axis to 10 through 15.  (Use xlim = c(10, 15) to
| achieve this effect.)

plot(cars,xlim=c(10,15))

Plot cars using triangles.  (Use pch = 2 to achieve this effect.)

plot(cars,pch=2)

Arguments like "col" and "pch" may not seem very intuitive. And that is because
| they arent! So, many/most people use more modern packages, like ggplot2, for
| creating their graphics in R.

boxplot(mpg ~ cyl ,data=mtcars)
mtcars

When looking at a single variable, histograms are a useful tool. hist() is the
| associated R function. Like plot(), hist() is best used by just passing in a
| single vector.


hist(mtcars$mpg)


