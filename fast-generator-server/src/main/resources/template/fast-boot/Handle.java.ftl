package ${package}<#if moduleName??>.${moduleName}</#if>.service<#if subModuleName??>.${subModuleName}</#if>.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import lombok.AllArgsConstructor;
import ${package}.framework.common.page.PageResult;
import ${package}.framework.common.service.impl.BaseServiceImpl;
import ${package}<#if moduleName??>.${moduleName}</#if>.convert<#if subModuleName??>.${subModuleName}</#if>.${ClassName}Convert;
import ${package}<#if moduleName??>.${moduleName}</#if>.entity<#if subModuleName??>.${subModuleName}</#if>.${ClassName}Entity;
import ${package}<#if moduleName??>.${moduleName}</#if>.query<#if subModuleName??>.${subModuleName}</#if>.${ClassName}Query;
import ${package}<#if moduleName??>.${moduleName}</#if>.vo<#if subModuleName??>.${subModuleName}</#if>.${ClassName}VO;
import ${package}<#if moduleName??>.${moduleName}</#if>.dao<#if subModuleName??>.${subModuleName}</#if>.${ClassName}Dao;
import ${package}<#if moduleName??>.${moduleName}</#if>.service<#if subModuleName??>.${subModuleName}</#if>.${ClassName}Service;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * ${tableComment}
 *
 * @author ${author} ${email}
 * @since ${version} ${date}
 */
@Slf4j
@Component
public class ${ClassName}Handle {

    @Resource
    ${ClassName}Mapper ${className}Mapper;

    @Override
    public ResultDto<PageResultDto<${ClassName}Dto>> page(${ClassName}Query query) {
        return ${className}Handle.page(query,manager);
    }

    private QueryWrapper<${ClassName}> getWrapper(${ClassName}Query query){
        QueryWrapper<${ClassName}> wrapper = new QueryWrapper<>();
        return wrapper;
    }

    @Override
    public ResultDto<String> save(${ClassName}Dto dto) {
        ${ClassName}Entity entity = ${ClassName}Convert.INSTANCE.convert(dto);
        return ${className}Handle.save(query,manager);
    }

    @Override
    public ResultDto<String> getById(${ClassName}Dto dto) {
        return ${className}Handle.getById(query,manager);
    }

    @Override
    public ResultDto<String> update(${ClassName}Dto dto) {
        ${ClassName}Entity entity = ${ClassName}Convert.INSTANCE.convert(dto);
       return ${className}Handle.save(query,manager);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public ResultDto<String> delete(List<Long> idList) {
        return ${className}Handle.delete(query,manager);
    }
}