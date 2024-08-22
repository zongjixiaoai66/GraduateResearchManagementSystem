package com.entity.view;

import org.apache.tools.ant.util.DateUtils;
import com.annotation.ColumnInfo;
import com.entity.ExamrecordEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;
import com.utils.DateUtil;

/**
* 问卷调查记录表
* 后端返回视图实体辅助类
* （通常后端关联的表或者自定义的字段需要返回使用）
*/
@TableName("examrecord")
public class ExamrecordView extends ExamrecordEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	//当前表

	//级联表 问卷表
		/**
		* 问卷名称
		*/

		@ColumnInfo(comment="问卷名称",type="varchar(200)")
		private String exampaperName;
		/**
		* 时长(分钟)
		*/

		@ColumnInfo(comment="时长(分钟)",type="int(11)")
		private Integer exampaperDate;
		/**
		* 结束语
		*/

		@ColumnInfo(comment="结束语",type="varchar(255)")
		private String exampaperJieshuyu;
		/**
		* 问卷状态
		*/
		@ColumnInfo(comment="问卷状态",type="int(11)")
		private Integer exampaperTypes;
			/**
			* 问卷状态的值
			*/
			@ColumnInfo(comment="问卷状态的字典表值",type="varchar(200)")
			private String exampaperValue;
	//级联表 用户
		/**
		* 用户姓名
		*/

		@ColumnInfo(comment="用户姓名",type="varchar(200)")
		private String yonghuName;
		/**
		* 联系方式
		*/

		@ColumnInfo(comment="联系方式",type="varchar(200)")
		private String yonghuPhone;
		/**
		* 身份证号
		*/

		@ColumnInfo(comment="身份证号",type="varchar(200)")
		private String yonghuIdNumber;
		/**
		* 用户头像
		*/

		@ColumnInfo(comment="用户头像",type="varchar(200)")
		private String yonghuPhoto;
		/**
		* 电子邮箱
		*/

		@ColumnInfo(comment="电子邮箱",type="varchar(200)")
		private String yonghuEmail;
		/**
		* 余额
		*/
		@ColumnInfo(comment="余额",type="decimal(10,2)")
		private Double newMoney;



	public ExamrecordView() {

	}

	public ExamrecordView(ExamrecordEntity examrecordEntity) {
		try {
			BeanUtils.copyProperties(this, examrecordEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}





	//级联表的get和set 问卷表

		/**
		* 获取： 问卷名称
		*/
		public String getExampaperName() {
			return exampaperName;
		}
		/**
		* 设置： 问卷名称
		*/
		public void setExampaperName(String exampaperName) {
			this.exampaperName = exampaperName;
		}

		/**
		* 获取： 时长(分钟)
		*/
		public Integer getExampaperDate() {
			return exampaperDate;
		}
		/**
		* 设置： 时长(分钟)
		*/
		public void setExampaperDate(Integer exampaperDate) {
			this.exampaperDate = exampaperDate;
		}

		/**
		* 获取： 结束语
		*/
		public String getExampaperJieshuyu() {
			return exampaperJieshuyu;
		}
		/**
		* 设置： 结束语
		*/
		public void setExampaperJieshuyu(String exampaperJieshuyu) {
			this.exampaperJieshuyu = exampaperJieshuyu;
		}
		/**
		* 获取： 问卷状态
		*/
		public Integer getExampaperTypes() {
			return exampaperTypes;
		}
		/**
		* 设置： 问卷状态
		*/
		public void setExampaperTypes(Integer exampaperTypes) {
			this.exampaperTypes = exampaperTypes;
		}


			/**
			* 获取： 问卷状态的值
			*/
			public String getExampaperValue() {
				return exampaperValue;
			}
			/**
			* 设置： 问卷状态的值
			*/
			public void setExampaperValue(String exampaperValue) {
				this.exampaperValue = exampaperValue;
			}
	//级联表的get和set 用户

		/**
		* 获取： 用户姓名
		*/
		public String getYonghuName() {
			return yonghuName;
		}
		/**
		* 设置： 用户姓名
		*/
		public void setYonghuName(String yonghuName) {
			this.yonghuName = yonghuName;
		}

		/**
		* 获取： 联系方式
		*/
		public String getYonghuPhone() {
			return yonghuPhone;
		}
		/**
		* 设置： 联系方式
		*/
		public void setYonghuPhone(String yonghuPhone) {
			this.yonghuPhone = yonghuPhone;
		}

		/**
		* 获取： 身份证号
		*/
		public String getYonghuIdNumber() {
			return yonghuIdNumber;
		}
		/**
		* 设置： 身份证号
		*/
		public void setYonghuIdNumber(String yonghuIdNumber) {
			this.yonghuIdNumber = yonghuIdNumber;
		}

		/**
		* 获取： 用户头像
		*/
		public String getYonghuPhoto() {
			return yonghuPhoto;
		}
		/**
		* 设置： 用户头像
		*/
		public void setYonghuPhoto(String yonghuPhoto) {
			this.yonghuPhoto = yonghuPhoto;
		}

		/**
		* 获取： 电子邮箱
		*/
		public String getYonghuEmail() {
			return yonghuEmail;
		}
		/**
		* 设置： 电子邮箱
		*/
		public void setYonghuEmail(String yonghuEmail) {
			this.yonghuEmail = yonghuEmail;
		}

		/**
		* 获取： 余额
		*/
		public Double getNewMoney() {
			return newMoney;
		}
		/**
		* 设置： 余额
		*/
		public void setNewMoney(Double newMoney) {
			this.newMoney = newMoney;
		}


	@Override
	public String toString() {
		return "ExamrecordView{" +
			", yonghuName=" + yonghuName +
			", yonghuPhone=" + yonghuPhone +
			", yonghuIdNumber=" + yonghuIdNumber +
			", yonghuPhoto=" + yonghuPhoto +
			", yonghuEmail=" + yonghuEmail +
			", newMoney=" + newMoney +
			", exampaperName=" + exampaperName +
			", exampaperDate=" + exampaperDate +
			", exampaperJieshuyu=" + exampaperJieshuyu +
			"} " + super.toString();
	}
}
