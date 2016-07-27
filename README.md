<h1> Local enviroment setup with a custom <a href="https://box.scotch.io/">box.scotch.io</a> vagrant box </h1>

<h2>Requirements:</h2>

<ul>
	<li><a href="https://www.virtualbox.org/wiki/Downloads">virtualbox</a></li>
	<li><a href="https://www.vagrantup.com/downloads.html">vagrant</a></li>
	<li>Access to repos</li>
</ul>

<h2>Steps:</h2>

<ol>
	<li>git clone git@github.com:ryttuo/nclocalenv.git</li>
	<li>cd nclocalenv</li>
	<li>./init-setup.sh</li>
	<li>vagrant ssh</li>
	<li>cd /var/www/tmi/NC4.0/</li>
	<li>php build/deploy.php (wait for npm dependecies then follow instructions choose  ALL applications [0]  and everything about development)</li>
	<li>cp /var/www/tmp/.htaccess frontend/www/ </li>
</ol>

<h2>Access:</h2>

<p>Then you can start working with your local enviroment on this url:</p>

<p>http://192.168.77.17</p>

<p>Remember add domain name to your /etc/hosts like this:</p>

<p>

192.168.77.17	local.naturallycurly.com<br>
192.168.77.17	local.backend.naturallycurly.com<br>
192.168.77.17	local.api.naturallycurly.com

</p>
