package com.entity;

import com.annotation.ColumnInfo;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;
import java.io.Serializable;
import java.util.*;
import org.apache.tools.ant.util.DateUtils;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.utils.DateUtil;


/**
 * 问卷调查记录表
 *
 * @author 
 * @email
 */
@TableName("examrecord")
public class ExamrecordEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public ExamrecordEntity() {

	}

	public ExamrecordEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @ColumnInfo(comment="主键",type="int(20)")
    @TableField(value = "id")

    private Integer id;


    /**
     * 问卷调查编号
     */
    @ColumnInfo(comment="问卷调查编号",type="varchar(200)")
    @TableField(value = "examrecord_uuid_number")

    private String examrecordUuidNumber;


    /**
     * 问卷调查用户
     */
    @ColumnInfo(comment="问卷调查用户",type="int(20)")
    @TableField(value = "yonghu_id")

    private Integer yonghuId;


    /**
     * 所属问卷id（外键）
     */
    @ColumnInfo(comment="所属问卷id（外键）",type="int(20)")
    @TableField(value = "exampaper_id")

    private Integer exampaperId;


    /**
     * 问卷调查时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @ColumnInfo(comment="问卷调查时间",type="timestamp")
    @TableField(value = "insert_time",fill = FieldFill.INSERT)

    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @ColumnInfo(comment="创建时间",type="timestamp")
    @TableField(value = "create_time",fill = FieldFill.INSERT)

    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }
    /**
	 * 设置：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：问卷调查编号
	 */
    public String getExamrecordUuidNumber() {
        return examrecordUuidNumber;
    }
    /**
	 * 设置：问卷调查编号
	 */

    public void setExamrecordUuidNumber(String examrecordUuidNumber) {
        this.examrecordUuidNumber = examrecordUuidNumber;
    }
    /**
	 * 获取：问卷调查用户
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }
    /**
	 * 设置：问卷调查用户
	 */

    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 获取：所属问卷id（外键）
	 */
    public Integer getExampaperId() {
        return exampaperId;
    }
    /**
	 * 设置：所属问卷id（外键）
	 */

    public void setExampaperId(Integer exampaperId) {
        this.exampaperId = exampaperId;
    }
    /**
	 * 获取：问卷调查时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }
    /**
	 * 设置：问卷调查时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 获取：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }
    /**
	 * 设置：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Examrecord{" +
            ", id=" + id +
            ", examrecordUuidNumber=" + examrecordUuidNumber +
            ", yonghuId=" + yonghuId +
            ", exampaperId=" + exampaperId +
            ", insertTime=" + DateUtil.convertString(insertTime,"yyyy-MM-dd") +
            ", createTime=" + DateUtil.convertString(createTime,"yyyy-MM-dd") +
        "}";
    }
}
