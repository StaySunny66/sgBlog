// 更新函数
function re_new() {
    document.getElementById('renow').style.display = 'none';
    document.getElementById('wait_new').style.display = 'block';
    var post = new XMLHttpRequest();
    post.open("POST", "../ReNewArticleServlet", true);
    post.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    post.send(
        "name=" + document.getElementById('name').value +
        "&username=" + document.getElementById('username').value +
        "&classId=" + document.getElementById('classid').value +
        "&content=" + document.getElementById('text-content').value+
        "&id=" + document.getElementById('articleId').value
    );
    post.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            console.log("完成！");
            setTimeout(function () {
                document.getElementById('renow').style.display = 'block';
                document.getElementById('wait_new').style.display = 'none';
                document.getElementById('renow').innerText = '完成';
                setTimeout(function () {
                    document.getElementById('renow').innerText =
                        '更新';
                }, 200);
            }, 300);
        } else {
            console.log("错误！");
        }
    }
}


function post() {
    document.getElementById('renow').style.display = 'none';
    document.getElementById('wait_new').style.display = 'block';
    var post = new XMLHttpRequest();
    post.open("POST", "../addArticleServlet", true);
    post.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    post.send(
        "name=" + document.getElementById('name').value +
        "&username=" + document.getElementById('username').value +
        "&classId=" + document.getElementById('classid').value +
        "&content=" + document.getElementById('text-content').value
    );
    post.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            console.log("完成！");
            setTimeout(function () {
                document.getElementById('renow').style.display = 'block';
                document.getElementById('wait_new').style.display = 'none';
                document.getElementById('renow').innerText = '完成';
                setTimeout(function () {
                    document.getElementById('renow').innerText =
                        '更新';
                }, 200);
            }, 300);
        } else {
            console.log("错误！");
        }
    }
}
