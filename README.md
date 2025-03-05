# ML4000-GRP-16

SC4000-Project

Steps for Kaggle Dataset API

```
pip install kaggle
```

Copy the kaggle.json file in this directory
Paste it into

C:\Users\<Your-Username>\.kaggle\kaggle.json (windows)
~/.kaggle/kaggle.json (mac)

Ensure file has correct permissions (mac)
chmod 600 ~/.kaggle/kaggle.json

Run the kaggle comps download cell

```
kaggle competitions download -c amex-default-prediction
```

Unzip the file either in file explorer or through the unzip cell

DOUBLE CHECK YOUR DIRECTORY

Libraries needed
pip install numpy (make sure latest version) - pip install --upgrade numpy
pip install pandas
pip install matplotlib
pip install tensorflow
pip install scikit-learn

Reference Material for Models
