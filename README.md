# 공공 빅데이터 인턴십 실무형 프로젝트: 데이턴십 해커톤
## 개요: 배달노동자를 위한 서울시 ‘이동노동자 간이 쉼터’ 최적입지 선정
- 팀명: 65조
- 팀원: 김영욱💇‍♂️, 민경욱🙇‍♀️, 박해민🤴, 안동현👨‍💻, 하성민👩‍💼, 황다빈💁‍♀️, 황성아🤷‍♀️
- 기간: 2020.08.02 ~ 2021.08.19 17:00
- 분석도구: R, Python, QGIS
- 순위: ☆내 마음속의 1등☆

## 1. 진행한 분석
**[notebook 폴더](https://github.com/DonghyunAnn/Gbig-Hackertone/tree/main/notebook)에 개별적으로 정리했습니다.**
- 
- [황다빈](https://github.com/DonghyunAnn/Gbig-Hackathon/tree/master/notebook/%ED%99%A9%EB%8B%A4%EB%B9%88): [계층적군집분석(Hierarchical Clustering)](https://github.com/DonghyunAnn/Gbig-Hackathon/blob/master/notebook/%ED%99%A9%EB%8B%A4%EB%B9%88/%EA%B3%84%EC%B8%B5%EC%A0%81%EA%B5%B0%EC%A7%91%EB%B6%84%EC%84%9D_pcadata.ipynb), [K-Means Clustering](https://github.com/DonghyunAnn/Gbig-Hackathon/blob/master/notebook/%ED%99%A9%EB%8B%A4%EB%B9%88/K-Means_pcadata.ipynb)
- [하성민](https://github.com/DonghyunAnn/Gbig-Hackathon/tree/master/notebook/%ED%95%98%EC%84%B1%EB%AF%BC): [Gaussian Mixture Model(GMM)](https://github.com/DonghyunAnn/Gbig-Hackathon/blob/master/notebook/%ED%95%98%EC%84%B1%EB%AF%BC/GMM_3cluster.ipynb)
- [안동현](https://github.com/DonghyunAnn/Gbig-Hackertone/tree/main/notebook/%EC%95%88%EB%8F%99%ED%98%84): [LSCP](https://github.com/DonghyunAnn/Gbig-Hackertone/blob/main/notebook/%EC%95%88%EB%8F%99%ED%98%84/LSCP_MCLP_EMDdata.ipynb), [MCLP](https://github.com/DonghyunAnn/Gbig-Hackertone/blob/main/notebook/%EC%95%88%EB%8F%99%ED%98%84/MCLP_Roaddata.ipynb), [시계열분석](https://github.com/DonghyunAnn/Gbig-Hackertone/blob/main/notebook/%EC%95%88%EB%8F%99%ED%98%84/%EC%8B%9C%EA%B3%84%EC%97%B4%EB%B6%84%EC%84%9D_%EC%A0%84%EA%B5%AD.ipynb)
-
-
-

## 2. [프로젝트 요약](https://github.com/DonghyunAnn/Gbig-Hackertone/blob/main/Output/%EC%84%9C%EC%9A%B82_65%EC%A1%B0_%20%EC%B5%9C%EC%A2%85PPT.pdf)

**[분석 보고서](https://github.com/DonghyunAnn/Gbig-Hackertone/blob/main/Output/%EC%84%9C%EC%9A%B82_65%EC%A1%B0_%EB%B6%84%EC%84%9D%EA%B2%B0%EA%B3%BC%EB%B3%B4%EA%B3%A0%EC%84%9C.pdf)에 더 상세한 내용이 첨부돼 있습니다.**

**[data 폴더](https://github.com/DonghyunAnn/Gbig-Hackertone/tree/main/data)에 분석에 사용된 데이터가 정리돼 있습니다.** 

### (1) 분석개요
```
- 최근 온라인 음식 배달 시장과, 배달업 시장의 규모가 증가하고 있음
- 배달 노동자는 지속적으로 증가하지만 배달 대기시간에 이용할 쉼터는 부족
- 현존하는 이동노동자 쉼터는 접근성이 떨어짐
- 서울시 지자체에서 이동노동자 간이쉼터 증설 계획이 있고 이에 대하여 최적입지를 제안하고자 함
```
### (2) 분석 프로세스
```
- 인구특성, 경제 적합성, 교통 접근성, 위치 적합성 등 최적입지 선정을 위한 요인들에 관한 데이터를 수집함
- 칼럼추출 및 버퍼설정을 통한 데이터 병합 병합, 좌표변환 등 데이터 가공을 진행
```
### (3) 분석
```
- EDA 및 시계열 분석을 통해 현황과, 앞으로 배달 수요 증가 추세를 확인함
- 주성분 분석, 상관분석을 통해 사용할 변수 채택
- 군집분석(계층적, k-means, k-medoids, GMM)결과 보팅을 통해 행정구 선정
- 행정구 내 최적입지 선정을 위해 LSCP, MCLP 알고리즘 적용, 프로젝트의 방향성에 더 적합한 MCLP 모델을 최종 모델로 채택
- 선정된 입지를 QGIS로 시각화
- 로드뷰를 통해 실현가능성에 대한 점검 및 입지 좌표 튜닝
```

## 3. 기대효과 및 한계점
```
- 이동노동자 복지의 개선을 위한 실제적인 해결책
- 접근성이 낮았던 기존 쉼터의 단점 보완
- 표준화된 입지선정 알고리즘을 제시함으로서 서울시뿐만 아니라 전국적으로 적용가능

- 기술적 이용 간과: 실질적인 쉼터 수용 한계 인원과 같은 세부 사항을 고려하지 못함
- 데이터 품질 한계: 수집하여 사용한 공공데이터 내 오류가 존재했음
- 데이터 수집 한계: 더 다양한 데이터들을 입지선정 알고리즘 내부 계수에 반영한다면 현재보다 최적화된 결과를 얻을 수 있을 것으로 사료됨 
```

## 4. References
```
[1] Church, R., & ReVelle, C. (1974). The maximal covering location problem. In Papers of the regional science association, 32(1), 101-118.
[2] Eva Patel, Daharmender Singh Kushwaha (2020). Clustering Cloud Workloads: K-means vs Gaussian Mixture Model, 171, 158-167.
[3] Toregas, C., Swain, R., ReVelle, C., & Bergman, L. (1971). The location of emergency service facilities. Operations research, 19(6), 1363-1373.
[4] 권민철. (2020).파이썬 머신러닝 완벽 가이드.위키북스.
[5] 김우철. (2006).현대통계학, 영지문화사.
[6] 김재희. (2005). SAS를 이용한 다변량 통계 분석. 교우사.
[7] 이윤정, 이기용. (2004). 화자 식별을 위한 GMM의 혼합 성분의 개수 추정. 음성과학, 11(2), 237 - 245.
```
