package ${package}<#if moduleName??>.${moduleName}</#if>.service<#if subModuleName??>.${subModuleName}</#if>;

import ${package}.framework.common.page.PageResult;
import ${package}.framework.common.service.BaseService;
import ${package}<#if moduleName??>.${moduleName}</#if>.vo<#if subModuleName??>.${subModuleName}</#if>.${ClassName}VO;
import ${package}<#if moduleName??>.${moduleName}</#if>.query<#if subModuleName??>.${subModuleName}</#if>.${ClassName}Query;
import ${package}<#if moduleName??>.${moduleName}</#if>.entity<#if subModuleName??>.${subModuleName}</#if>.${ClassName}Entity;

import java.util.List;

/**
 * ${tableComment}
 * @author ${author} ${email}
 * @since ${version} ${date}
 */
public interface ${ClassName}Service extends BaseService<${ClassName}> {

    ResultDto<PageResultDto<${ClassName}Dto>> page(${ClassName}Query query);
    ResultDto<<${ClassName}Dto>> getById(Long id);
    ResultDto<String> save(${ClassName}Dto dto);
    ResultDto<String> update(${ClassName}Dto dto);
    ResultDto<String> delete(List<Long> idList);
}