package ${package}<#if moduleName??>.${moduleName}</#if>.dao<#if subModuleName??>.${subModuleName}</#if>;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import ${package}<#if moduleName??>.${moduleName}</#if>.entity<#if subModuleName??>.${subModuleName}</#if>.${ClassName};
import org.apache.ibatis.annotations.Mapper;

/**
* ${tableComment}
*
* @author ${author} ${email}
* @since ${version} ${date}
*/
@Mapper
public interface ${ClassName}Mapper extends BaseMapper<${ClassName}> {
	
}