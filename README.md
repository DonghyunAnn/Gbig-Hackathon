# 공공 빅데이터 인턴십 실무형 프로젝트: 데이턴십 해커톤
## 개요: 배달노동자를 위한 서울시 ‘이동노동자 간이 쉼터’ 최적입지 선정
- 팀명: 65조
- 팀원: 김영욱💇‍♂️, 민경욱🙇‍♀️, 박해민🤴, 안동현🤦‍♂, 하성민👩‍💼, 황다빈💁‍♀️, 황성아🤷‍♀️
- 기간: 2020.08.02 ~ 2021.08.19 17:00
- 분석도구: R, Python, QGIS

## 1. 진행한 분석
**[notebook 폴더](https://github.com/DonghyunAnn/Gbig-Hackertone/tree/main/notebook)에 개별적으로 정리했습니다.**
- [안동현](https://github.com/DonghyunAnn/Gbig-Hackertone/tree/main/notebook/%EC%95%88%EB%8F%99%ED%98%84): [LSCP](https://github.com/DonghyunAnn/Gbig-Hackertone/blob/main/notebook/%EC%95%88%EB%8F%99%ED%98%84/LSCP_MCLP_EMDdata.ipynb),[MCLP](https://github.com/DonghyunAnn/Gbig-Hackertone/blob/main/notebook/%EC%95%88%EB%8F%99%ED%98%84/MCLP_Roaddata.ipynb),[시계열분석](https://github.com/DonghyunAnn/Gbig-Hackertone/blob/main/notebook/%EC%95%88%EB%8F%99%ED%98%84/%EC%8B%9C%EA%B3%84%EC%97%B4%EB%B6%84%EC%84%9D_%EC%A0%84%EA%B5%AD.ipynb)
-
-
-
-
-
-

## 2. [프로젝트 요약](https://github.com/DonghyunAnn/Gbig-Hackertone/blob/main/Output/%EC%84%9C%EC%9A%B82_65%EC%A1%B0_%20%EC%B5%9C%EC%A2%85PPT.pdf)
**[분석 보고서](https://github.com/DonghyunAnn/Gbig-Hackertone/blob/main/Output/%EC%84%9C%EC%9A%B82_65%EC%A1%B0_%EB%B6%84%EC%84%9D%EA%B2%B0%EA%B3%BC%EB%B3%B4%EA%B3%A0%EC%84%9C.pdf)에 더 상세한 내용이 첨부돼 있음.**
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
- ** EDA 및 시계열 분석 **을 통해 현황과, 앞으로 배달 수요 증가 추세를 확인함
- ** 주성분 분석, 상관분석 **을 통해 사용할 변수 채택
- ** 군집분석(계층적, k-means, k-medoids, GMM)결과 보팅 **을 통해 행정구 선정
- 행정구 내 최적입지 선정을 위해 LSCP, MCLP 알고리즘 적용, 프로젝트의 방향성에 더 적합한 ** MCLP 모델을 최종 모델로 채택 **
- 선정된 입지를 QGIS로 시각화 
```
### 

## 3. 결론 및 개선방향
## 4. References
