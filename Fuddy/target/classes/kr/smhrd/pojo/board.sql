select * from t_qna;

select * from t_comment

select * from t_image

select * from t_image where u_id = "qo1515";


select * from t_image

select * from t_deep

select * from t_image where u_id = "qo1515" and p_name = "qo1515_2022-04-18_6" ORDER BY p_date desc

select * from t_prevention where u_id = "" and pv_crop is null or pv_diseaseis is null or pv_disease is null or p_num is null or pv_drug is null

drop table t_deep;

CREATE TABLE t_deep
(
    `deep_num`      INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '딥 순번', 
    `u_id`          VARCHAR(20)     NULL        COMMENT '회원 아이디', 
    `p_num`         INT UNSIGNED    NULL    COMMENT '사진 번호', 
    `deep_path`     TEXT            NOT NULL    COMMENT '딥 사진 경로', 
    `deep_name`     TEXT            NOT NULL    COMMENT '딥 사진 이름', 
    `deep_folder`   TEXT            NOT NULL    COMMENT '딥 사진 폴더', 
    `deep_result1`  VARCHAR(45)     NOT NULL    COMMENT '딥 분석 결과1', 
    `deep_result0`  VARCHAR(45)     NOT NULL    COMMENT '딥 분석 결과0', 
    `deep_date`     DATETIME        NOT NULL    COMMENT '딥 분석 일자', 
     PRIMARY KEY (deep_num)
);

ALTER TABLE t_deep COMMENT '딥러닝 분석 테이블';

ALTER TABLE t_deep
    ADD CONSTRAINT FK_t_deep_p_num_t_image_p_num FOREIGN KEY (p_num)
        REFERENCES t_image (p_num) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE t_deep
    ADD CONSTRAINT FK_t_deep_u_id_t_member_u_id FOREIGN KEY (u_id)
        REFERENCES t_member (u_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

select * from t_image where u_id = "qo1515" and p_folder = "qo1515_2022-04-20_18"
select * from t_image

insert into t_image (u_id, p_name, p_path, p_folder, p_date)
	value("qo1515", "123", "1", "1",now())

