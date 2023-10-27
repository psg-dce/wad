<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
<xsl:template match="student">
<html>
<h1>Student Information</h1>
<span>Roll no : </span>
<xsl:value-of select = "roll"/><br/>
<span>Name : </span>
<xsl:value-of select = "name"/><br/>
<span>Dept : </span>
<xsl:value-of select = "dept"/><br/>
</html>
</xsl:template>
</xsl:stylesheet>