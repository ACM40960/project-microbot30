<img alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/title.png">

<img width="500" height="100" alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/MOTIVATION.png">
<p>
  Lung cancer has been identified for an estimated 9.6 million fatalities in 2018 according to estimates. Even though contemporary medical advancements have led to a large increase in cancer survival rates overall, lung cancer has seen less improvement than other types of cancer since the bulk of symptoms and diagnosed patients have more severe conditions.
</p>

<img width="500" height="100" alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/OBJECTIVE.png">
  <p>
    There is an increasing demand for cutting-edge, reliable strategies to enhance early identification and risk stratification of lung cancer in its early stages since it is challenging for a doctor or radiologist to detect cancer fast and properly due to the enormous quantity of CT images. The objective is to create predictive deep learning models capable of early, accurate lung cancer detection utilizing unprocessed CT scan images.
  </p>

<img width="500" height="100" alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/DATASET.png">
  <img width="454" alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/Picture%201.png">
  <img width="451" alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/Picture%202.png">
<p>
  The dataset contains over a thousand low-dose CT images from high-risk patients in DICOM format. Due to a lack of computational power, The sample of the data is used to build and compare predictive models. Each image contains a series with multiple axial slices of the chest cavity. Each image has various 2D slices, varying based on the machine taking the scan and the patient. Data contain 3 chest cancer types: Adenocarcinoma, Large cell carcinoma, Squamous cell carcinoma, and 1 folder for the normal cell.
</p>

<img width="600" height="100" alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/preProcessing.png">
<p>
  The images in the data file are in the format (512, 512, z). ‘z’ represents the number of slices in the CT scan and varies depending on the resolution of the medical image scanner. Due to computational resource constraints, such huge images cannot be directly fed into Convolution Network structures. To overcome this limitation, The areas that are most likely to get cancer are narrowed down. This process is done by segmenting the lungs first using image processing methods and then deleting low-intensity regions. The segmentation of lung structures is a difficult task due to the lack of uniformity in the lung region, differing densities in the pulmonary structures, and the use of diverse scanners and scanning procedures.
</p>


<img width="500" height="100" alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/models_used.png">
<h1>DNN</h1>
<img alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/dnn.png">
<p>
  A deep Neural Network is a type of artificial neural network that consists of multiple hidden layers between the input and output layers. Each layer is composed of nodes (also called neurons) that perform computations on the data. The deep neural network consists of an input layer, 3 hidden layers with L2 regularization and activation function ‘RELU’, and an output layer activation function ‘SoftMax’. The optimizer used is Adam’s optimizer.
</p>
<br>
<h1>CNN</h1>
<img alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/cnn.jpg">
<p>
  A convolutional Neural Network is a type of deep neural network specifically designed for processing and analyzing grid-like data, such as images, videos, and audio spectrograms. The CT scans were augmented before model fitting. The model architecture used to process the CT scans consists of 4 convolutional 2D layers, layer batch normalization with the activation function ‘RELU’ with the pooling size of (2, 2) is then flattened and fed into 1 hidden layer, and an output layer ‘SoftMax’.
</p>
<br>
<h1>RESNET50</h1>
<img width="1200" height="300" alt="image" src="https://github.com/ACM40960/project-microbot30/blob/main/readme_images/resnet50.jpg">
<p>
  Residual Network-50 is a specific architecture of a convolutional neural network (CNN). The ResNet architecture addresses the challenge of training very deep neural networks by introducing the concept of residual blocks. The architecture of ResNet 50 consists of pre-built optimized weights obtained from the existing model. The CT scans are then flattened and fed into 2 hidden layers with early stopping regularization.
</p>
