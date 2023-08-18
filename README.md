<img alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/title.png">

<img width="500" height="100" alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/MOTIVATION.png">
<p>
  Lung cancer has been identified for an estimated 9.6 million fatalities in 2018 according to estimates. Even though contemporary medical advancements have led to a large increase in cancer survival rates overall, lung cancer has seen less improvement than other types of cancer since the bulk of symptoms and diagnosed patients have more severe conditions.
</p>

<img width="500" height="100" alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/OBJECTIVE.png">
  <p>
    There is an increasing demand for cutting-edge, reliable strategies to enhance early identification and risk stratification of lung cancer in its early stages since it is challenging for a doctor or radiologist to detect cancer fast and properly due to the enormous quantity of CT images. The objective is to create predictive deep learning models capable of early, accurate lung cancer detection utilizing unprocessed CT scan images.
  </p>

<h2>THIS REPO IS USEFUL TO:</h2>

<H3>Machine learning enthusiasts and data scientists:</H3> The repository can be utilized as a learning tool for data scientists and machine learning experts. They can analyze the source code, understand the machine learning process, and apply similar methods in their own projects.

<H3>Professionals in Healthcare:</H3> Doctors and medical researchers, among others, can benefit from studying how predictive models might aid in the diagnosis and prognosis of cardiac disease. They might be curious about the approach's effectiveness and how it might alter patient care.

<H3>Students and Researchers:</H3> Students working on projects and conducting research in the fields of data science, machine learning, and medicine might benefit from the repository. It can be used as a guide to understanding how machine learning is applied in healthcare.

<h2>PROJECT APPLICATIONS:</h2>

<h3>Healthcare Organizations:</h3> Healthcare organizations who want to apply predictive models for the identification and prevention of heart disease can utilize the repository as a starting point. They could adapt the model to their specific requirements and datasets.

<h3>Health Insurance & Telemedications:</h3> Insurance companies may employ predictive models to analyze risk profiles and tailor insurance plans. Predictive models may be linked to telemedicine systems to provide virtual consultations with risk assessments. Aggregated data from prediction models may aid public health surveillance by providing information on illness prevalence and trends.

<h3>Medical Research:</h3> Machine learning can be used to analyze large medical datasets in order to discover new risk factors and linkages, increasing medical research and the development of new treatments.

<img width="500" height="100" alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/DATASET.png">
  <img width="454" alt="image" align="left" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/Picture%201.png">
  <img width="451" alt="image" align="right"src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/Picture%202.png">
<br><br><br><br>
<br><br><br><br>
<br><br><br><br>
<p>
  The dataset contains over a thousand low-dose CT images from high-risk patients in DICOM format. Due to a lack of computational power, The sample of the data is used to build and compare predictive models. Each image contains a series with multiple axial slices of the chest cavity. Each image has various 2D slices, varying based on the machine taking the scan and the patient. Data contain 3 chest cancer types: Adenocarcinoma, Large cell carcinoma, Squamous cell carcinoma, and 1 folder for the normal cell.
</p>

<img width="600" height="100" alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/preProcessing.png">
<p>
  The images in the data file are in the format (512, 512, z). ‘z’ represents the number of slices in the CT scan and varies depending on the resolution of the medical image scanner. Due to computational resource constraints, such huge images cannot be directly fed into Convolution Network structures. To overcome this limitation, The areas that are most likely to get cancer are narrowed down. This process is done by segmenting the lungs first using image processing methods and then deleting low-intensity regions. The segmentation of lung structures is a difficult task due to the lack of uniformity in the lung region, differing densities in the pulmonary structures, and the use of diverse scanners and scanning procedures.
</p>

<img width="500" height="100" alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/how_to_run.png">

1. Git Clone the repo 'project-kiran15501'.
2. Required environment: RStudio with R 3.3.0 and above.

   R: https://cran.r-project.org/bin/
   
   RStudio: https://posit.co/download/rstudio-desktop/
4. Install the required libraries mentioned below: 

  ```code
      install.packages(shiny)
      install.packages(keras)
      install.packages(base64enc)
      install.packages(png)
      install.packages(caret)
      install.packages("jpeg")

```
4. Run the R-Markdown cell-by-cell (or) knit as pdf/html to see the different model performances
5. To run app.R, The run button in the r-studio menu can be used to launch the CNN model, which is deployed in the app.R file.
<br>
<img width="500" height="100" alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/models_used.png">
<h1>DNN</h1>
<img alt="image" width="600" height="400" align="right" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/dnn.png">
<p>
  A deep Neural Network is a type of artificial neural network that consists of multiple hidden layers between the input and output layers. Each layer is composed of nodes (also called neurons) that perform computations on the data. The deep neural network consists of an input layer, 3 hidden layers with L2 regularization and activation function ‘RELU’, and an output layer activation function ‘SoftMax’. The optimizer used is Adam’s optimizer.
</p>
<br><br><br><br>
<br><br><br><br>

<h1>CNN</h1>
<img alt="image" width="600" height="400" align="right" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/cnn.jpg">
<p>
  A convolutional Neural Network is a type of deep neural network specifically designed for processing and analyzing grid-like data, such as images, videos, and audio spectrograms. The CT scans were augmented before model fitting. The model architecture used to process the CT scans consists of 4 convolutional 2D layers, layer batch normalization with the activation function ‘RELU’ with the pooling size of (2, 2) is then flattened and fed into 1 hidden layer, and an output layer ‘SoftMax’.
</p>
<br><br><br><br>
<br><br><br><br>

<h1>RESNET50</h1>
<img width="1200" height="300" alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/resnet50.jpg">
<p>
  Residual Network-50 is a specific architecture of a convolutional neural network (CNN). The ResNet architecture addresses the challenge of training very deep neural networks by introducing the concept of residual blocks. The architecture of ResNet 50 consists of pre-built optimized weights obtained from the existing model. The CT scans are then flattened and fed into 2 hidden layers with early stopping regularization.
</p>


<img width="500" height="100" alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/results.png">

<img src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/final_results.jpg">

<p>The loss and accuracy graphs give us an overview of all three model’s performances. After evaluating the loss and accuracy of each model, The CNN model performed comparatively better than DNN and ResNet 50 models. Moreover, the CNN model shows no under-fitting or over-fitting. Even though, The ResNet 50 and the other models show lower accuracy, these models have the potential to perform better under higher computational power with the entire dataset as input.
</p>
<h1>PERFORMANCE METRICS</h1>
<img width="500" height="375" align="right" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/performance.jpg">
<br><br><br><br>
<p>The performance metrics of the better-performing model is mentioned above.</p>

<br><br><br><br>
<br><br><br><br>
<br><br><br><br>
<h1>FINAL OUTPUT</h1>
<img src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/result_page.png">
<p>When an un-processed lung CT scan is fed to the model, It shows the type and probability of cancer(If any).</p>

<img width="475" height="75" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/contributions.png">
<p>We encourage contributions to this repository. Feel free to send in a pull request if you have ideas for improved machine learning models, want to expand on data pre-processing, identify any data abnormalities, or want to improve any aspect of the project.</p>

<img width="475" height="75" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/credits.png">
<p>
  This project is in collaboration with Harish Sanmugam J (https://github.com/ACM40960/project-microbot30)

  for further queries, do mail us:
  
  1. Harish Sanmugam J [harishsanmugam2000@gmail.com] 22205543
  2. Kiran Subramanian S [kiransubramanian2001@gmail.com]  22204657
</p>

<img width="475" height="75" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/references.png">
<p>
  [1]. World Health Organisation‘s Official website https://www.who.int/news-room/factsheets/detail/cancer#:~:text=The%20most%20common%20causes%20of,Lung%20(1.76%20 million%20deaths)

.[2] Moradi P and Jamzad M 2019 Detecting Lung Cancer Lesions in CT Images using 3D Convolutional Neural Networks 4th Int. Conf. on Pattern Recognition and Image Analysis (IPRIA) pp. 114-118.

[3]. Alakwaa W, Nassef M and Badr A 2017 Lung cancer detection and classification with 3D convolutional neural network (3D-CNN) Lung Cancer 8(8):409.

[4]. Vani Rajasekar A, M.P. Vaishnnave Lung cancer disease prediction with CT scan and histopathological images feature analysis using deep learning techniques.

[5]. Eali Stephen Neal Joshua, Debnath Bhattacharyya, Midhun Chakkravarthy, and Yung-Cheol Byun-corresponding 2021 3D CNN with Visual Insights for Early Detection of Lung Cancer Using Gradient-Weighted Class Activation

</p>
