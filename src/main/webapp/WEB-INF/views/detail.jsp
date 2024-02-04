<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>세부페이지</title>
    <link rel="stylesheet" type="text/css" href="${context}/css/detail.css">
</head>
<body>
<header>


    <div class="container">
        <div class="topcontainer">
            <div class="logo" onclick="location.href='${context}/boards'">
                <img class="logoimag" src="https://everytime.kr/images/new/nav.logo.png" />
                <p>
                    <span>에브리타임</span>
                    <span>한동대</span>
                </p>
            </div>

            <div class="menu">
                <ul>
                    <li><a href="${context}/boards" class="chosen">게시판</a></li>
                    <li><a href="">시간표</a></li>
                    <li><a href="">강의실</a></li>
                    <li><a href="">학점계산기</a></li>
                    <li><a href="">친구</a></li>
                    <li><a href="${context}/books">책방</a></li>
                    <li><a href="">캠퍼스픽</a></li>
                </ul>
            </div>
            <div class="icon">
                <img src="${context}/image/user.png" />
                <img src="${context}/image/chat.png" />
            </div>
        </div>
    </div>
</header>


<%--<div class="headerContainer">
    <div class="headUl">
        <div class="headUlList">
            <div class="listContainer"></div>
            <ul class="firstheadUl">
                <li class="selectedUl">자유게시판 <span class="dot">•</span>
                </li>
                <li>비밀게시판</li>
                <li>졸업생게시판</li>
                <li>새내기게시판</li>
                <li>시사·이슈</li>
                <li>장터게시판</li>
                <li>정보게시판</li>
                <li>홍보게시판</li>
            </ul>
        </div>

        <div class="headUlList">
            <ul class="secondheadUl">
                <li>동아리·학회</li>
            </ul>
        </div>

        <div class="headUlList">
            <ul class="thirdheadUl">
                <li>취업·진로</li>
            </ul>
        </div>

        <div class="headUlList">
            <ul class="fourthheadUl">
                <li>전산전자공학부 게시판</li>
                <li>생명과학부 게시판</li>
                <li>상사학부 게시판</li>
            </ul>
        </div>

        <div class="headUlList">
            <ul class="fifthheadUl">
                <li>연애/사랑이야기</li>
                <li>성 게시판</li>
                <li>콘디</li>
                <li>넷플릭스/왓챠 게시판</li>
                <li>끝말잇기</li>
                <li>유머수용소</li>
                <li>고양이게시판</li>
                <li>퀴어 게시판(사랑, 고민··)</li>
            </ul>
        </div>

        <div class="headUlList">
            <ul class="sixthheadUl">
                <li>큐피트게시판</li>
                <li>알바생 게시판</li>
                <li>게시판찾기</li>
            </ul>
        </div>
    </div>
</div>--%>
<section>
    <div class="post">
        <div class="postbar">
            <h1 onclick="location.href='${context}/boards'">자유게시판</h1>
        </div>
        <div class="content">
            <div id="self">
                <img src="https://cf-fpi.everytime.kr/0.png" id="picture">
                <h4 id="name">익명</h4>
                <p id="time">지금막</p>
            </div>
            <h2>${post.getTitle()}</h2>
            <p>${post.getContent()}</p>

            <div class="social-buttons">
                <div class="like-button">
                    <span class="like-icon">👍</span>
                    <span class="like-count">0</span>
                </div>
                <div class="comment-button">
                    <span class="comment-icon">💬</span>
                    <span class="comment-count">0</span>
                </div>
                <div class="star-button">
                    <span class="star-icon">⭐</span>
                    <span class="star-count">0</span>
                </div>
            </div>
            <div class="click-button">
                <div class="like-clik">
                    <h6>👍공감</h6>
                </div>
                <div class="star-clik">
                    <h6>⭐스크랩</h6>
                </div>

            </div>

        </div>

        <div class="comment">

                <c:forEach items="${post.getCommentList()}" var="comment">
                    <form class="comment-container">
                    <div id="commentSelf">
                        <img src="https://cf-fpi.everytime.kr/0.png" id="commentPicture">
                        <h4 id="commentName">익명</h4>
                    </div>
                <p>${comment.getContent()}</p>
                    </form>
            </c:forEach>


                <form class="commentInput" action="${context}/posts/${post.getId()}/comments" method="post">
                    <input type="text" name="content" placeholder="댓글을 입력해 주세요">
                    <label class="formCheckLabel"><input id="isAnonymousCheckbox" class="formCheckInput" name="isAnonymous" type="checkbox" value="1">익명</label>
                    <input class="pencil" type="submit" value="✏️">
                </form>

        </div>
        <div class="option">
            <ul>
                <li><a href="${context}/boards" class="mainmenu">三 글 목록</a></li>
                <li><a href="" class="update">👻 수정하기</a></li>
                <li><a href="" class="delete">💀 삭제하기</a></li>
            </ul>
        </div>

    </div>
    <div class="rightColumn">
        <table class="hotBoardTable">
            <tbody>
            <tr>
                <th>
                    <span class="hotBoardTitle">HOT 게시물</span>
                    <span>더보기</span>
                </th>

            </tr>
            <tr>
                <td>
                    <span>예대 제목 오타난 거 아닌가요</span>
                    <span class="date">01/15 16:14</span>
                </td>
            </tr>
            <tr>
                <td>
                    <span>예대 제목 오타난 거 아닌가요</span>
                    <span class="date">01/15 16:14</span>
                </td>
            </tr>
            <tr>
                <td>
                    <span>예대 제목 오타난 거 아닌가요</span>
                    <span class="date">01/15 16:14</span>
                </td>
            </tr>
            <tr>
                <td>
                    <span>예대 제목 오타난 거 아닌가요</span>
                    <span class="date">01/15 16:14</span>
                </td>
            </tr>
            </tbody>
        </table>

        <table class="hotBoardTable" id="hotBoardTable2">
            <tbody>
            <tr>
                <th>
                    <span class="hotBoardTitle">Best 게시판</span>
                    <span>더보기</span>
                </th>
            </tr>
            </tbody>
        </table>

        <table class="hotBoardTable" id="hotBoardTable3">
            <tbody>
            <tr>
                <th>
                    <span class="hotBoardTitle">최근 강의평</span>
                    <span>더보기</span>
                </th>
            </tr>
            <tr>
                <td>
                    <div class="imgContainer"><img src="/SpringMVC_war_exploded/image/star.png"><img
                            src="/SpringMVC_war_exploded/image/star.png"><img
                            src="/SpringMVC_war_exploded/image/star.png"><img
                            src="/SpringMVC_war_exploded/image/star.png"><img
                            src="/SpringMVC_war_exploded/image/star.png"></div>
                    <div class="title">인간커뮤니케이션:신순철</div>
                    <div class="contents">신교수님은 모두까기 인형같다. 기독교, 타종교, 교수자, 학생, 진화론, 목사님등 모드를 차별없이 이판하기 때문이다. 아무
                        이유없이 비</div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="imgContainer"><img src="/SpringMVC_war_exploded/image/star.png"><img
                            src="/SpringMVC_war_exploded/image/star.png"><img
                            src="/SpringMVC_war_exploded/image/star.png"><img
                            src="/SpringMVC_war_exploded/image/star.png"><img
                            src="/SpringMVC_war_exploded/image/star.png"></div>
                    <div class="title">커뮤니케이션 이론: 주재원</div>
                    <div class="contents">23-2학기부터는 서술형에서 객관식으로 시험 양식이 바뀌었다. 시험의 난이도가 높지는 않으나 문제와 선지가 모우 영어라서 힘들
                    </div>

                </td>
            </tr>
            <tr>
                <td>
                    <div class="imgContainer"><img src="/SpringMVC_war_exploded/image/star.png"><img
                            src="/SpringMVC_war_exploded/image/star.png"><img
                            src="/SpringMVC_war_exploded/image/star.png"><img
                            src="/SpringMVC_war_exploded/image/star.png"><img
                            src="/SpringMVC_war_exploded/image/star.png"></div>
                    <div class="title">저널리즘의 이해: 주재원</div>
                    <div class="contents">시험과 과제가 쉬워서 부담없이 좋은 학점을 받을 수 있다. 발표 팀플이 두 번 있는데 크게 부담이 되지는 않지만 팀플을 하고
                        다름 팀의 발</div>

                </td>
            </tr>
            </tbody>
        </table>

        <div>

        </div>
    </div>
</section>
</body>

</html>