



<!DOCTYPE html>
<html class="gl-light ui-neutral with-top-bar with-header with-system-footer" lang="en">
<head prefix="og: http://ogp.me/ns#">
<meta charset="utf-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="width=device-width, initial-scale=1" name="viewport">
<title>examples / Learning SQL · GitLab</title>
<script>
//<![CDATA[
window.gon={};gon.features={"asyncSidebarCounts":false,"inlineBlame":false,"removeMonitorMetrics":true,"explainCodeChat":false,"upgradePdfjs":false,"issueEmailParticipants":true,"editBranchRules":true,"pageSpecificStyles":false,"workItems":true,"workItemsBeta":false,"workItemsAlpha":false,"namespaceLevelWorkItems":false};
//]]>
</script>


<script>
//<![CDATA[
var gl = window.gl || {};
gl.startup_calls = {"/examples/9780596007270/-/refs/master/logs_tree/?format=json\u0026offset=0\u0026ref_type=heads":{},"/examples/9780596007270/-/blob/master/README.md?format=json\u0026viewer=rich":{}};
gl.startup_graphql_calls = null;

if (gl.startup_calls && window.fetch) {
  Object.keys(gl.startup_calls).forEach(apiCall => {
   gl.startup_calls[apiCall] = {
      fetchCall: fetch(apiCall, {
        // Emulate XHR for Rails AJAX request checks
        headers: {
          'X-Requested-With': 'XMLHttpRequest'
        },
        // fetch won’t send cookies in older browsers, unless you set the credentials init option.
        // We set to `same-origin` which is default value in modern browsers.
        // See https://github.com/whatwg/fetch/pull/585 for more information.
        credentials: 'same-origin'
      })
    };
  });
}
if (gl.startup_graphql_calls && window.fetch) {
  const headers = {"X-CSRF-Token":"hMmXTjVsWxBwYw9r6UZs6p_T8O1J4zjCCPYJbdTkceMrtI5eL3uL322ZtKmB1_IsLEFu6_hG-pY4ID_TtkdSTg","x-gitlab-feature-category":"groups_and_projects"};
  const url = `https://resources.oreilly.com/api/graphql`

  const opts = {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      ...headers,
    }
  };

  gl.startup_graphql_calls = gl.startup_graphql_calls.map(call => ({
    ...call,
    fetchCall: fetch(url, {
      ...opts,
      credentials: 'same-origin',
      body: JSON.stringify(call)
    })
  }))
}


//]]>
</script>

<link href="https://resources.oreilly.com/examples/9780596007270" rel="canonical">


<link rel="stylesheet" href="/assets/application-2e69a08e74e113997b5ba7fc5cd3e020a6f407d9ad552675adc6d78c2b23d0f7.css" />
<link rel="stylesheet" href="/assets/page_bundles/project-6cec78564d6cea3bff04ea869b064aeefbb329e17f03130eca4898aa36136a31.css" /><link rel="stylesheet" href="/assets/page_bundles/tree-1290ef28cdf5bf9a263be300651f92c985782ad16284daf5c07980e6117d6324.css" /><link rel="stylesheet" href="/assets/page_bundles/commit_description-1e2cba4dda3c7b30dd84924809020c569f1308dea51520fe1dd5d4ce31403195.css" /><link rel="stylesheet" href="/assets/page_bundles/projects-3ecc000073da836fc87d71a9d2bc48368b34718e3df8a1904ff6f9755a7692f7.css" /><link rel="stylesheet" href="/assets/page_bundles/work_items-cbc6a2e1633c4e847a617e35cc4833b85b80816db688d3d6dd3cd31d4251bc53.css" /><link rel="stylesheet" href="/assets/page_bundles/notes_shared-caf98f77b75b4b5399bdde69c069ee023fefdaa986d687c937e8010218785f51.css" />
<link rel="stylesheet" href="/assets/application_utilities-0bfb919a8a7eb0e89544dfe328e69461ccb276a565685fdb6ae3b14f3db3f41b.css" />
<link rel="stylesheet" href="/assets/tailwind-016e83140c37d97dbdff0cef9c063fcd43d214866665fb783774776747928853.css" />


<link rel="stylesheet" href="/assets/fonts-fae5d3f79948bd85f18b6513a025f863b19636e85b09a1492907eb4b1bb0557b.css" />
<link rel="stylesheet" href="/assets/highlight/themes/white-5ffbb706faebead681b01c8b52e92c6c0d35ad5b1c11d39012c90bcaf7892ca8.css" />


<link rel="preload" href="/assets/application_utilities-0bfb919a8a7eb0e89544dfe328e69461ccb276a565685fdb6ae3b14f3db3f41b.css" as="style" type="text/css">
<link rel="preload" href="/assets/application-2e69a08e74e113997b5ba7fc5cd3e020a6f407d9ad552675adc6d78c2b23d0f7.css" as="style" type="text/css">
<link rel="preload" href="/assets/highlight/themes/white-5ffbb706faebead681b01c8b52e92c6c0d35ad5b1c11d39012c90bcaf7892ca8.css" as="style" type="text/css">




<script src="/assets/webpack/runtime.10b44924.bundle.js" defer="defer"></script>
<script src="/assets/webpack/main.a4c9ae4f.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.admin.abuse_reports.show-pages.admin.topics.edit-pages.admin.topics.new-pages.dashboar-c8f1318b.54872cef.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.admin.abuse_reports.show-pages.dashboard.issues-pages.dashboard.milestones.show-pages.-13e11bbf.1a73330b.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.admin.abuse_reports.show-pages.dashboard.issues-pages.groups.boards-pages.groups.issue-8dfa5f96.20262e8b.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.admin.abuse_reports.show-pages.dashboard.issues-pages.groups.boards-pages.groups.issue-f804d6c2.d4f467df.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.groups.new-pages.import.gitlab_projects.new-pages.import.manifest.new-pages.projects.n-44c6c18e.800b02b5.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.search.show-super_sidebar.98a5daf8.chunk.js" defer="defer"></script>
<script src="/assets/webpack/super_sidebar.839aed14.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.projects-pages.projects.activity-pages.projects.alert_management.details-pages.project-2cf3f004.cf930f47.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.branches.new-pages.projects.commits.show-pages.proje-81161c0b.fadfe741.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.show-pages.projects.snippets.edit-pages.projects.sni-42df7d4c.e0fbcaff.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.show-pages.projects.snippets.show-pages.projects.tre-c684fcf6.1d8f2060.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.groups.details-pages.groups.show-pages.profiles.notifications.show-pages.projects.home-289c4da9.9f1d1637.chunk.js" defer="defer"></script>
<script src="/assets/webpack/98.b88733f9.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.projects.branches.index-pages.projects.show-pages.projects.tags.index-pages.projects.tree.show.8a2956f9.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.shared.web_ide_link-pages.projects.show-pages.projec-cf300cc3.fce4c6a3.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.forks.new-pages.projects.show-pages.projects.tree.show.3bcd6d44.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.show-pages.projects.tree.show.d9689130.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.groups.show-pages.projects.show-pages.projects.tree.show.619c5d25.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.groups.show-pages.projects.home_panel-pages.projects.show.3e705e2d.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.projects.show-pages.projects.tree.show.18616402.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.projects.home_panel-pages.projects.show.34d068fd.chunk.js" defer="defer"></script>
<script src="/assets/webpack/pages.projects.show.fd5fe12a.chunk.js" defer="defer"></script>

<meta content="object" property="og:type">
<meta content="GitLab" property="og:site_name">
<meta content="examples / Learning SQL · GitLab" property="og:title">
<meta content="O&#39;Reilly Resources" property="og:description">
<meta content="https://resources.oreilly.com/examples/9780596007270/-/avatar" property="og:image">
<meta content="64" property="og:image:width">
<meta content="64" property="og:image:height">
<meta content="https://resources.oreilly.com/examples/9780596007270" property="og:url">
<meta content="summary" property="twitter:card">
<meta content="examples / Learning SQL · GitLab" property="twitter:title">
<meta content="O&#39;Reilly Resources" property="twitter:description">
<meta content="https://resources.oreilly.com/examples/9780596007270/-/avatar" property="twitter:image">

<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="6G-tjdXVsBFyYCRDsjTyStcPqppon5DHF3GzY0pW-qNHErSdz8Jg3m-an4HapWyMZJ00nNk6UpMnp4XdKPXZDg" />
<meta name="csp-nonce" />
<meta name="action-cable-url" content="/-/cable" />
<link href="/-/manifest.json" rel="manifest">
<link rel="icon" type="image/png" href="/assets/favicon-72a2cad5025aa931d6ea56c3201d1f18e68a8cd39788c7c80d5b2b82aa5143ef.png" id="favicon" data-original-href="/assets/favicon-72a2cad5025aa931d6ea56c3201d1f18e68a8cd39788c7c80d5b2b82aa5143ef.png" />
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/apple-touch-icon-b049d4bc0dd9626f31db825d61880737befc7835982586d015bded10b4435460.png" />
<link href="/search/opensearch.xml" rel="search" title="Search GitLab" type="application/opensearchdescription+xml">
<link rel="alternate" type="application/atom+xml" title="Learning SQL activity" href="/examples/9780596007270.atom" />




<meta content="O&#39;Reilly Resources" name="description">
<meta content="#ececef" name="theme-color">
</head>

<body class="tab-width-8 gl-browser-generic gl-platform-other" data-find-file="/examples/9780596007270/-/find_file/master?ref_type=heads" data-group="examples" data-group-full-path="examples" data-namespace-id="3" data-page="projects:show" data-page-type-id="9780596007270" data-project="9780596007270" data-project-full-path="examples/9780596007270" data-project-id="7016">

<script>
//<![CDATA[
gl = window.gl || {};
gl.client = {"isGeneric":true,"isOther":true};


//]]>
</script>


<header class="header-logged-out" data-testid="navbar">
<a class="gl-sr-only gl-accessibility" href="#content-body">Skip to content</a>
<div class="container-fluid">
<nav aria-label="Explore GitLab" class="header-logged-out-nav gl-flex gl-gap-3 gl-justify-between">
<div class="gl-flex gl-items-center gl-gap-1">
<span class="gl-sr-only">GitLab</span>
<a title="Homepage" id="logo" class="header-logged-out-logo has-tooltip" aria-label="Homepage" href="/"><img class="brand-header-logo lazy" alt="" data-src="/uploads/-/system/appearance/header_logo/1/OReilly_logo_rgb.svg" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" />
</a></div>
<ul class="gl-list-none gl-p-0 gl-m-0 gl-flex gl-gap-3 gl-items-center gl-grow">
<li class="header-logged-out-nav-item">
<a class="" href="/explore">Explore</a>
</li>
</ul>
<ul class="gl-list-none gl-p-0 gl-m-0 gl-flex gl-gap-3 gl-items-center gl-justify-end">
<li class="header-logged-out-nav-item">
<a href="/users/sign_in?redirect_to_referer=yes">Sign in</a>
</li>
</ul>
</nav>
</div>
</header>

<div class="layout-page page-with-super-sidebar">
<aside class="js-super-sidebar super-sidebar super-sidebar-loading" data-command-palette="{&quot;project_files_url&quot;:&quot;/examples/9780596007270/-/files/master?format=json&quot;,&quot;project_blob_url&quot;:&quot;/examples/9780596007270/-/blob/master&quot;}" data-force-desktop-expanded-sidebar="" data-is-saas="false" data-root-path="/" data-sidebar="{&quot;is_logged_in&quot;:false,&quot;context_switcher_links&quot;:[{&quot;title&quot;:&quot;Explore&quot;,&quot;link&quot;:&quot;/explore&quot;,&quot;icon&quot;:&quot;compass&quot;}],&quot;current_menu_items&quot;:[{&quot;id&quot;:&quot;project_overview&quot;,&quot;title&quot;:&quot;Learning SQL&quot;,&quot;avatar&quot;:&quot;https://resources.oreilly.com/examples/9780596007270/-/avatar&quot;,&quot;entity_id&quot;:7016,&quot;link&quot;:&quot;/examples/9780596007270&quot;,&quot;link_classes&quot;:&quot;shortcuts-project&quot;,&quot;is_active&quot;:true},{&quot;id&quot;:&quot;manage_menu&quot;,&quot;title&quot;:&quot;Manage&quot;,&quot;icon&quot;:&quot;users&quot;,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;link&quot;:&quot;/examples/9780596007270/activity&quot;,&quot;is_active&quot;:false,&quot;items&quot;:[{&quot;id&quot;:&quot;activity&quot;,&quot;title&quot;:&quot;Activity&quot;,&quot;link&quot;:&quot;/examples/9780596007270/activity&quot;,&quot;link_classes&quot;:&quot;shortcuts-project-activity&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;members&quot;,&quot;title&quot;:&quot;Members&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/project_members&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;labels&quot;,&quot;title&quot;:&quot;Labels&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/labels&quot;,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;plan_menu&quot;,&quot;title&quot;:&quot;Plan&quot;,&quot;icon&quot;:&quot;planning&quot;,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/issues&quot;,&quot;is_active&quot;:false,&quot;items&quot;:[{&quot;id&quot;:&quot;project_issue_list&quot;,&quot;title&quot;:&quot;Issues&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/issues&quot;,&quot;pill_count&quot;:&quot;0&quot;,&quot;link_classes&quot;:&quot;shortcuts-issues has-sub-items&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;boards&quot;,&quot;title&quot;:&quot;Issue boards&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/boards&quot;,&quot;link_classes&quot;:&quot;shortcuts-issue-boards&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;milestones&quot;,&quot;title&quot;:&quot;Milestones&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/milestones&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;external_issue_tracker&quot;,&quot;title&quot;:&quot;Jira&quot;,&quot;link&quot;:&quot;https://intranet.oreilly.com/jira?atlOrigin=eyJpIjoiYjM0MTA4MzUyYTYxNDVkY2IwMzVjOGQ3ZWQ3NzMwM2QiLCJwIjoianN3LWdpdGxhYlNNLWludCJ9&quot;,&quot;link_classes&quot;:&quot;shortcuts-external_tracker&quot;,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;code_menu&quot;,&quot;title&quot;:&quot;Code&quot;,&quot;icon&quot;:&quot;code&quot;,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/tree/master&quot;,&quot;is_active&quot;:false,&quot;items&quot;:[{&quot;id&quot;:&quot;files&quot;,&quot;title&quot;:&quot;Repository&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/tree/master&quot;,&quot;link_classes&quot;:&quot;shortcuts-tree&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;branches&quot;,&quot;title&quot;:&quot;Branches&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/branches&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;commits&quot;,&quot;title&quot;:&quot;Commits&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/commits/master?ref_type=heads&quot;,&quot;link_classes&quot;:&quot;shortcuts-commits&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;tags&quot;,&quot;title&quot;:&quot;Tags&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/tags&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;graphs&quot;,&quot;title&quot;:&quot;Repository graph&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/network/master?ref_type=heads&quot;,&quot;link_classes&quot;:&quot;shortcuts-network&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;compare&quot;,&quot;title&quot;:&quot;Compare revisions&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/compare?from=master\u0026to=master&quot;,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;deploy_menu&quot;,&quot;title&quot;:&quot;Deploy&quot;,&quot;icon&quot;:&quot;deployments&quot;,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/releases&quot;,&quot;is_active&quot;:false,&quot;items&quot;:[{&quot;id&quot;:&quot;releases&quot;,&quot;title&quot;:&quot;Releases&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/releases&quot;,&quot;link_classes&quot;:&quot;shortcuts-deployments-releases&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;model_registry&quot;,&quot;title&quot;:&quot;Model registry&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/ml/models&quot;,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;monitor_menu&quot;,&quot;title&quot;:&quot;Monitor&quot;,&quot;icon&quot;:&quot;monitor&quot;,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/incidents&quot;,&quot;is_active&quot;:false,&quot;items&quot;:[{&quot;id&quot;:&quot;incidents&quot;,&quot;title&quot;:&quot;Incidents&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/incidents&quot;,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;analyze_menu&quot;,&quot;title&quot;:&quot;Analyze&quot;,&quot;icon&quot;:&quot;chart&quot;,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/value_stream_analytics&quot;,&quot;is_active&quot;:false,&quot;items&quot;:[{&quot;id&quot;:&quot;cycle_analytics&quot;,&quot;title&quot;:&quot;Value stream analytics&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/value_stream_analytics&quot;,&quot;link_classes&quot;:&quot;shortcuts-project-cycle-analytics&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;contributors&quot;,&quot;title&quot;:&quot;Contributor analytics&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/graphs/master?ref_type=heads&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;repository_analytics&quot;,&quot;title&quot;:&quot;Repository analytics&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/graphs/master/charts&quot;,&quot;link_classes&quot;:&quot;shortcuts-repository-charts&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;model_experiments&quot;,&quot;title&quot;:&quot;Model experiments&quot;,&quot;link&quot;:&quot;/examples/9780596007270/-/ml/experiments&quot;,&quot;is_active&quot;:false}],&quot;separated&quot;:false}],&quot;current_context_header&quot;:&quot;Project&quot;,&quot;support_path&quot;:&quot;https://about.gitlab.com/get-help/&quot;,&quot;docs_path&quot;:&quot;/help/docs&quot;,&quot;display_whats_new&quot;:false,&quot;show_version_check&quot;:null,&quot;search&quot;:{&quot;search_path&quot;:&quot;/search&quot;,&quot;issues_path&quot;:&quot;/dashboard/issues&quot;,&quot;mr_path&quot;:&quot;/dashboard/merge_requests&quot;,&quot;autocomplete_path&quot;:&quot;/search/autocomplete&quot;,&quot;settings_path&quot;:&quot;/search/settings&quot;,&quot;search_context&quot;:{&quot;group&quot;:{&quot;id&quot;:3,&quot;name&quot;:&quot;examples&quot;,&quot;full_name&quot;:&quot;examples&quot;},&quot;group_metadata&quot;:{&quot;issues_path&quot;:&quot;/groups/examples/-/issues&quot;,&quot;mr_path&quot;:&quot;/groups/examples/-/merge_requests&quot;},&quot;project&quot;:{&quot;id&quot;:7016,&quot;name&quot;:&quot;Learning SQL&quot;},&quot;project_metadata&quot;:{&quot;mr_path&quot;:&quot;/examples/9780596007270/-/merge_requests&quot;,&quot;issues_path&quot;:&quot;/examples/9780596007270/-/issues&quot;},&quot;code_search&quot;:true,&quot;ref&quot;:&quot;master&quot;,&quot;scope&quot;:null,&quot;for_snippets&quot;:null}},&quot;panel_type&quot;:&quot;project&quot;,&quot;shortcut_links&quot;:[{&quot;title&quot;:&quot;Snippets&quot;,&quot;href&quot;:&quot;/explore/snippets&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-snippets&quot;},{&quot;title&quot;:&quot;Groups&quot;,&quot;href&quot;:&quot;/explore/groups&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-groups&quot;},{&quot;title&quot;:&quot;Projects&quot;,&quot;href&quot;:&quot;/explore/projects/starred&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-projects&quot;}],&quot;terms&quot;:null}"></aside>

<div class="content-wrapper">
<div class="broadcast-wrapper">




</div>
<div class="alert-wrapper alert-wrapper-top-space gl-flex gl-flex-col gl-gap-3 container-fluid container-limited">

























</div>
<div class="top-bar-fixed container-fluid" data-testid="top-bar">
<div class="top-bar-container gl-flex gl-items-center gl-gap-2">
<div class="gl-grow gl-basis-0 gl-flex gl-items-center gl-justify-start">
<button class="gl-button btn btn-icon btn-md btn-default btn-default-tertiary js-super-sidebar-toggle-expand super-sidebar-toggle -gl-ml-3" aria-controls="super-sidebar" aria-expanded="false" aria-label="Primary navigation sidebar" type="button"><svg class="s16 gl-icon gl-button-icon " data-testid="sidebar-icon"><use href="/assets/icons-8791a66659d025e0a4c801978c79a1fbd82db1d27d85f044a35728ea7cf0ae80.svg#sidebar"></use></svg>

</button>
<script type="application/ld+json">
{"@context":"https://schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","position":1,"name":"examples","item":"https://resources.oreilly.com/examples"},{"@type":"ListItem","position":2,"name":"Learning SQL","item":"https://resources.oreilly.com/examples/9780596007270"}]}


</script>
<div data-testid="breadcrumb-links" id="js-vue-page-breadcrumbs-wrapper">
<div data-breadcrumbs-json="[{&quot;text&quot;:&quot;examples&quot;,&quot;href&quot;:&quot;/examples&quot;,&quot;avatarPath&quot;:&quot;/uploads/-/system/group/avatar/3/avatar.png&quot;},{&quot;text&quot;:&quot;Learning SQL&quot;,&quot;href&quot;:&quot;/examples/9780596007270&quot;,&quot;avatarPath&quot;:&quot;https://resources.oreilly.com/examples/9780596007270/-/avatar&quot;}]" id="js-vue-page-breadcrumbs"></div>
<div id="js-injected-page-breadcrumbs"></div>
</div>


</div>
<div class="gl-flex-none gl-flex gl-items-center gl-justify-center">
<div id="js-advanced-search-modal"></div>

</div>
<div class="gl-grow gl-basis-0 gl-flex gl-items-center gl-justify-end">
<div id="js-work-item-feedback"></div>


</div>
</div>
</div>

<div class="container-fluid container-limited project-highlight-puc">
<main class="content" id="content-body" itemscope itemtype="http://schema.org/SoftwareSourceCode">
<div class="flash-container flash-container-page sticky" data-testid="flash-container">
<div id="js-global-alerts"></div>
</div>










<header class="project-home-panel js-show-on-project-root gl-mt-5">
<div class="gl-flex gl-justify-between gl-flex-wrap gl-flex-col md:gl-flex-row gl-gap-5">
<div class="home-panel-title-row gl-flex gl-items-center">
<img srcset="https://resources.oreilly.com/examples/9780596007270/-/avatar?width=48 1x, https://resources.oreilly.com/examples/9780596007270/-/avatar?width=96 2x" alt="Learning SQL" class="gl-avatar gl-avatar-s48 gl-self-start gl-shrink-0 gl-mr-3 !gl-rounded-base" height="48" width="48" loading="lazy" itemprop="image" src="https://resources.oreilly.com/examples/9780596007270/-/avatar?width=48" />

<h1 class="home-panel-title gl-heading-1 gl-flex gl-items-center gl-flex-wrap gl-gap-3 gl-break-anywhere gl-mb-0" data-testid="project-name-content" itemprop="name">
Learning SQL
<span class="has-tooltip visibility-icon gl-inline-flex gl-text-secondary" data-container="body" data-placement="top" title="Public - The project can be accessed without any authentication."><svg class="s16 icon" data-testid="earth-icon"><use href="/assets/icons-8791a66659d025e0a4c801978c79a1fbd82db1d27d85f044a35728ea7cf0ae80.svg#earth"></use></svg></span>


</h1>
</div>
<div data-can-read-project="true" data-id="7016" data-is-group="false" data-is-project-archived="false" data-is-project-empty="false" data-project-avatar="https://resources.oreilly.com/examples/9780596007270/-/avatar" data-project-id="7016" data-project-name="Learning SQL" data-project-visibility-level="public" data-sign-in-path="/users/sign_in?redirect_to_referer=yes" data-star-count="0" data-starred="false" data-starrers-path="/examples/9780596007270/-/starrers" id="js-home-panel"></div>
</div>

</header>

<div class="project-page-indicator js-show-on-project-root"></div>
<div class="project-page-layout">
<div class="project-page-layout-sidebar js-show-on-project-root gl-mt-5">
<aside class="project-page-sidebar" data-testid="project-page-sidebar">
<div class="project-page-sidebar-block home-panel-home-desc gl-py-4 gl-border-b gl-border-b-subtle !gl-pt-2">
<h2 class="gl-text-base gl-font-bold gl-leading-reset gl-text-strong gl-m-0 gl-mb-1">Project information</h2>
</div>
<div class="project-page-sidebar-block gl-py-4 gl-border-b gl-border-b-subtle">
<nav class="project-stats">
<ul class="nav gl-gap-y-2 gl-gap-x-5">
<li class="nav-item">
<a class="nav-link stat-link !gl-px-0 !gl-pb-2" href="/examples/9780596007270/-/commits/master"><svg class="s16 icon gl-mr-3 gl-text-gray-500" data-testid="commit-icon"><use href="/assets/icons-8791a66659d025e0a4c801978c79a1fbd82db1d27d85f044a35728ea7cf0ae80.svg#commit"></use></svg><strong class="project-stat-value">1</strong> Commit</a>
</li>
<li class="nav-item">
<a class="nav-link stat-link !gl-px-0 !gl-pb-2" href="/examples/9780596007270/-/branches"><svg class="s16 icon gl-mr-3 gl-text-gray-500" data-testid="branch-icon"><use href="/assets/icons-8791a66659d025e0a4c801978c79a1fbd82db1d27d85f044a35728ea7cf0ae80.svg#branch"></use></svg><strong class="project-stat-value">1</strong> Branch</a>
</li>
<li class="nav-item">
<a class="nav-link stat-link !gl-px-0 !gl-pb-2" href="/examples/9780596007270/-/tags"><svg class="s16 icon gl-mr-3 gl-text-gray-500" data-testid="label-icon"><use href="/assets/icons-8791a66659d025e0a4c801978c79a1fbd82db1d27d85f044a35728ea7cf0ae80.svg#label"></use></svg><strong class="project-stat-value">0</strong> Tags</a>
</li>
</ul>

</nav>
</div>
<div class="project-page-sidebar-block gl-py-4 gl-border-b gl-border-b-subtle">
<div class="project-buttons gl-mb-2 js-show-on-project-root" data-testid="project-buttons">
<ul class="nav gl-gap-y-2 gl-gap-x-5">
<li class="nav-item">
<a class="nav-link stat-link !gl-px-0 !gl-pb-2 btn-default" href="/examples/9780596007270/-/blob/master/README.md"><svg class="s16 icon gl-mr-3 gl-text-gray-500" data-testid="doc-text-icon"><use href="/assets/icons-8791a66659d025e0a4c801978c79a1fbd82db1d27d85f044a35728ea7cf0ae80.svg#doc-text"></use></svg>README</a>
</li>
</ul>

</div>
</div>

<div class="project-page-sidebar-block gl-py-4">
<p class="gl-font-bold gl-text-strong gl-m-0 gl-mb-1">Created on</p>
<span>July 03, 2017</span>
</div>
</aside>

</div>
<div class="project-page-layout-content">
<div class="project-show-files">
<div class="tree-holder clearfix js-per-page gl-mt-5" data-blame-per-page="1000" id="tree-holder">
<div class="nav-block gl-flex gl-flex-col sm:gl-flex-row gl-items-stretch">
<div class="tree-ref-container gl-flex gl-flex-wrap gl-gap-2 mb-2 mb-md-0">
<div class="tree-ref-holder gl-max-w-26" data-testid="ref-dropdown-container">
<div data-project-id="7016" data-project-root-path="/examples/9780596007270" data-ref-type="heads" id="js-tree-ref-switcher"></div>
</div>
<div data-can-collaborate="false" data-can-edit-tree="false" data-can-push-code="false" data-new-blob-path="/examples/9780596007270/-/new/master" data-new-branch-path="/examples/9780596007270/-/branches/new" data-new-dir-path="/examples/9780596007270/-/create_dir/master" data-new-tag-path="/examples/9780596007270/-/tags/new" data-upload-path="/examples/9780596007270/-/create/master" id="js-repo-breadcrumb"></div>
</div>
<div id="js-blob-controls"></div>
<div class="tree-controls">
<div class="gl-flex gl-flex-wrap gl-gap-3 gl-mb-3 sm:gl-mb-0">


<div data-history-link="/examples/9780596007270/-/commits/master" id="js-tree-history-link"></div>
<button class="gl-button btn btn-md btn-default has-tooltip shortcuts-find-file" title="Go to file, press &lt;kbd class=&#39;flat ml-1&#39; aria-hidden=true&gt;/~&lt;/kbd&gt; or &lt;kbd class=&#39;flat ml-1&#39; aria-hidden=true&gt;t&lt;/kbd&gt;" aria-keyshortcuts="/+~ t" data-html="true" data-event-tracking="click_find_file_button_on_repository_pages" type="button"><span class="gl-button-text">
Find file

</span>

</button>

<div class="project-code-holder gl-hidden sm:gl-inline-block">
<div class="git-clone-holder js-git-clone-holder">
<div data-directory-download-links="[{&quot;text&quot;:&quot;zip&quot;,&quot;path&quot;:&quot;/examples/9780596007270/-/archive/master/9780596007270-master.zip&quot;},{&quot;text&quot;:&quot;tar.gz&quot;,&quot;path&quot;:&quot;/examples/9780596007270/-/archive/master/9780596007270-master.tar.gz&quot;},{&quot;text&quot;:&quot;tar.bz2&quot;,&quot;path&quot;:&quot;/examples/9780596007270/-/archive/master/9780596007270-master.tar.bz2&quot;},{&quot;text&quot;:&quot;tar&quot;,&quot;path&quot;:&quot;/examples/9780596007270/-/archive/master/9780596007270-master.tar&quot;}]" data-http-url="https://resources.oreilly.com/examples/9780596007270.git" data-ssh-url="git@resources.oreilly.com:examples/9780596007270.git" data-xcode-url="" id="js-code-dropdown"></div>
</div>

</div>
</div>
<div class="project-code-holder gl-flex gl-gap-3 sm:!gl-hidden">
<div class="js-source-code-dropdown" data-css-class="" data-download-artifacts="[]" data-download-links="[{&quot;text&quot;:&quot;zip&quot;,&quot;path&quot;:&quot;/examples/9780596007270/-/archive/master/9780596007270-master.zip&quot;},{&quot;text&quot;:&quot;tar.gz&quot;,&quot;path&quot;:&quot;/examples/9780596007270/-/archive/master/9780596007270-master.tar.gz&quot;},{&quot;text&quot;:&quot;tar.bz2&quot;,&quot;path&quot;:&quot;/examples/9780596007270/-/archive/master/9780596007270-master.tar.bz2&quot;},{&quot;text&quot;:&quot;tar&quot;,&quot;path&quot;:&quot;/examples/9780596007270/-/archive/master/9780596007270-master.tar&quot;}]"></div>

<div class="btn-group mobile-git-clone js-mobile-git-clone btn-block">
<button class="gl-button btn btn-md btn-confirm hover:gl-no-underline gl-text-gray-700 js-clone-dropdown-label" title="Copy" aria-label="Copy" aria-live="polite" data-toggle="tooltip" data-placement="bottom" data-container="body" data-html="true" data-button-text="Copy HTTPS clone URL" data-size="medium" data-category="primary" data-variant="confirm" data-hide-button-icon="true" data-clipboard-text="https://resources.oreilly.com/examples/9780596007270.git" type="button"><span class="gl-button-text">
Copy HTTPS clone URL
</span>

</button>
<button class="btn gl-button btn-confirm dropdown-toggle js-dropdown-toggle flex-grow-0 gl-flex gl-items-center gl-justify-center w-auto ml-0" data-toggle="dropdown" type="button">
<svg class="s16 dropdown-btn-icon icon" data-testid="chevron-down-icon"><use href="/assets/icons-8791a66659d025e0a4c801978c79a1fbd82db1d27d85f044a35728ea7cf0ae80.svg#chevron-down"></use></svg>
</button>
<ul class="dropdown-menu dropdown-menu-selectable dropdown-menu-right clone-options-dropdown" data-dropdown>
<li class="js-clone-links">
<a class="copy ssh clone url-selector is-active" href="git@resources.oreilly.com:examples/9780596007270.git" data-clone-type="ssh"><strong class="dropdown-menu-inner-title">Copy SSH clone URL</strong><span class="dropdown-menu-inner-content">git@resources.oreilly.com:examples/9780596007270.git</span></a>
</li>
<li class="js-clone-links">
<a class="copy https clone url-selector " href="https://resources.oreilly.com/examples/9780596007270.git" data-clone-type="http"><strong class="dropdown-menu-inner-title">Copy HTTPS clone URL</strong><span class="dropdown-menu-inner-content">https://resources.oreilly.com/examples/9780596007270.git</span></a>
</li>

</ul>
</div>

</div>
</div>

</div>
<div class="info-well gl-hidden sm:gl-flex project-last-commit gl-flex-col gl-mt-5">
<div class="gl-m-auto" data-ref-type="heads" id="js-last-commit">
<div class="gl-spinner-container" role="status"><span aria-hidden class="gl-spinner gl-spinner-md gl-spinner-dark !gl-align-text-bottom"></span><span class="gl-sr-only !gl-absolute">Loading</span>
</div>
</div>
</div>
<div data-escaped-ref="master" data-full-name="examples / Learning SQL" data-project-path="examples/9780596007270" data-project-short-path="9780596007270" data-ref="master" data-ref-type="heads" id="js-tree-list"></div>
</div>

</div>
</div>
</div>

</main>
</div>


</div>
</div>

<div class="footer-message" style="background-color: #d3002d;color: #ffffff"><p>© 2025 O’Reilly Media, Inc. All trademarks and registered trademarks appearing on oreilly.com are the property of their respective owners. <a href="http://www.oreilly.com/terms/" rel="nofollow noreferrer noopener" target="_blank">Terms of Service</a> • <a href="http://www.oreilly.com/privacy.html" rel="nofollow noreferrer noopener" target="_blank">Privacy Policy</a> • <a href="http://www.oreilly.com/about/editorial_independence.html" rel="nofollow noreferrer noopener" target="_blank">Editorial Independence</a></p></div>
<script>
//<![CDATA[
if ('loading' in HTMLImageElement.prototype) {
  document.querySelectorAll('img.lazy').forEach(img => {
    img.loading = 'lazy';
    let imgUrl = img.dataset.src;
    // Only adding width + height for avatars for now
    if (imgUrl.indexOf('/avatar/') > -1 && imgUrl.indexOf('?') === -1) {
      const targetWidth = img.getAttribute('width') || img.width;
      imgUrl += `?width=${targetWidth}`;
    }
    img.src = imgUrl;
    img.removeAttribute('data-src');
    img.classList.remove('lazy');
    img.classList.add('js-lazy-loaded');
    img.dataset.testid = 'js-lazy-loaded-content';
  });
}

//]]>
</script>
<script>
//<![CDATA[
gl = window.gl || {};
gl.experiments = {};


//]]>
</script>

</body>
</html>

