<html>
<head>
    <title>Brawl Stars | HSNU 1481</title>
    <link href="https://www.w3schools.com/w3css/4/w3.css" rel="stylesheet">
    <link href="css/main.css" type="text/css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1" >
    <style>
        .w3-margin > a, .w3-margin > p, .w3-margin > table {
            font-size: 1.2rem;
        }
        .role {
            font-size: 1rem;
        }
    </style>
</head>
<body>
    <div class="content">
        <!-- Navigation -->
        <div class="w3-bar w3-border-bottom">
            <a class="w3-bar-item w3-button" href="/"><span style="color: black !important; word-spacing: 1px;">HSNU</span> <b class="BlueGradient" style="color: royalblue;">1481</b></a> <a class="w3-bar-item w3-button w3-text-black" href="/news">新聞</a> <a class="w3-bar-item w3-button w3-text-black" href="/curriculum">課表</a> <a class="w3-bar-item w3-button w3-text-black" href="/forum">論壇</a> <a class="w3-bar-item w3-button w3-text-black" href="/product">產品</a> <a class="w3-bar-item w3-button w3-text-black w3-right" href="/me"><i class="fas fa-user-circle" style="font-size: 1.5rem;"></i></a>
        </div>
        <div class="w3-margin">
            <h2 style="color: #2e6c80;">荒野亂鬥&nbsp;<strong>Brawl Stars</strong></h2>
            <p><a title="加入我們的戰隊 JOIN OUR CLUB" href="https://link.brawlstars.com/invite/band/cnt?tag=9C8JJU8&amp;token=zre88mzh">加入我們的戰隊 JOIN OUR CLUB</a></p>
            <p id="trophies" style="color: RoyalBlue"></p>
            <p id="members" style="color: green"></p>
            <div id="list">
                
            </div>
        </div>
    </div>
    <script>
        BS_Club("9C8JJU8").then(r => {
            document.getElementById("trophies").innerHTML = "獎杯："+r.trophies;
            document.getElementById("members").innerHTML = "線上人數："+r.onlineMembers+" / "+r.membersCount;
            listMembers(r.members);
        });
        
        function BS_Player(tag) {
            return (fetch("https://api.brawlapi.cf/v1/player?tag="+tag, {
                headers:{
                    "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkaXNjb3JkX3VzZXJfaWQiOiI2MDc4NDc0MzkyMzU1NDcxMzciLCJyZWFzb24iOiJIU05VIDE0ODEgV2Vic2l0ZSIsInZlcnNpb24iOjEsImlhdCI6MTU2NDk5MjcxN30.fWwL6qqafEdjppBuK9r9YC-KW--g_QFcNQA2UMcqDBo"
                }
            }).then(r=>r.json()))
        }
        function BS_Club(tag) {
            return (fetch("https://api.brawlapi.cf/v1/club?tag="+tag, {
                headers:{
                    "Authorization": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkaXNjb3JkX3VzZXJfaWQiOiI2MDc4NDc0MzkyMzU1NDcxMzciLCJyZWFzb24iOiJIU05VIDE0ODEgV2Vic2l0ZSIsInZlcnNpb24iOjEsImlhdCI6MTU2NDk5MjcxN30.fWwL6qqafEdjppBuK9r9YC-KW--g_QFcNQA2UMcqDBo"
                }
            }).then(r=>r.json()))
        }
        function listMembers(members) {
            var title = document.createElement("p");
            title.innerHTML = "前五名戰隊成員";
            document.getElementById("list").appendChild(title);
            var table = document.createElement("table");
            table.id = "list-table";
            document.getElementById("list").appendChild(table);
            for(var i = 0; i < 5; i++) {
                let wrapper = document.createElement("tr");
                let name = document.createElement("th");
                let trophy = document.createElement("td");
                let role = document.createElement("td");
                
                wrapper.id = members[i].tag;
                name.innerHTML = members[i].name+" ";
                name.style.textAlign = "left";
                trophy.innerHTML = members[i].trophies+" ";
                role.innerHTML = "("+members[i].role+") ";
                role.classList.add("role");
                
                wrapper.appendChild(name);
                wrapper.appendChild(role);
                wrapper.appendChild(trophy);
                document.getElementById("list-table").appendChild(wrapper);
            }
        }
    </script>
</body>
</html>
