# Deploy Solr on Ubuntu.

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fcatholicon%2Fazure-solr-template%2Fmaster%2Fazure-ubuntu-solr.json" target="_blank"><img src="http://azuredeploy.net/deploybutton.png"/></a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fcatholicon%2Fazure-solr-template%2Fmaster%2Fazure-ubuntu-solr.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

This template uses the Azure Linux CustomScript extension to deploy a Solr instance on Ubuntu. It creates an Ubuntu VM, does a silent install of MySQL, Apache and PHP, then creates a simple PHP script.  Go to /phpinfo.php to see the deployed page.
