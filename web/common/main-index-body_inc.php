<?php
/*

    Main content body PHP script
    Chip Cuccio <chipster@norlug.org>
    $Id$

*/
?>
  <div id="main-body">

    <h2>News and Announcements:</h2>
    
    <?php include_once('common/news.php'); ?>

    <p><a class="topOfPage doNotPrint" href="#top" title="Go to the top of this page">^     TOP</a></p>

    <h2 id="about">About GSB: GNOME.SlackBuild</h2>

    <p>Building a <a href="http://www.gnome.org">GNOME</a>
    Distribution for the <a href=
    "http://www.slackware.com">Slackware Linux</a> Operating
    System.</p>

    <p>The goal of this project is to run one script:
    <b>GSB.SlackBuild</b> and have it output Slackware packages for
    a GNOME release.</p>

    <ul>
      <li>The current gsb release <a href=
      "http://sourceforge.net/project/showfiles.php?group_id=130126&amp;package_id=142651&amp;release_id=304324">
      0.0.2</a> , builds GNOME version 2.9.91.</li>

      <li>The Current version of Freerock's GNOME iso is
      0.0.2.1.</li>

      <li>If you use version 0.0.2 of the iso, please install the
      howl package as it will be necessary for it to work.</li>
      <li>Binary packages are available for the GNOME 2.9.91
      release.</li>
    </ul>

    <p><a class="topOfPage doNotPrint" href="#top" title="Go to the top of this page">^
    TOP</a></p>

    <h2 id="downloads">Downloads</h2>

    <p>Releases are aviable in the <a href=
    "http://sourceforge.net/project/showfiles.php?group_id=130126">Files
    Section</a> of the <a href=
    "http://sf.net/projects/gsb">Sourceforge Project Page</a>.
    There are individual packages and an iso available for
    download.</p>

    <ul>
      <li><a href=
      "http://sourceforge.net/project/showfiles.php?group_id=130126&amp;package_id=142651">
      GSB</a>: GNOME SlackBuild scripts used to build Freerock's
      Gnome packages.</li>

      <li><a href=
      "http://sourceforge.net/project/showfiles.php?group_id=130126&amp;package_id=143806">
      Freerock's Gnome</a>: GNOME packages for Slackware Linux</li>

      <li><a href=
      "https://sourceforge.net/project/showfiles.php?group_id=130126&amp;package_id=143903">
      FRG ISO</a>: iso file of Freerock's GNOME</li>
    </ul>

    <p><a class="topOfPage doNotPrint" href="#top" title="Go to the top of this page">^
    TOP</a></p>

    <h2 id="instrux">Installation Instructions</h2>

    <ol>
      <li>Download the iso and md5 sum file: <a href=
      "https://sourceforge.net/project/showfiles.php?group_id=130126&amp;package_id=143903">
      FRG ISO</a>, then check the iso;
      <blockquote>
        <p><code>$ md5sum -c file.iso.md5</code></p>
      </blockquote></li>

      <li>mount the iso;
      <blockquote>
        <p><code>$ mkdir /mnt/iso</code></p>
        <p><code>$ mount -t iso9660 file.iso /mnt/iso -o loop</code></p>
        <p><code>$ cd /mnt/iso</code></p>
      </blockquote></li>

      <li>Then run either;
      <blockquote>
        <p><code>$ ./min_install.sh</code></p>
      </blockquote>

      or

      <blockquote>
        <p><code>$ ./full_install.sh</code></p>
      </blockquote>

      or manually use;

      <blockquote>
        <p><code>$ upgradepkg --install-new</code></p>
      </blockquote></li>
    </ol>

    <p><a class="topOfPage doNotPrint" href="#top" title="Go to the top of this page">^
    TOP</a></p>

    <h2 id="roadmap">Roadmap</h2>

    <ul>
      <li>Gnome 2.9.90 (2.10.0 Beta 1)

        <ul>
          <li>Built on Slackware-10.0 and packaged</li>

          <li>available on my rsync server, email for details</li>
        </ul>
      </li>

      <li>Gnome 2.9.91 (2.10.0 Beta 2)

        <ul>
          <li>Built on Slackware 10.0</li>

          <li>Packages and iso available on sourceforge
          mirrors</li>

          <li>I will be upgrading to slackware 10.1, so if you want
          2.9.91 built on slackware 10.1, send me an email and I'll
          put it up on my rsync server</li>
        </ul>
      </li>

      <li>Gnome 2.9.92 (2.10.0 RC1)

        <ul>
          <li>Built on Slackware 10.1</li>

          <li>slapt-get compliance</li>

          <li>script to download source tarballs and auto update
          scripts</li>
        </ul>
      </li>
    </ul>

    <p><a class="topOfPage doNotPrint" href="#top" title="Go to the top of this page">^
    TOP</a></p>

    <h2 id="todo">TODO</h2>

    <p>In Order of Importance</p>

    <ol>
      <li>Write script to get source tarballs for each release and
      put them in appropriate directory and update respective
      SlackBuild's VERSION and BUILD variables (currently under
      way)</li>

      <li>Installer:

        <ul>
          <li>slapt-get compliance - currently under way</li>

          <li>If anyone wants to write a different installer, feel
          free</li>

          <li>Simple way to get packages from sourceforge mirrors,
          wget -r -np on the gsb dir doesn't seem to work</li>
        </ul>
      </li>

      <li>Scrollkeeper taking too long to update from doinst.sh
      scripts?</li>

      <li>implement gnome.perl.bindings.SlackBuild</li>

      <li>make SlackBuild for gnome-system-tools</li>

      <li>check if any of the packages need doinst.sh scripts for
      scrollkeeper updates</li>

      <li>add .desktop entries to packages that do not have
      them</li>

      <li>update some slackbuilds

        <ul>
          <li>NetworkManager - does not build with
          startup-notification-0.8, maybe try cvs build</li>

          <li>howl - need to add rc.howl script</li>

          <li>ximian connector - needs kerberos to build</li>
        </ul>
      </li>

      <li>check if anything is built into /usr/local and change it
      to /usr</li>

      <li>fix up slack-desc files, some of them have very sparse descriptions</li>
    </ol>

    <p><a class="topOfPage doNotPrint" href="#top" title="Go to the top of this page">^
    TOP</a></p>

    <h2 id="support">Support</h2>

    <p>Check irc channel first, if I don't respond send an email to
    me or to one of the mailing lists.</p>

    <ul>
      <li>freerock @ #slackbuild on irc.freenode.net</li>

      <li>
        <a href=
        "http://sourceforge.net/mail/?group_id=130126">Mailing
        Lists</a>

        <ul>
          <li>gcb-devel: Development Mailing Lists / Bug
          Reports</li>

          <li>gcb-users: User Discussion</li>
        </ul>
      </li>

      <li>email: freerock ! gmail.com</li>
    </ul>

    <p><a class="topOfPage doNotPrint" href="#top" title="Go to the top of this page">^
    TOP</a></p>

    <h2 id="help">Help the Project</h2>

    <ul>
      <li>MIRRORS, I'd rather not rely on sourceforge to do package
      releases, for the iso its fine. Its nice that they have a lot
      of mirrors to use, but the system they have is kind of annoying
      and I would like to organize package releases in their own
      directories, as they are on the iso. So if you can help with this,
      please speak up :)</li>

      <li>Fixing scripts, see TODO</li>

      <li>Testers, Testers, Guinea Pigs, Testers</li>

      <li>Anything missing? Want something added?</li>

      <li>Some Graphics maybe? splash screen, gdm screen ....</li>

      <li>Suggestions, advice, flames, money are all welcome
      :-)</li>
    </ul>

    <p><a class="topOfPage doNotPrint" href="#top" title="Go to the top of this page">^
    TOP</a></p>

    <h2 id="links">Links</h2>

    <ul>
      <li><a href="http://www.slackware.com">Slackware
      Linux</a></li>

      <li><a href="http://www.gnome.org">GNOME</a></li>

      <li><a href="http://software.jaos.org/">Slapt-get</a></li>

      <li><a href="http://www.mutagenix.org/">Mutagenix</a></li>

      <li><a href="http://www.gware.org">G-ware</a></li>

      <li><a href="http://www.dropline.net/gnome">Dropline
      GNOME</a></li>
    </ul>
  </div>

