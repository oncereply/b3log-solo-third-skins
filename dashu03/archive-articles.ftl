<#include "macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${archiveDate.archiveDateMonth} ${archiveDate.archiveDateYear} (${archiveDate.archiveDatePublishedArticleCount}) - ${blogTitle}">
        <meta name="keywords" content="${metaKeywords},${archiveDate.archiveDateYear}${archiveDate.archiveDateMonth}"/>
        <meta name="description" content="<#list articles as article>${article.articleTitle}<#if article_has_next>,</#if></#list>"/>
        </@head>
    </head>
    <body>
        ${topBarReplacement}
        <#include "header.ftl">
        <div class="main">
            <div class="container"  style="margin-top: 100px;">
            	<div class="row">
        			<div class="span9">
		                <h2>${archive1Label}
		                    <#if "en" == localeString?substring(0, 2)>
		                    ${archiveDate.archiveDateMonth} ${archiveDate.archiveDateYear} (${archiveDate.archiveDatePublishedArticleCount})
		                    <#else>
		                    ${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel} (${archiveDate.archiveDatePublishedArticleCount})
		                    </#if>
		                </h2>
	                	<#include "article-list.ftl">
                	</div>
                	
                	<#include "usedside.ftl">
                	
                </div>
            </div>
        </div> 
        <#include "footer.ftl">
    </body>
</html>
