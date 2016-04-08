<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <tr>
                        <td class="col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="<%=request.getAttribute("image") %>" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="./product?productId=<%=request.getAttribute("Id")%>"><%=request.getAttribute("name")%></a></h4>
                            </div>
                        </div></td>
                        <td class="col-md-1 text-center"><strong><%=request.getAttribute("price")%></strong></td>
                        <td class="col-md-1">
                        <button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></td>
                    </tr>