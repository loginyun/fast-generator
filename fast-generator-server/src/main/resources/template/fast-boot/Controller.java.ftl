package ${package}<#if moduleName??>.${moduleName}</#if>.controller<#if subModuleName??>.${subModuleName}</#if>;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.AllArgsConstructor;
import ${package}.framework.common.page.PageResult;
import ${package}.framework.common.utils.Result;
import ${package}<#if moduleName??>.${moduleName}</#if>.convert<#if subModuleName??>.${subModuleName}</#if>.${ClassName}Convert;
import ${package}<#if moduleName??>.${moduleName}</#if>.entity<#if subModuleName??>.${subModuleName}</#if>.${ClassName}Entity;
import ${package}<#if moduleName??>.${moduleName}</#if>.service<#if subModuleName??>.${subModuleName}</#if>.${ClassName}Service;
import ${package}<#if moduleName??>.${moduleName}</#if>.query<#if subModuleName??>.${subModuleName}</#if>.${ClassName}Query;
import ${package}<#if moduleName??>.${moduleName}</#if>.vo<#if subModuleName??>.${subModuleName}</#if>.${ClassName}VO;
import org.springframework.security.access.prepost.PreAuthorize;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

/**
* ${tableComment}
* @author ${author} ${email}
* @since ${version} ${date}
*/
@RestController
@RequestMapping("${classname}")
@Api(value = "${tableComment}", tags = {"${tableComment}"})
public class ${ClassName}Controller {
   @DubboReference(version = "1.0.0", protocol = "dubbo", check = false)
    ${ClassName}Service ${className}Service;

    @GetMapping("page")
    @ApiOperation("分页")
    public ResultDto<PageResultDto<List<${ClassName}Dto>>> page(@Valid ${ClassName}Query query){
        return ${className}Service.page(query);
    }

    @GetMapping("{id}")
    @ApiOperation("信息")
    public ResultDto<${ClassName}Dto> getById(@PathVariable("id") Long id){
        return ${className}Service.getById(id);
    }

    @PostMapping("save")
    @ApiOperation("保存")
    public ResultDto<String> save(@RequestBody ${ClassName}Dto dto){
        return ${className}Service.save(dto);
    }

    @PutMapping("update")
    @ApiOperation("修改")
    public ResultDto<String> update(@RequestBody @Valid ${ClassName}Dto dto){
        return ${className}Service.update(dto);
    }

    @DeleteMapping("delete")
    @ApiOperation("删除")
    public ResultDto<String> delete(@RequestBody List<Long> ids){
        return ${className}Service.delete(ids);
    }
}