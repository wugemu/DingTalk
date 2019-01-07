.class public Lcom/laiwang/protocol/android/i;
.super Ljava/lang/Object;
.source "RealTimeLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/i$a;
    }
.end annotation


# static fields
.field static final a:[B

.field static final b:[B

.field public static c:Ljava/lang/String;

.field public static d:I

.field static e:Ljava/net/InetAddress;

.field private static f:Lcom/laiwang/protocol/android/bu;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:J

.field private static k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string/jumbo v0, "uid"

    sput-object v0, Lcom/laiwang/protocol/android/i;->g:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "version"

    sput-object v0, Lcom/laiwang/protocol/android/i;->h:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "code"

    sput-object v0, Lcom/laiwang/protocol/android/i;->i:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "LWP /lwpsdk\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/i;->a:[B

    .line 38
    const-string/jumbo v0, "zip:true\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/i;->b:[B

    .line 41
    const-string/jumbo v0, "lwlog.laiwang.com"

    sput-object v0, Lcom/laiwang/protocol/android/i;->c:Ljava/lang/String;

    .line 42
    const/16 v0, 0x1388

    sput v0, Lcom/laiwang/protocol/android/i;->d:I

    .line 44
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/laiwang/protocol/android/i;->j:J

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/laiwang/protocol/android/i;->k:Ljava/lang/String;

    return-void
.end method

.method static a()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 138
    sget-object v1, Lcom/laiwang/protocol/android/i;->e:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    .line 140
    :try_start_0
    sget-object v1, Lcom/laiwang/protocol/android/i;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    sput-object v1, Lcom/laiwang/protocol/android/i;->e:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v1, Lcom/laiwang/protocol/android/i;->e:Ljava/net/InetAddress;

    return-object v1

    .line 141
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 142
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "[UDP] InetAddress.getByName error"

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcom/laiwang/protocol/android/bu;)V
    .locals 0
    .param p0, "ioExecutor"    # Lcom/laiwang/protocol/android/bu;

    .prologue
    .line 48
    sput-object p0, Lcom/laiwang/protocol/android/i;->f:Lcom/laiwang/protocol/android/bu;

    .line 49
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    .locals 10
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v5, Lcom/laiwang/protocol/android/i;->f:Lcom/laiwang/protocol/android/bu;

    if-eqz v5, :cond_0

    if-nez p2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {}, Lcom/laiwang/protocol/android/cg;->f()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "uid":Ljava/lang/String;
    invoke-static {v4}, Lcom/laiwang/protocol/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 68
    sget-wide v6, Lcom/laiwang/protocol/android/i;->j:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sget-wide v8, Lcom/laiwang/protocol/android/i;->j:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x1d4c0

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    sget-object v5, Lcom/laiwang/protocol/android/i;->k:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    const-string/jumbo v5, "[UDP] cancel send %s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_2
    sput-object p2, Lcom/laiwang/protocol/android/i;->k:Ljava/lang/String;

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sput-wide v6, Lcom/laiwang/protocol/android/i;->j:J

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Lcom/laiwang/protocol/android/i;->i:Ljava/lang/String;

    invoke-interface {v1, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v5, Lcom/laiwang/protocol/android/i;->g:Ljava/lang/String;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v0, "message"

    .line 78
    .local v0, "MSG":Ljava/lang/String;
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v5, Lcom/laiwang/protocol/android/i;->h:Ljava/lang/String;

    sget-object v6, Lcom/laiwang/protocol/Config;->a:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v5, "vhost"

    sget-object v6, Lcom/laiwang/protocol/Config;->f:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v5, "ua"

    sget-object v6, Lcom/laiwang/protocol/Config;->h:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    if-eqz p1, :cond_3

    .line 83
    const-string/jumbo v5, "uri"

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_3
    const-string/jumbo v5, "net"

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/laiwang/protocol/android/cg;->b(Landroid/content/Context;)Lcom/laiwang/protocol/network/Network$State;

    move-result-object v6

    iget-object v6, v6, Lcom/laiwang/protocol/network/Network$State;->name:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 87
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "json":Ljava/lang/String;
    sget-object v5, Lcom/laiwang/protocol/android/i;->f:Lcom/laiwang/protocol/android/bu;

    new-instance v6, Lcom/laiwang/protocol/android/i$a;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/laiwang/protocol/android/i$a;-><init>([B)V

    invoke-virtual {v5, v6}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/net/URI;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 53
    invoke-static {p2}, Lcom/laiwang/protocol/util/StringUtils;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/laiwang/protocol/android/i;->a(Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method static synthetic a([B)[B
    .locals 1
    .param p0, "x0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p0}, Lcom/laiwang/protocol/android/i;->b([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static b([B)[B
    .locals 5
    .param p0, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 127
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Lcom/laiwang/protocol/android/i;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 128
    array-length v1, p0

    const/16 v2, 0x32

    if-le v1, v2, :cond_0

    .line 129
    invoke-static {p0}, Lcom/laiwang/protocol/util/IOUtils;->zip([B)[B

    move-result-object p0

    .line 130
    sget-object v1, Lcom/laiwang/protocol/android/i;->b:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 132
    :cond_0
    const-string/jumbo v1, "len:%s\n\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 133
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 134
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
