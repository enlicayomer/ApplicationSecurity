<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Bootstrap -->

<link href="res/css/bootstrap.min.css" rel="stylesheet">
<link href="res/css/style.css" rel="stylesheet">
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
 <div class="mail-box">
                  <aside class="sm-side">
                      <div class="user-head">
                          <a class="inbox-avatar" href="javascript:;">
                              <img  width="64" hieght="60" src="http://www.iconhot.com/icon/png/brush-intense-messenger/256/msn-web-2.png">
                          </a>
                          <div class="user-name">
                              <h4><a href="#">Web Security Project</a></h4>
                              <span><a href="#">CÜ Bilgisayar Mühendisliği</a></span>
                          </div>
                          
                      </div>
                      <div class="inbox-body">
                      
                     	<c:if test="${isLogin=='true'}">
                          <a href="#myModal" data-toggle="modal"  title="Compose"    class="btn btn-compose">
                              İçerik Ekle
                          </a>
                        </c:if>
                        
                          <!-- Modal -->
                          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade" style="display: none;">
                              <div class="modal-dialog">
                                  <div class="modal-content">
                                      <div class="modal-header">
                                          <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                          <h4 class="modal-title">İçerik Bilgileri</h4>
                                      </div>
                                      <div class="modal-body">
                                          <form method="POST" class="form-horizontal" action="addcontext">
                                              <div class="form-group">
                                                  <label class="col-lg-2 control-label">Konu</label>
                                                  <div class="col-lg-10">
                                                      <input name="konu" type="text" placeholder="" id="inputEmail1" class="form-control">
                                                  </div>
                                              </div>
                                              <div class="form-group">
                                                  <label class="col-lg-2 control-label">Başlık</label>
                                                  <div class="col-lg-10">
                                                      <input name="baslik" type="text" placeholder="" id="cc" class="form-control">
                                                  </div>
                                              </div>
                                              
                                              <div class="form-group">
                                                  <label class="col-lg-2 control-label">İçerik</label>
                                                  <div class="col-lg-10">
                                                      <textarea name="icerik" rows="10" cols="30" class="form-control" id="" name=""></textarea>
                                                  </div>
                                              </div>

                                              <div class="form-group">
                                                  <div class="col-lg-offset-2 col-lg-10">
                                                      <span class="btn green fileinput-button">
                                                        <i class="fa fa-plus fa fa-white"></i>
                                                        <span>Resim Ekle</span>
                                                        <input type="file" name="files[]" multiple="">
                                                      </span>
                                                      <button class="btn btn-send" type="submit">Paylaş</button>
                                                  </div>
                                              </div>
                                          </form>
                                      </div>
                                  </div><!-- /.modal-content -->
                              </div><!-- /.modal-dialog -->
                          </div><!-- /.modal -->
                      </div>
                      <ul class="inbox-nav inbox-divider">
                          <li>
                              <a href="#"><i class="fa fa-coffee"></i> Java <span class="label label-danger pull-right">2</span></a>

                          </li>
                          <li>
                              <a href="#"><i class="fa fa-windows"></i> .NET</a>
                          </li>
                          <li>
                              <a href="#"><i class="fa fa-cube"></i> PHP</a>
                          </li>
                          <li>
                              <a href="#"><i class=" fa fa-plug"></i> SQL <span class="label label-info pull-right">30</span></a>
                          </li>
                          <li>
                              <a href="#"><i class=" fa fa-file"></i> File System </a>
                          </li>
						  <li>
                              <a href="#"><i class=" fa fa-link"></i> Web Services </a>
                          </li>
                      </ul>


                      <div class="inbox-body text-center">
                          <div class="btn-group">
                              <a class="btn mini btn-primary" href="javascript:;">
                                  <i class="fa fa-plus"> Yeni Konu Ekle</i>
                              </a>
                          </div>
                         
                      </div>

                  </aside>
                  <aside class="lg-side">
                      <div class="inbox-head">
                          <h3>İçerikler</h3>
                          <form action="#" class="pull-right position">
                              <div class="input-append">
                                  
                               <a href="#giris" data-toggle="modal">   <button class="btn sr-btn" type="button"> Giriş </i></button></a>
								  <a href="#kaydol" data-toggle="modal"><button class="btn sr-btn" type="button"> Kaydol </i></button></a>
                              </div>
                          </form>
                      </div>
					  
					  
					  
					  
					  <!-- Moldal start-->
					  <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="giris" class="modal fade" style="display: none;">
                              <div class="modal-dialog">
                                  <div class="modal-content">
                                      <div class="modal-header">
                                          <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                          <h4 class="modal-title">Giriş Yap</h4>
                                      </div>
                                      <div class="modal-body">
                                          <form method="POST" class="form-horizontal"  action="login">
                                              <div class="form-group">
                                                  <label class="col-lg-2 control-label">E-mail</label>
                                                  <div class="col-lg-10">
                                                      <input name="mail" type="text" placeholder="" id="inputEmail1" class="form-control">
                                                  </div>
                                              </div>
                                              <div class="form-group">
                                                  <label class="col-lg-2 control-label">Şifre</label>
                                                  <div class="col-lg-10">
                                                      <input name="sifre" type="password" placeholder="" id="cc" class="form-control">
                                                  </div>
                                              </div>
                                              
                                           

                                              <div class="form-group">
                                                  <div class="col-lg-offset-2 col-lg-10">
                                                     
                                                      <button class="btn btn-send" type="submit">Giriş</button>
                                                  </div>
                                              </div>
                                          </form>
                                      </div>
                                  </div><!-- /.modal-content -->
                              </div><!-- /.modal-dialog -->
                          </div><!-- /.modal -->
					  <!-- Moldal end-->
					  
					  
					  <!-- kaydol Modal Start-->
					  <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="kaydol" class="modal fade" style="display: none;">
                              <div class="modal-dialog">
                                  <div class="modal-content">
                                      <div class="modal-header">
                                          <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                          <h4 class="modal-title">Kaydol</h4>
                                      </div>
                                      <div class="modal-body">
                                          <form action="register" method="post" role="form" class="form-horizontal">
										  <div class="form-group">
                                                  <label class="col-lg-2 control-label">Ad Soyad</label>
                                                  <div class="col-lg-10">
                                                      <input name="ad_soyad" type="text" placeholder="ad soyad" id="inputEmail1" class="form-control">
                                                  </div>
                                              </div>
                                              <div class="form-group">
                                                  <label class="col-lg-2 control-label">E-mail</label>
                                                  <div class="col-lg-10">
                                                      <input name="email" type="text" placeholder="e-mail" id="inputEmail1" class="form-control">
                                                  </div>
                                              </div>
                                              <div class="form-group">
                                                  <label class="col-lg-2 control-label">Şifre</label>
                                                  <div class="col-lg-10">
                                                      <input name="sifre" type="text" placeholder="sifre" id="cc" class="form-control">
                                                  </div>
                                              </div>
                                              <div class="form-group">
                                                  <label class="col-lg-2 control-label">Şifre Tekrar</label>
                                                  <div class="col-lg-10">
                                                      <input name="sifreTekrar" type="text" placeholder="sifre tekrar" id="cc" class="form-control">
                                                  </div>
                                              </div>
                                           
                                              <div class="form-group">
                                                  <div class="col-lg-offset-2 col-lg-10">
                                                     
                                                      <button class="btn btn-send" type="submit">Kaydol</button>
                                                  </div>
                                              </div>
                                          </form>
                                      </div>
                                  </div><!-- /.modal-content -->
                              </div><!-- /.modal-dialog -->
                          </div><!-- /.modal -->
					  <!-- kaydol Modal end-->
					  
					  
					  
                      <div class="inbox-body">
                         <div class="mail-option">
<!--                              <div class="chk-all"> -->
<!--                                  <input type="checkbox" class="mail-checkbox mail-group-checkbox"> -->
<!--                                  <div class="btn-group"> -->
<!--                                      <a data-toggle="dropdown" href="#" class="btn mini all" aria-expanded="false"> -->
<!--                                          All -->
<!--                                          <i class="fa fa-angle-down "></i> -->
<!--                                      </a> -->
<!--                                      <ul class="dropdown-menu"> -->
<!--                                          <li><a href="#"> None</a></li> -->
<!--                                          <li><a href="#"> Read</a></li> -->
<!--                                          <li><a href="#"> Unread</a></li> -->
<!--                                      </ul> -->
<!--                                  </div> -->
<!--                              </div> -->

<!--                              <div class="btn-group"> -->
<!--                                  <a data-original-title="Refresh" data-placement="top" data-toggle="dropdown" href="#" class="btn mini tooltips"> -->
<!--                                      <i class=" fa fa-refresh"></i> -->
<!--                                  </a> -->
<!--                              </div> -->
<!--                              <div class="btn-group hidden-phone"> -->
<!--                                  <a data-toggle="dropdown" href="#" class="btn mini blue" aria-expanded="false"> -->
<!--                                      More -->
<!--                                      <i class="fa fa-angle-down "></i> -->
<!--                                  </a> -->
<!--                                  <ul class="dropdown-menu"> -->
<!--                                      <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li> -->
<!--                                      <li><a href="#"><i class="fa fa-ban"></i> Spam</a></li> -->
<!--                                      <li class="divider"></li> -->
<!--                                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li> -->
<!--                                  </ul> -->
<!--                              </div> -->
<!--                              <div class="btn-group"> -->
<!--                                  <a data-toggle="dropdown" href="#" class="btn mini blue"> -->
<!--                                      Move to -->
<!--                                      <i class="fa fa-angle-down "></i> -->
<!--                                  </a> -->
<!--                                  <ul class="dropdown-menu"> -->
<!--                                      <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li> -->
<!--                                      <li><a href="#"><i class="fa fa-ban"></i> Spam</a></li> -->
<!--                                      <li class="divider"></li> -->
<!--                                      <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li> -->
<!--                                  </ul> -->
<!--                              </div> -->

<!--                              <ul class="unstyled inbox-pagination"> -->
<!--                                  <li><span>1-50 of 234</span></li> -->
<!--                                  <li> -->
<!--                                      <a class="np-btn" href="#"><i class="fa fa-angle-left  pagination-left"></i></a> -->
<!--                                  </li> -->
<!--                                  <li> -->
<!--                                      <a class="np-btn" href="#"><i class="fa fa-angle-right pagination-right"></i></a> -->
<!--                                  </li> -->
<!--                              </ul> -->
                         </div>
                          <table class="table table-inbox table-hover">
                            <tbody>
                              <tr class="unread">
                                  <td class="inbox-small-cells">
<!--                                       <input type="checkbox" class="mail-checkbox"> -->
                                  </td>
                                  <td class="inbox-small-cells"></td>
                                  <td class="view-message  dont-show">Java Mobile Security</td>
                                  <td class="view-message ">Added a new class: Login Class Fast Site</td>
                                  <td class="view-message  inbox-small-cells"><i class="fa fa-paperclip"></i></td>
                                  <td class="view-message  text-right">9:27 AM</td>
                              </tr>
                              <tr class="unread">
                                  <td class="inbox-small-cells">
<!--                                       <input type="checkbox" class="mail-checkbox"> -->
                                  </td>
                                  <td class="inbox-small-cells"></td>
                                  <td class="view-message dont-show">.NET Reflactor </td>
                                  <td class="view-message">Improve the search presence of WebSite</td>
                                  <td class="view-message inbox-small-cells"></td>
                                  <td class="view-message text-right">Nisan 15</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
<!--                                       <input type="checkbox" class="mail-checkbox"> -->
                                  </td>
                                  <td class="inbox-small-cells"></td>
                                  <td class="view-message dont-show">Web Service Security</td>
                                  <td class="view-message">Last Chance: Upgrade to Pro for </td>
                                  <td class="view-message inbox-small-cells"></td>
                                  <td class="view-message text-right">Nisan 15</td>
                              </tr>
                              
                          </tbody>
                          </table>
                      </div>
                  </aside>
              </div>
</div>



	<!--Import jQuery before materialize.js-->
	<script type="text/javascript" src="res/js/jquery.js"></script>
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

	<script type="text/javascript" src="res/js/bootstrap.js"></script>
	
	<script>
	$("ul.inbox-nav li").on("click", function(){
   $("ul.inbox-nav").find(".active").removeClass("active");
   $(this).parent().addClass("active");
});
	</script>

</body>
</html>