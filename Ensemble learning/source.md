# Model Performance Summary

| Model    | Score    | Description                                                    | Reference                                                                                 |
|----------|----------|----------------------------------------------------------------|-------------------------------------------------------------------------------------------|
| Model 1  | 0.79282  | Baseline model                                                 | [GitHub](https://github.com/fintech-quagga-group/american-express-default-prediction/tree/main) |
| Model 2  | 0.79466  | XGBoost (GPU, cuDF, Grid Search parameters)                    | [Kaggle: garysuen](https://www.kaggle.com/code/garysuen/xgboost-default-prediction-score-0-80322) |
| Model 3  | 0.79631  | LightGBM                                                       | [Kaggle: skloveyyp](https://www.kaggle.com/code/skloveyyp/lightgbm-for-amex)                   |
| Model 4  | 0.79520  | RAPIDS cuDF, feature engineering, XGBoost                      | [Kaggle: jiweiliu](https://www.kaggle.com/code/jiweiliu/rapids-cudf-feature-engineering-xgb)    |
| Model 5  | 0.79575  | Dartless XGBoost, ablation study                               | [Kaggle: mrandri19](https://www.kaggle.com/code/mrandri19/0-795-lb-sharing-my-ablations-dart-less-xgb/notebook) |
| Model 6  | 0.79493  | Stacking: XGBoost, LightGBM, Logistic Regression               | [Kaggle: sansmurk](https://www.kaggle.com/code/sansmurk/xgb-lgbm-stacking-model-with-lr)        |
| Model 7  | 0.79776  | XGBoost, pyramid on statement dates                            | [Kaggle: roberthatch](https://www.kaggle.com/code/roberthatch/pyramid-on-statement-dates-notebook) |
| Model 8  | 0.79967  | LightGBM Dart                                                  | [Kaggle: ragnar123](https://www.kaggle.com/code/ragnar123/amex-lgbm-dart-cv-0-7977)             |

---

## Datasets Used

- **Agg-data:**
  - [Kaggle: huseyincot](https://www.kaggle.com/datasets/huseyincot/amex-agg-data-pickle)
  - [Kaggle: ethansilvas](https://www.kaggle.com/code/ethansilvas/amex-impute-encode-agg-data)

- **Raddar’s Parquet Data:**
  - [Kaggle: raddar](https://www.kaggle.com/datasets/raddar/amex-data-integer-dtypes-parquet-format)

---

