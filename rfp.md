[RFP 작성 요청 사항]
1. 기능 요구사항 - SFR(System Function Requirement)
목표시스템이 반드시 수행하여야 하거나 목표시스템을 이용하여 사용자가 반드시 수행할 수 있어야하는 기능(동작)에 대하여 기술함
단, 개별 기능요구사항은 전체시스템의 계층적 구조 분석을 통해 단위 업무별 기능구조를 도출한 후, 이에 대한 세부기능별 상세 요구사항을 작성하는 것을 원칙으로 하며, 기능 수행을 위한 데이터 요구사항과 연계를 고려하여 기술함
   1.1 SFR-A. Application Architecture
     - SFR-A100 MSA : 임정현 
     - SFR-A200 Microfrontends : 임정현
     - SFR-A300 DB 솔루션 전환  방안 : 유지만 
     - SFR-A400 AICC GW 구성 방안 : 조주희
     - SFR-A500 통합 모니터링 & 통합 리포트 체계 구축 : 조주희 
   1.2 SFR-B. DevSecOps 도입
     - SFR-B100 IaC DevSecOps Pipeline : 김동현
     - SFR-B200 Application Pipeline : 서현철
     - SFR-B300 테스트 자동화 : 조주희
     - SFR-B400 배보 자동화 : 조주희 
   1.3 SFR-C. Outer Architecture 
     - SFR-C100 AWS 아키텍처 설계 요건 : 서길준 
     - SFR-C200 Istio &  EFS 설계 요건 : 유지만
     - SFR-C300 Monitoring 시스템 구축 요건 : 조주희 
   1.4 SFR-D. 시스템 통합 
     - SFR-D100 A'Cen 휴먼상담 & 가상상담 통합 : 조주희 
     - SFR-D200 Call Infra 통합 : 조주희
     - SFR-D300 이중화(A/A) 구성 & 녹취 관리 : 서길준 
     - SFR-D400 Customizing 기간 단축 기능 제공 : 조주희 
     - SFR-D500 KT와 협력사 간 서비스 운영 체계 개선 방안 조주희 

2. 시스템 장비구성 요구사항 - ECR(Equipment Composition Requirement)
목표사업수행을 위해 필요한 하드웨어, 소프트웨어, 네트워크 등의 도입 장비 내역 등 시스템 장비 구성에 대한 요구사항을 기술함
   2.1 ECR-A. 하드웨어
     - ECR-A 하드웨어 : 서길준
     - ECR-B 소프트웨어  : 유지만
     - ECR-C 네트워크  : 서길준

3. 성능 요구사항 - PER(Performance Requirement) : 조주희

4. 인터페이스 요구사항 - SIR(System Interface Requirement)
목표시스템과 외부를 연결하는 시스템 인터페이스와 사용자 인터페이스에 대한 요구사항을 기술한 것으로 타 소프트웨어, 하드웨어 및 통신 인터페이스, 타 시스템들과의 정보교환에 이용되는 프로토콜과의 연계도 포함하여 기술함
단, 인터페이스 요구사항의 경우 사용자 편의성, 사용자 경험 등의 사용자 중심의 요구사항을 기술함
   4.1 SIR A. VoiceBot Gateway 
     - SIR-A100 : VoiceBot Gateway Inferface : 이정수 
     - SIR-A200 : Message Gateway Interface : 이정수 
   4.2 SIR-B. AICC Interface
     - SIR-B100  : AICC Gateway : 임정현 
     - SIR-B200  : Channel Interface : 임정현
   4.3 SIR-C. Customer Interface
     - SIR-C100  : Customer Gateway : 임정현 
     - SIR-C200  : Customer Interface : 임정현

5. 데이터 요구사항 - DAR(Data Requirement)
목표 시스템의 서비스에 필요한 초기자료 구축 및 데이터 변환을 위한 대상, 방법, 보안이 필요한 데이터 등 데이터를 구축하기 위해 필요한 요구사항을 기술함
   5.1 DAR A. 데이터 전환 
     - DAR-A100 : 데이터 전환 대상 : 유지만 
     - DAR-A200 : 데이터 초기 자료 구축 : 유지만
     - DAR-A300 : 데이터 전환 방법 : 유지만 
   5.2 DAR B.  데이터 보안 
     - DAR-B100 : 개인정보 보호법에 따른 데이터 보안 : 유지만 
     - DAR-B200 : 데이터 접급제어 : 유지만 

6. 테스트 요구사항 - TER(Test Requirement)  : 조주희
7. 보안요구사항 - SER(Security Requirement)  : 조주희
8. 품질 요구사항 - QUR(Quality Requirement) : 조주희
9. 제약사항 - COR(Constraint Requirement) : 조주희
10. 프로젝트관리 요구사항 - PMR(Project Management Requirement) : 조주희
11. 프로젝트지원 요구사항 - PSR(Project Support Requirement) : 조주희
