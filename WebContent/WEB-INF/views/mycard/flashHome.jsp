<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <style>
        /*
        #content {
            padding-left: 35%;
            padding-top: 5%;
        }
        */
        h2{
            font-weight: bold;
            /*color: #007bff*/
        }
        </style>

        <h2>学習モードを選択してください</h2>
        <form method="POST" action="${pageContext.request.contextPath}/flashHome">
            <div class="form-check">
                <input class="form-check-input" type="radio" name="url" value="${pageContext.request.contextPath}/flashIt" id="radio2">
                <label class="form-check-label" for="radio2">IT</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="url" value="${pageContext.request.contextPath}/flashInsurance" id="radio3">
                <label class="form-check-label" for="radio3">保険</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="url" value="${pageContext.request.contextPath}/flashBusiness" id="radio4">
                <label class="form-check-label" for="radio4">ビジネス</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="url" value="${pageContext.request.contextPath}/flashOthers" id="radio5">
                <label class="form-check-label" for="radio5">その他</label>
            </div><br>
            <input type="submit" class="btn btn-primary" value="学習開始">
        </form>
        <p><a href="${pageContext.request.contextPath}/index">My単語一覧に戻る</a></p>
    </c:param>
</c:import>
