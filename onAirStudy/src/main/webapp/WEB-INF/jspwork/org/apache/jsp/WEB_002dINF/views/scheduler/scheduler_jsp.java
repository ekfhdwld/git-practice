/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.57
 * Generated at: 2020-10-13 12:50:17 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.scheduler;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class scheduler_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>스케줄러</title>\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\" integrity=\"sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z\" crossorigin=\"anonymous\">\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\" integrity=\"sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\" integrity=\"sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js\"></script>\r\n");
      out.write("    <script src=\"http://code.jquery.com/jquery-latest.min.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("<!--컬러픽커-->\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/jquery.minicolors.js\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/jquery.minicolors.css\">\r\n");
      out.write("\r\n");
      out.write("<!--데이트픽커-->\r\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/datepicker.min.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\">\r\n");
      out.write("<!-- Air datepicker css -->\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/datepicker.js\"></script> <!-- Air datepicker js -->\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/datepicker.ko.js\"></script> <!-- 달력 한글 추가를 위해 커스텀 -->\r\n");
      out.write("    \r\n");
      out.write("    <style>\r\n");
      out.write("    \r\n");
      out.write("                #thisday{\r\n");
      out.write("                    background-color: skyblue;\r\n");
      out.write("                    padding-right: 10%;\r\n");
      out.write("                }\r\n");
      out.write("                .Bday span{\r\n");
      out.write("                    margin: 0;\r\n");
      out.write("                    padding-left: 10px;\r\n");
      out.write("                    border-radius: 10px;\r\n");
      out.write("                }\r\n");
      out.write("                .Bday{\r\n");
      out.write("                    border-radius: 10px;\r\n");
      out.write("                    cursor: pointer;\r\n");
      out.write("                }\r\n");
      out.write("                .Bday:hover{\r\n");
      out.write("                    background-color: rgb(216, 214, 214);\r\n");
      out.write("                }\r\n");
      out.write("                #prevB{\r\n");
      out.write("                    margin-right: 30px;\r\n");
      out.write("                    background: white;\r\n");
      out.write("                    border: none;\r\n");
      out.write("                    \r\n");
      out.write("                }\r\n");
      out.write("                #prevB img{\r\n");
      out.write("                    width: 50px;\r\n");
      out.write("                    background: none;\r\n");
      out.write("                }\r\n");
      out.write("                #nextB{\r\n");
      out.write("                    margin-left: 30px;\r\n");
      out.write("                    background: white;\r\n");
      out.write("                    border: none;\r\n");
      out.write("                }\r\n");
      out.write("                #nextB img{\r\n");
      out.write("                    width: 50px;\r\n");
      out.write("                }\r\n");
      out.write("                .monthBB{\r\n");
      out.write("                    font-size: 30px;\r\n");
      out.write("                    font-weight: bold;\r\n");
      out.write("                    text-align: center;\r\n");
      out.write("\r\n");
      out.write("                }\r\n");
      out.write("                #monthB{\r\n");
      out.write("                    width: 100px;\r\n");
      out.write("                    display:inline-block;\r\n");
      out.write("                }\r\n");
      out.write("                .dropB{\r\n");
      out.write("                    position: absolute;\r\n");
      out.write("                    border: 1px solid black;\r\n");
      out.write("                    width: 200px;\r\n");
      out.write("                    background-color: grey;\r\n");
      out.write("                }\r\n");
      out.write("                .dropB p{\r\n");
      out.write("                    text-align: right;\r\n");
      out.write("                    margin: 0;\r\n");
      out.write("                    margin-right: 20px;\r\n");
      out.write("                    cursor: pointer;\r\n");
      out.write("                }\r\n");
      out.write("                .dropB button{\r\n");
      out.write("                    transition-duration: 0.4s;\r\n");
      out.write("                    border: 0;\r\n");
      out.write("                    outline: 0;\r\n");
      out.write("                }\r\n");
      out.write("                .dropB button:hover{\r\n");
      out.write("                    background-color: #fff;\r\n");
      out.write("                }\r\n");
      out.write("                .yearBB{\r\n");
      out.write("                    font-size: 40px;\r\n");
      out.write("                    font-weight: bold;\r\n");
      out.write("                    text-align: center;\r\n");
      out.write("                }\r\n");
      out.write("                .cal-divB{\r\n");
      out.write("                    width:800px;\r\n");
      out.write("                    margin-top: 100px;\r\n");
      out.write("                    margin-left: 100px;\r\n");
      out.write("                }\r\n");
      out.write("                .sun{\r\n");
      out.write("                    color:red;\r\n");
      out.write("                }\r\n");
      out.write("                .sat{\r\n");
      out.write("                    color:blue;\r\n");
      out.write("                }\r\n");
      out.write("                .tableB tr td{\r\n");
      out.write("                    padding: 0;\r\n");
      out.write("                    width:100px;\r\n");
      out.write("                    height:100px;\r\n");
      out.write("                    margin: 5px;\r\n");
      out.write("                }\r\n");
      out.write("                .modal-body img{\r\n");
      out.write("                    width: 25px;\r\n");
      out.write("                }\r\n");
      out.write("                .modal-body .Datepicker{\r\n");
      out.write("                    text-align: center;\r\n");
      out.write("                    width: 100px;\r\n");
      out.write("                    height: 30px;\r\n");
      out.write("                }\r\n");
      out.write("                #insertSchedulFrm{\r\n");
      out.write("                    text-align: center;\r\n");
      out.write("                }\r\n");
      out.write("                #insertSchedulFrm span{\r\n");
      out.write("                    width: 200px;\r\n");
      out.write("                }\r\n");
      out.write("                .marginB{\r\n");
      out.write("                    margin-top: 30px;\r\n");
      out.write("                    margin-bottom: 30px;\r\n");
      out.write("                }\r\n");
      out.write("                .datepickers-container{\r\n");
      out.write("                    z-index: 9999;\r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    </style>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    <script>\r\n");
      out.write("\r\n");
      out.write("$(document).ready( function() {\r\n");
      out.write("\r\n");
      out.write("$('.demo').each( function() {\r\n");
      out.write("  $(this).minicolors({\r\n");
      out.write("    control: $(this).attr('data-control') || 'hue',\r\n");
      out.write("    defaultValue: $(this).attr('data-defaultValue') || '',\r\n");
      out.write("    format: $(this).attr('data-format') || 'hex',\r\n");
      out.write("    keywords: $(this).attr('data-keywords') || '',\r\n");
      out.write("    inline: $(this).attr('data-inline') === 'true',\r\n");
      out.write("    letterCase: $(this).attr('data-letterCase') || 'lowercase',\r\n");
      out.write("    opacity: $(this).attr('data-opacity'),\r\n");
      out.write("    position: $(this).attr('data-position') || 'bottom left',\r\n");
      out.write("    swatches: $(this).attr('data-swatches') ? $(this).attr('data-swatches').split('|') : [],\r\n");
      out.write("    change: function(value, opacity) {\r\n");
      out.write("      if( !value ) return;\r\n");
      out.write("        console.log(value);\r\n");
      out.write("        $(\"#hidden-input\").val(value);\r\n");
      out.write("      \r\n");
      out.write("    },\r\n");
      out.write("    theme: 'default'\r\n");
      out.write("  });\r\n");
      out.write("\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("            //모달창 데이트피커\r\n");
      out.write("           $(document).ready( function() {\r\n");
      out.write("                $(\".datepick\").datepicker({\r\n");
      out.write("                    language: 'ko',\r\n");
      out.write("                    dateFormat:\"yyyy-mm-dd\",\r\n");
      out.write("                    onSelect: function onSelect(e, date) {\r\n");
      out.write("\r\n");
      out.write("                    console.log(date);\r\n");
      out.write("                    console.log(e);\r\n");
      out.write("                    console.log($(this));\r\n");
      out.write("                    \r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("                });\r\n");
      out.write("           });\r\n");
      out.write("            //기본 달력출력\r\n");
      out.write("            $(document).ready(function(){\r\n");
      out.write("                drawCalendar();\r\n");
      out.write("\r\n");
      out.write("                //메뉴닫아주기\r\n");
      out.write("                $(\".dropB\").find(\"p\").click(function(){\r\n");
      out.write("                    $(\".dropB\").css(\"display\", \"none\");\r\n");
      out.write("                });\r\n");
      out.write("                \r\n");
      out.write("                $(\".btn-secondary\").click(function(){\r\n");
      out.write("                    $(\".dropB\").css(\"display\", \"none\");\r\n");
      out.write("                })\r\n");
      out.write("           \r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("            var today = new Date();\r\n");
      out.write("\r\n");
      out.write("            //캘린더만들기\r\n");
      out.write("            function drawCalendar(Y, M){\r\n");
      out.write("                \r\n");
      out.write("                //테이블찾기\r\n");
      out.write("                var tblB = document.getElementsByClassName(\"tableB\")[0];\r\n");
      out.write("                tblB.innerHTML= \"\";\r\n");
      out.write("                //그려줄 테이블\r\n");
      out.write("                var htmlB = \"\";\r\n");
      out.write("                \r\n");
      out.write("                //이달 첫째날\r\n");
      out.write("                var firstDate = new Date();\r\n");
      out.write("                firstDate.setDate(1);\r\n");
      out.write("               \r\n");
      out.write("                //월 컨트롤러 ->추후에 < > 버튼으로 달력이동 가능하게해야함\r\n");
      out.write("                if(M != null){\r\n");
      out.write("                    firstDate.setMonth(M);\r\n");
      out.write("                }\r\n");
      out.write("                if(Y != null){\r\n");
      out.write("                    firstDate.setFullYear(Y);\r\n");
      out.write("                }\r\n");
      out.write("               \r\n");
      out.write("                //월 첫째요일\r\n");
      out.write("                var firstDay = firstDate.getDay();\r\n");
      out.write("\r\n");
      out.write("                //td 아이디값으로 줄 날짜정보\r\n");
      out.write("                var yB = firstDate.getFullYear();\r\n");
      out.write("                var MB = firstDate.getMonth()+1;\r\n");
      out.write("                var dB = firstDate.getDate();\r\n");
      out.write("                \r\n");
      out.write("                //월별 마지막날짜\r\n");
      out.write("                var lastMonth = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);\r\n");
      out.write("                var lastDate = 0;\r\n");
      out.write("                //윤년일 때 2월 29일\r\n");
      out.write("                if(firstDate.getUTCFullYear()%4==0){\r\n");
      out.write("                    lastMonth[1] = 29;\r\n");
      out.write("                }\r\n");
      out.write("              \r\n");
      out.write("                //마지막날짜 찾기\r\n");
      out.write("                for(var i = 0 ; i < lastMonth.length;i++){\r\n");
      out.write("                    if(firstDate.getMonth() == i){\r\n");
      out.write("                        lastDate = lastMonth[i];\r\n");
      out.write("                        console.log(lastDate);\r\n");
      out.write("                    }\r\n");
      out.write("\r\n");
      out.write("                }\r\n");
      out.write("                //연/월 정보\r\n");
      out.write("                var info = document.getElementsByClassName(\"infoB\")[0];\r\n");
      out.write("                info.innerHTML =\"<button onclick='drawCalendar();'>오늘날짜보기</button>\"\r\n");
      out.write("                                + \"<h1 class='yearBB'>\"+firstDate.getFullYear()+\"</h1><br/>\"\r\n");
      out.write("                                + \"<h2 class='monthBB'><button id='prevB' onclick='prevCalendar(\"+firstDate.getMonth()+\");'><img src='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/images/L.png'></button>\"\r\n");
      out.write("                                + \"<p id='monthB'>\"+(firstDate.getMonth()+1)+\"월</p>\"\r\n");
      out.write("                                + \"<button id='nextB' onclick='nextCalendar(\"+firstDate.getMonth()+\");'><img src='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/images/R.png'></button></h2><br/>\";\r\n");
      out.write("                \r\n");
      out.write("                //요일정보\r\n");
      out.write("                htmlB+= \"<tr><th scope='col' class='sun'>sun</th><th scope='col'>mon</th><th scope='col'>tue</th><th scope='col'>wed</th><th scope='col'>thu</th><th scope='col'>fri</th><th scope='col' class='sat'>sat</th></tr>\";\r\n");
      out.write("\r\n");
      out.write("                \r\n");
      out.write("                //달력짜기\r\n");
      out.write("            for(var i = 0 ; i < 6 ; i++){\r\n");
      out.write("                htmlB+=\"<tr>\";           \r\n");
      out.write("                    for(var j = 0 ; j <7 ; j++){\r\n");
      out.write("                        //첫째날 요일 맞춰주기\r\n");
      out.write("                        if(i==0 && j < firstDay){\r\n");
      out.write("                            htmlB+=\"<td class='Bday-non'></td>\";\r\n");
      out.write("                            continue;\r\n");
      out.write("                        }\r\n");
      out.write("                        //막날 요일 채워주기\r\n");
      out.write("                        if(dB>lastDate){\r\n");
      out.write("                            htmlB+=\"<td class='Bday-non'></td>\";\r\n");
      out.write("                            continue;\r\n");
      out.write("                        }\r\n");
      out.write("\r\n");
      out.write("                        htmlB+=\"<td class='Bday \";\r\n");
      out.write("                        \r\n");
      out.write("                        //일,토 색상처리\r\n");
      out.write("                        if(j==0){\r\n");
      out.write("                            htmlB += \"sun\";\r\n");
      out.write("                        }else if(j==6){\r\n");
      out.write("                            htmlB += \"sat\";\r\n");
      out.write("                        }\r\n");
      out.write("                        \r\n");
      out.write("                        htmlB+=\"' id='\"+yB+(MB < 10 ? \"0\"+MB : MB )+ (dB < 10 ? \"0\"+dB : dB ) +\"'><span> \"+(dB++)+\"</span></td>\";\r\n");
      out.write("                    }\r\n");
      out.write("                    htmlB+=\"</tr>\";\r\n");
      out.write("\r\n");
      out.write("                }\r\n");
      out.write("                \r\n");
      out.write("                tblB.innerHTML += htmlB;    \r\n");
      out.write("\r\n");
      out.write("                //오늘날짜에 id 추가하기\r\n");
      out.write("                var today = new Date();\r\n");
      out.write("                if(firstDate.getFullYear() == today.getFullYear() && firstDate.getMonth()==today.getMonth()){\r\n");
      out.write("                    today = moment(new Date()).format(\"YYYYMMDD\");\r\n");
      out.write("                    var toid = document.getElementById(today).firstChild;\r\n");
      out.write("                    toid.setAttribute(\"id\", \"thisday\");\r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("                //리스너 달아주기\r\n");
      out.write("                var eventB = document.getElementsByClassName(\"Bday\");\r\n");
      out.write("                    for(var i = 0 ; i < eventB.length ; i++){\r\n");
      out.write("                    eventB[i].addEventListener(\"click\", function(){\r\n");
      out.write("                       mouseEvents(this, event);\r\n");
      out.write("\r\n");
      out.write("                    }, false);\r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                //스케줄넣어주기\r\n");
      out.write("                if(schedules.length>0){\r\n");
      out.write("                    scheduling();\r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("            function scheduling(){\r\n");
      out.write("               \r\n");
      out.write("                //투두, 디데이가 아닐때\r\n");
      out.write("                schedules.forEach(function(e){\r\n");
      out.write("                    console.log(e.startDate);\r\n");
      out.write("                    console.log(e.endDate);\r\n");
      out.write("                    document.getElementById(e.startDate).innerHTML+=\"<br/><span>\"+e.content+\"</span>\";\r\n");
      out.write("                    //구려!!!\r\n");
      out.write("                })\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            \r\n");
      out.write("            //다음달력\r\n");
      out.write("            function nextCalendar(M){\r\n");
      out.write("                var Y = Number(document.getElementsByClassName(\"yearBB\")[0].innerHTML);\r\n");
      out.write("                M += 1;\r\n");
      out.write("                if(M == 12){\r\n");
      out.write("                    Y+=1;\r\n");
      out.write("                }\r\n");
      out.write("                drawCalendar(Y, M);\r\n");
      out.write("            }\r\n");
      out.write("            //이전달력\r\n");
      out.write("            function prevCalendar(M){\r\n");
      out.write("                var Y = Number(document.getElementsByClassName(\"yearBB\")[0].innerHTML);\r\n");
      out.write("                M -= 1;\r\n");
      out.write("                if(M == -1){\r\n");
      out.write("                    Y-=1;\r\n");
      out.write("                }\r\n");
      out.write("                drawCalendar(Y, M);\r\n");
      out.write("                \r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            //오늘날짜보기\r\n");
      out.write("                $(\".viewTodayB\").click(function(){\r\n");
      out.write("                    var today = new Date();\r\n");
      out.write("                    drawCalendar(today.getFullYear(), today.getMonth());\r\n");
      out.write("                    \r\n");
      out.write("                });    \r\n");
      out.write("                \r\n");
      out.write("                //메뉴 나타나게하기\r\n");
      out.write("                function mouseEvents(e, event){\r\n");
      out.write("                     console.log(e.id);\r\n");
      out.write("                     //마우스좌표\r\n");
      out.write("                    var x = event.clientX;\r\n");
      out.write("                    var y = event.clientY;\r\n");
      out.write("\r\n");
      out.write("                    $(\".dropB\").css(\"display\", \"none\").css(\"left\", x).css(\"top\", y+20).css(\"display\", \"block\");\r\n");
      out.write("                    var starD = e.id.substr(0, 4)+\"-\"+e.id.substr(4, 2)+\"-\"+e.id.substr(6);\r\n");
      out.write("                    $(\"[name=startDate]\").val(starD);\r\n");
      out.write("\r\n");
      out.write("                }\r\n");
      out.write("                \r\n");
      out.write("\r\n");
      out.write("        </script>\r\n");
      out.write("        \r\n");
      out.write("    \r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("  <div class='cal-divB'>\r\n");
      out.write("        <div class=\"infoB\">\r\n");
      out.write("        </div>\r\n");
      out.write("        <br/>\r\n");
      out.write("        <table class=\"tableB table\">\r\n");
      out.write("        \r\n");
      out.write("        </table>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"dropdown-menu dropB \"><p>X</p>\r\n");
      out.write("            <button class=\"dropdown-item btn btn-primary\" data-toggle=\"modal\" data-target=\"#insertSchedule\">일정 등록</button>\r\n");
      out.write("            <button class=\"dropdown-item\">To do List</button>\r\n");
      out.write("            <button class=\"dropdown-item\">더보기</button>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("          <!-- 일정등록 모달 -->\r\n");
      out.write("          <div class=\"modal\" id=\"insertSchedule\" tabindex=\"-1\">\r\n");
      out.write("            <div class=\"modal-dialog\">\r\n");
      out.write("              <div class=\"modal-content\">\r\n");
      out.write("                <div class=\"modal-header\">\r\n");
      out.write("                  <h5 class=\"modal-title\">일정 등록</h5>\r\n");
      out.write("                  <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n");
      out.write("                    <span aria-hidden=\"true\">&times;</span>\r\n");
      out.write("                  </button>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!-- 등록하는 부분 -->\r\n");
      out.write("                <div class=\"modal-body\">\r\n");
      out.write("                    <form id=\"insertSchedulFrm\">\r\n");
      out.write("                        \r\n");
      out.write("                        <input type=\"text\" class=\"datepick\" name=\"startDate\">  ~  \r\n");
      out.write("                        <input type=\"text\" class=\"datepick\" name=\"endDate\">\r\n");
      out.write("                        <br/>\r\n");
      out.write("\r\n");
      out.write("                        <input type=\"text\" class=\"marginB\" name=\"content\" style=\"width: 300px;\" placeholder=\"내용 입력\">\r\n");
      out.write("                        <br/>\r\n");
      out.write("                        \r\n");
      out.write("                        <label for=\"hidden-input\">형광펜 색상 선택 : </label>\r\n");
      out.write("                        <input type=\"hidden\" id=\"hidden-input\" class=\"demo\" name=\"colorCode\" value=\"#db913d\">\r\n");
      out.write("                        <br/>\r\n");
      out.write("\r\n");
      out.write("                        <input type=\"checkbox\" name=\"timeOpt\" id=\"timeOpt\">\r\n");
      out.write("                        <label for=\"timeOpt\">시간추가 : </label>\r\n");
      out.write("\r\n");
      out.write("                        <br/>\r\n");
      out.write("\r\n");
      out.write("                        <input type=\"checkbox\" name=\"dYN\" id=\"dYN\">\r\n");
      out.write("                        <label for=\"dYN\">디데이 일정으로 등록하기</label>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <div class=\"modal-footer\">\r\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-primary\">등록하기</button>\r\n");
      out.write("                  <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">닫기</button>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
