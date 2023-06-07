<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2 >${name} の単語一覧</h2>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-3 mb-4">
                    <details open class="type-element">
                        <summary>IT</summary>
                        <c:forEach var="mycard" items="${mycard}">
                            <c:if test="${mycard.type.equals('IT')}">
                                <details class="word-element">
                                    <summary>
                                        <a
                                            href="${pageContext.request.contextPath}/show?id=${mycard.id}">
                                            <c:out value="${mycard.word}" />
                                        </a>
                                    </summary>
                                    <p>
                                        <c:out value="${mycard.mean}" />
                                    </p>
                                </details>
                            </c:if>
                        </c:forEach>
                    </details>
                </div>
                <br>
                <br>
                <div class="col-md-6 col-lg-3 mb-4">
                    <details open class="type-element">
                        <summary>保険</summary>
                        <c:forEach var="mycard" items="${mycard}">
                            <c:if test="${mycard.type.equals('保険')}">
                                <details class="word-element">
                                    <summary>
                                        <a
                                            href="${pageContext.request.contextPath}/show?id=${mycard.id}">
                                            <c:out value="${mycard.word}" />
                                        </a>
                                    </summary>
                                    <p>
                                        <c:out value="${mycard.mean}" />
                                    </p>
                                </details>
                            </c:if>
                        </c:forEach>
                    </details>
                </div>
                <br>
                <div class="col-md-6 col-lg-3 mb-4">
                    <details open class="type-element">
                        <summary>ビジネス</summary>
                        <c:forEach var="mycard" items="${mycard}">
                            <c:if test="${mycard.type.equals('ビジネス')}">
                                <details class="word-element">
                                    <summary>
                                        <a
                                            href="${pageContext.request.contextPath}/show?id=${mycard.id}">
                                            <c:out value="${mycard.word}" />
                                        </a>
                                    </summary>
                                    <p>
                                        <c:out value="${mycard.mean}" />
                                    </p>
                                </details>
                            </c:if>
                        </c:forEach>
                    </details>
                </div>
                <br>
                <div class="col-md-6 col-lg-3 mb-4">
                    <details open class="type-element">
                        <summary>その他</summary>
                        <c:forEach var="mycard" items="${mycard}">
                            <c:if test="${mycard.type.equals('その他')}">
                                <details class="word-element">
                                    <summary>
                                        <a
                                            href="${pageContext.request.contextPath}/show?id=${mycard.id}">
                                            <c:out value="${mycard.word}" />
                                        </a>
                                    </summary>
                                    <p>
                                        <c:out value="${mycard.mean}" />
                                    </p>
                                </details>
                            </c:if>
                        </c:forEach>
                    </details>
                </div>
            </div>
            <div class="text-center">
            <button onclick="location.href='${pageContext.request.contextPath}/new'" class="btn btn-primary" style="margin-left: 70%;">新規単語登録</button>
   </div>
   </div>
    </c:param>
</c:import>