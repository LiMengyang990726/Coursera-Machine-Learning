## Week 11

### Highlights
1. Phone OCR Pineline (An inspiration on how to divide the work also)
- Text recognition
  - Can do a sliding window to a image patch
  - Do blend out the text area to a rectangle
- Character segmentation
  - Do a one-dimentional sliding window
- Character classification
2. Artificial Data Synthesis
- Before expanding training examples, should confirm have low-bias classifier
- Ask the question: how long does it take to get 10x the data?
  - Artificial Data Synthesis
  - manually label dataset
  - crowdsource (Amazon Mechanical Turk)

- Take characters in different fonts & put them into random background
- Take a existing image & do the artificial distortion to the image
2. Ceiling Analysis (give guidance on which part of the pipeline will improve the performance)
- Measure the accuracy on the overall
- Measure the accuracy on the overall system when the correct answer of certain (e.g. Text detection, from part 1 to the last part) is given by us
- Compare how much increased from the previous row to the next row, find the largest increased value, which is probably going to the most valuable component that you should be focus on and do improvement on

### Quiz: Photo OCR

1.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week11Quiz1-1.png)

**Explanation:**

> At scale 10*10, it requires ((1000-10)/2) * ((1000-10)/2) = 245025

> At scale 20*20, it requires ((1000-20)/2) * ((1000-20)/2) = 240100

> Thus, overall will be 245025 + 240100 = 485125

2.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week11Quiz1-2.png)

**Explanation:**

> Time required for each labeller = 10,000/(4*60) = 41.67 hours

> Cost = 41.67 * 10 = 416.7 dollars

3.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week11Quiz1-3.png)

4.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week11Quiz1-4-1.png)

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week11Quiz1-4-2.png)

**Explanation:**

> Some of the artificial Synthesis ways will result in a non-car image.

5.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week11Quiz1-5-1.png)

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week11Quiz1-5-2.png)
