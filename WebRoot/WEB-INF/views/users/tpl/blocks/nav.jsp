<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- list -->
<ul class="nav">
  <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
    <span translate="aside.nav.HEADER">Navigation</span>
  </li>
  <li>
    <a href class="auto">      
      <span class="pull-right text-muted">
        <i class="fa fa-fw fa-angle-right text"></i>
        <i class="fa fa-fw fa-angle-down text-active"></i>
      </span>
      <i class="glyphicon glyphicon-stats icon text-primary-dker"></i>
      <span class="font-bold" translate="aside.nav.DASHBOARD">Dashboard</span>
    </a>
    <ul class="nav nav-sub dk">
      <li class="nav-sub-header">
        <a href>
          <span translate="aside.nav.DASHBOARD">Dashboard</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.dashboard-v1">
          <span>Dashboard v1</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.dashboard-v2">
          <b class="label bg-info pull-right">N</b>
          <span>Dashboard v2</span>
        </a>
      </li>
    </ul>
  </li>
  <li ui-sref-active="active">
    <a ui-sref="app.calendar">
      <i class="glyphicon glyphicon-calendar icon text-info-dker"></i>
      <span class="font-bold" translate="aside.nav.CALENDAR">Calendar</span>
    </a>
  </li>
  <li ui-sref-active="active">
    <a ui-sref="app.mail.list">
      <b class="badge bg-info pull-right">9</b>
      <i class="glyphicon glyphicon-envelope icon text-info-lter"></i>
      <span class="font-bold" >Email</span>
    </a>
  </li>
  <li>
    <a href class="auto">
      <span class="pull-right text-muted">
        <i class="fa fa-fw fa-angle-right text"></i>
        <i class="fa fa-fw fa-angle-down text-active"></i>
      </span>
      <i class="glyphicon glyphicon-th-large icon text-success"></i>
      <span class="font-bold">Apps</span>
    </a>
    <ul class="nav nav-sub dk">
      <li class="nav-sub-header">
        <a href>
          <span>Apps</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="apps.note">
          <span>Note</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="apps.contact">
          <span>Contacts</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.weather">
          <span>Weather</span>
        </a>
      </li>
    </ul>
  </li>

  <li class="line dk"></li>

  <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
    <span translate="aside.nav.components.COMPONENTS">Components</span>
  </li>
  <li>
    <a href class="auto">      
      <span class="pull-right text-muted">
        <i class="fa fa-fw fa-angle-right text"></i>
        <i class="fa fa-fw fa-angle-down text-active"></i>
      </span>
      <b class="badge bg-info pull-right">3</b>
      <i class="glyphicon glyphicon-th"></i>
      <span>信息</span>
    </a>
    <ul class="nav nav-sub dk">
      <li class="nav-sub-header">
        <a href>
          <span>信息</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="layout.app">
          <span>基本信息</span>
        </a>
      </li>
     <li ui-sref-active="active">
        <a ui-sref="layout.fullwidth">
          <span>认证信息</span>
        </a>
      </li>
      <!-- <li ui-sref-active="active">
        <a ui-sref="layout.mobile">
          <span>Mobile</span>
        </a>
      </li>     -->
    </ul>
  </li>
  <li ng-class="{active:$state.includes('app.ui')}">
    <a href class="auto">
      <span class="pull-right text-muted">
        <i class="fa fa-fw fa-angle-right text"></i>
        <i class="fa fa-fw fa-angle-down text-active"></i>
      </span>
      <i class="glyphicon glyphicon-briefcase icon"></i>
      <span >我的参与</span>
    </a>
    <ul class="nav nav-sub dk">
      <li class="nav-sub-header">
        <a href>
          <span translate="aside.nav.components.ui_kits.UI_KITS">我的参与</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.ui.buttons">
          <span >话题讨论</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.ui.icons">
          <b class="badge bg-info pull-right">3</b>
          <span>发布感慨</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.ui.grid">
          <span >分享心得</span>
        </a>
      </li>
      <!-- <li ui-sref-active="active">
        <a ui-sref="app.ui.widgets">
          <b class="badge bg-success pull-right">13</b>
          <span translate="aside.nav.WIDGETS">Widgets</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.ui.bootstrap">
          <b class="badge bg-primary pull-right">16</b>
          <span translate="aside.nav.components.ui_kits.BOOTSTRAP">Bootstrap</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.ui.sortable">
          <span translate="aside.nav.components.ui_kits.SORTABLE">Sortable</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.ui.portlet">
          <span translate="aside.nav.components.ui_kits.PORTLET">Portlet</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.ui.timeline">
          <span translate="aside.nav.components.ui_kits.TIMELINE">Timeline</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.ui.tree">
          <span>Tree</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.ui.toaster">
          <span>Toaster</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.ui.jvectormap">
          <span translate="aside.nav.components.ui_kits.VECTOR_MAP">Vector Map</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.ui.googlemap">
          <span>Google Map</span>
        </a>
      </li> -->
    </ul>
  </li>
  <li ng-class="{active:$state.includes('app.table')}">
    <a href class="auto">
      <span class="pull-right text-muted">
        <i class="fa fa-fw fa-angle-right text"></i>
        <i class="fa fa-fw fa-angle-down text-active"></i>
      </span>
      <b class="label bg-primary pull-right">2</b>
      <i class="glyphicon glyphicon-list"></i>
      <span >行程安排</span>
    </a>
    <ul class="nav nav-sub dk">
      <li class="nav-sub-header">
        <a href>
          <span>行程安排</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.table.static">
          <span >本月</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.table.datatable">
          <span >本周</span>
        </a>
      </li>
    <!--   <li ui-sref-active="active">
        <a ui-sref="app.table.footable">
          <span translate="aside.nav.components.table.FOOTABLE">Footable</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.table.grid">
          <span>ngGrid</span>
        </a>
      </li> -->
    </ul>
  </li>
  <!-- <li ng-class="{active:$state.includes('app.form')}">
    <a href class="auto">
      <span class="pull-right text-muted">
        <i class="fa fa-fw fa-angle-right text"></i>
        <i class="fa fa-fw fa-angle-down text-active"></i>
      </span>
      <i class="glyphicon glyphicon-edit"></i>
      <span translate="aside.nav.components.form.FORM">Form</span>
    </a>
    <ul class="nav nav-sub dk">
      <li class="nav-sub-header">
        <a href>
          <span translate="aside.nav.components.form.FORM">Form</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.form.elements">
          <span translate="aside.nav.components.form.FORM_ELEMENTS">Form elements</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.form.validation">
          <span translate="aside.nav.components.form.FORM_VALIDATION">Form validation</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.form.wizard">
          <span translate="aside.nav.components.form.FORM_WIZARD">Form wizard</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.form.fileupload">
          <span>File upload</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.form.imagecrop">
          <span>Image crop</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.form.select">
          <span>Select</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.form.slider">
          <span>Slider</span>
        </a>
      </li>
      <li ui-sref-active="active">
        <a ui-sref="app.form.editor">
          <span>Editor</span>
        </a>
      </li>
    </ul>
  </li> -->
  <li ui-sref-active="{active:$state.includes('app.ui')}">
    <a ui-sref="app.active">
      <i class="glyphicon glyphicon-signal"></i>
     <!--  <span translate="aside.nav.components.CHART">参与项目</span> -->
     <span >参与项目</span>
    </a>
  </li>
  <li ui-sref-active="{active:$state.includes('app.ui')}">
    <a ui-sref="app.pushactive"><i class="glyphicon glyphicon-signal"></i><span >发布项目</span></a>
  </li>
  <li class="line dk hidden-folded"></li>

  <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">          
    <span translate="aside.nav.your_stuff.YOUR_STUFF">Your Stuff</span>
  </li>  
  <li>
    <a ui-sref="app.page.profile">
      <i class="icon-user icon text-success-lter"></i>
      <b class="badge bg-success pull-right">30%</b>
      <span translate="aside.nav.your_stuff.PROFILE">Profile</span>
    </a>
  </li>
  <li>
    <a ui-sref="app.docs">
      <i class="icon-question icon"></i>
      <span translate="aside.nav.your_stuff.DOCUMENTS">Documents</span>
    </a>
  </li>
</ul>
<!-- / list -->