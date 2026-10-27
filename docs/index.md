---
glightbox: false
title: Welcome
---

<!-- The homepage uses its own full-width layout while other pages retain the standard documentation theme. -->
<style>
	html {
		scroll-behavior: smooth;
	}

	@media (prefers-reduced-motion: reduce) {
		html {
			scroll-behavior: auto;
		}
	}
</style>
<main class="dt-home" id="top">
	<section class="dt-home__hero" aria-labelledby="dt-home-title">
		<div class="dt-home__intro">
			<p class="dt-home__eyebrow"></p>
			<h1 id="dt-home-title">Welcome to the connected place for Windows system administration.</h1>
			<p class="dt-home__subtitle">Imagine a free and open-source alternative to NTLite that focuses on compatibility, speed, reliability, and ease of use. This is the mission of DISMTools.</p>
			<section class="dt-home__release" aria-label="Latest stable release download" hidden>
				<a class="dt-home__release-link" id="dt-home-release-download">
					<svg class="dt-home__link-icon" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
						<path d="M12 3v12m-5-5 5 5 5-5M4 17v4h16v-4"></path>
					</svg>
					<span id="dt-home-release-download-label"></span>
				</a>
				<br/>
				<a class="dt-home__preview-link" id="dt-home-preview-release" target="_blank" rel="noopener noreferrer" hidden>
					<svg class="dt-home__link-icon" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
						<path d="M12 3v12m-5-5 5 5 5-5M4 17v4h16v-4"></path>
					</svg>
					<span id="dt-home-preview-release-label"></span>
				</a>
				<br/>
				<a class="dt-home__releases-link" href="https://github.com/CodingWonders/DISMTools/releases" target="_blank" rel="noopener noreferrer">
					<svg class="dt-home__link-icon" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
						<path d="M14 4h6v6m0-6-9 9"></path>
						<path d="M18 13v6a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h6"></path>
					</svg>
					<span>Check out all releases</span>
				</a>
			</section>
		</div>

    	<div class="dt-home__artwork">
    		<img src="res/homepage/DT_Plane_Infinity_Floorless_Compressed.png" alt="A DISMTools workspace with computers and servers" draggable="false">
    	</div>
    	<div class="dt-home__custom">
    		<div class="dt-home__custom-buttons">
    			<a class="dt-home__custom-button" href="./img_tasks/img_tasks.html" aria-label="Read about tasks you can perform with images. To look at other tools, select the Tools menu." data-tooltip="Read about tasks you can perform with images. To look at other tools, select the Tools menu.">
    				<img src="res/homepage/homepage_btn1.png" alt="Read the Help Documentation" draggable="false">
    			</a>
    			<a class="dt-home__custom-button dt-home__custom-button--hover-image" href="https://codingwonders.github.io/blog/category/discovery/" aria-label="Read the latest news of DISMTools &quot;Discovery&quot;." data-tooltip="Read the latest news of DISMTools &quot;Discovery&quot;.">
    				<img src="res/homepage/homepage_btn2.png" alt="Read the latest news of DISMTools &quot;Discovery&quot;." draggable="false">
    			</a>
    		</div>
    	</div>
    </section>

    <section class="dt-home__features" aria-labelledby="dt-home-features-title" hidden>
    	<div class="dt-home__features-intro">
    		<p class="dt-home__eyebrow">Explore DISMTools</p>
    		<h2 id="dt-home-features-title">DISMTools helps you during every stage of system administration</h2>
    		<p>Whether you are a professional system administrator, or someone who is just getting started, take advantage of everything DISMTools has to offer.</p>
    	</div>

    	<article class="dt-home__feature">
    		<div class="dt-home__feature-media">
    			<img src="res/getting_started/project_view.png" alt="A DISMTools project with image servicing tasks and project files" draggable="false">
    		</div>
    		<div class="dt-home__feature-copy">
    			<h3>Working with projects and all types of installations</h3>
    			<p>Organize your work in projects that keep mounted images, answer files, deployment tools, and scratch space together. Use the same familiar workflow to service a project, your running Windows installation, or an installation on another drive.</p>
    			<ul class="dt-home__feature-list">
    				<li>Project-based workspaces with portable deployment tools</li>
    				<li>Online and offline installation management</li>
    				<li>Rich support for WIM, ESD, SWM, VHD, ISO, and FFU files</li>
    				<li>Mount, apply, capture, export, split, merge, and convert images</li>
    				<li>Comprehensive mounted image management features with the Mounted Image Manager</li>
    				<li>Rich support for managing images and installations of Windows 7 and newer, including Server editions</li>
    			</ul>
    		</div>
    	</article>

    	<article class="dt-home__feature dt-home__feature--reverse">
    		<div class="dt-home__feature-media">
    			<img src="res/img_tasks/quick_actions.png" alt="DISMTools quick actions for image, package, feature, AppX, capability, and driver operations" draggable="false">
    		</div>
    		<div class="dt-home__feature-copy">
    			<h3>Integrated administration with tools in one place</h3>
    			<p>Go beyond core image servicing with a suite of utilities for inspecting and configuring Windows installations. Common actions and dedicated tools are available from the same application.</p>
    			<ul class="dt-home__feature-list">
    				<li>Service packages, features, drivers, capabilities, AppX apps, and provisioning packages</li>
    				<li>Manage editions, product keys, keyboard drivers, and uninstall settings</li>
    				<li>Configure services, offline registry hives, and environment variables</li>
    				<li>Inspect image, package, feature, driver, and app information</li>
    				<li>Save detailed image information reports</li>
    				<li>Create starter scripts and customize themes</li>
    			</ul>
    		</div>
    	</article>

    	<article class="dt-home__feature">
    		<div class="dt-home__feature-media">
    			<img src="res/img_tasks/online_inst_mgmt/online_inst_mgmt.png" alt="DISMTools managing the active Windows installation" draggable="false">
    		</div>
    		<div class="dt-home__feature-copy">
    			<h3>Compatibility and performance</h3>
    			<p>DISMTools combines the DISM API with the DISM command-line program to deliver responsive information retrieval while supporting a broad range of deployment tool versions. Keep using established DISM workflows as you move to a graphical interface.</p>
    			<ul class="dt-home__feature-list">
    				<li>Work with deployment tools from Windows 7 through current Windows releases</li>
    				<li>Quickly retrieve image and installation details</li>
    			</ul>
    		</div>
    	</article>

    	<article class="dt-home__feature dt-home__feature--reverse">
    		<div class="dt-home__feature-media">
    			<img src="res/img_tasks/unattend/unatt_creator/unatt_creator_express.png" alt="The DISMTools unattended answer file editor" draggable="false">
    		</div>
    		<div class="dt-home__feature-copy">
    			<h3>Rich support for unattended installations</h3>
    			<p>Prepare Windows installations with answer files that automate setup and post-install tasks. Create files with the guided creator, edit and organize them, then apply them to your image or use them during installation.</p>
    			<ul class="dt-home__feature-list">
    				<li>Create answer files with a guided workflow or editor</li>
    				<li>Manage and reuse answer files in projects</li>
    				<li>Apply answer files to images and installations</li>
    				<li>Configure accounts, networking, disks, and system settings</li>
    				<li>Automate post-install scripts and domain-join settings</li>
    			</ul>
    		</div>
    	</article>

    	<article class="dt-home__feature">
    		<div class="dt-home__feature-media">
    			<img src="res/img_tasks/tools/isocreator/isocreator.png" alt="The DISMTools ISO creation wizard for testing a Windows image" draggable="false">
    		</div>
    		<div class="dt-home__feature-copy">
    			<h3>Test Windows images with ISO creation tools</h3>
    			<p>Turn a serviced image into a bootable ISO and test it in a local or network deployment workflow. Customize the Windows PE environment and use an answer file to make testing faster.</p>
    			<ul class="dt-home__feature-list">
    				<li>Create bootable ISOs and customize Windows PE</li>
    				<li>Test installations locally or through network deployment</li>
    				<li>Include answer files and essential drivers</li>
    				<li>Use tools for driver installation and deployment preparation</li>
    				<li>Create and manage multiple ISO jobs, with multiple Windows images</li>
    			</ul>
    		</div>
    	</article>
    	<br>

    	<div class="dt-home__features-intro">
    		<p class="dt-home__eyebrow">Get started</p>
    		<h2 id="dt-home-get-started-title">Improve your system administration tasks today</h2>
    		<p>If you are already impressed by what you will be able to do, start by downloading DISMTools today and creating your first projects.</p>
    		<p>
				<svg class="dt-home__link-icon" viewBox="0 0 24 24" aria-hidden="true" focusable="false">
    				<path d="M12 3v12m-5-5 5 5 5-5M4 17v4h16v-4"></path>
    			</svg>
    			<a href="#top">Download today</a>
    		</p>
    	</div>
    </section>

</main>
