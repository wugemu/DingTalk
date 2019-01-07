.class public final Lorg/android/spdy/SpdyRequest;
.super Ljava/lang/Object;
.source "SpdyRequest.java"


# static fields
.field public static final GET_METHOD:Ljava/lang/String; = "GET"

.field public static final POST_METHOD:Ljava/lang/String; = "POST"


# instance fields
.field private connectionTimeoutMs:I

.field private domain:Ljava/lang/String;

.field private extHead:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private port:I

.field private priority:Lorg/android/spdy/RequestPriority;

.field private proxyIp:Ljava/lang/String;

.field private proxyPort:I

.field private requestTimeoutMs:I

.field private retryTimes:I

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "0.0.0.0"

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->proxyIp:Ljava/lang/String;

    .line 24
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->proxyPort:I

    .line 28
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 29
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 30
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->retryTimes:I

    .line 109
    iput-object p1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    .line 110
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->domain:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 113
    iget v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    if-gez v0, :cond_0

    .line 114
    invoke-virtual {p1}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 116
    :cond_0
    iput-object p2, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    .line 118
    sget-object v0, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lorg/android/spdy/RequestPriority;III)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "proxyIp"    # Ljava/lang/String;
    .param p5, "proxyPort"    # I
    .param p6, "method"    # Ljava/lang/String;
    .param p7, "priority"    # Lorg/android/spdy/RequestPriority;
    .param p8, "requestTimeoutMs"    # I
    .param p9, "connectionTimeoutMs"    # I
    .param p10, "retryTimes"    # I

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "0.0.0.0"

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->proxyIp:Ljava/lang/String;

    .line 24
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->proxyPort:I

    .line 28
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 29
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 30
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->retryTimes:I

    .line 34
    iput-object p1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->domain:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    .line 37
    iput p3, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 38
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 39
    iput-object p4, p0, Lorg/android/spdy/SpdyRequest;->proxyIp:Ljava/lang/String;

    .line 40
    iput p5, p0, Lorg/android/spdy/SpdyRequest;->proxyPort:I

    .line 42
    :cond_0
    iput-object p6, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    .line 44
    iput-object p7, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 45
    if-nez p7, :cond_1

    .line 46
    sget-object v0, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 48
    :cond_1
    iput p8, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 49
    iput p9, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 50
    iput p10, p0, Lorg/android/spdy/SpdyRequest;->retryTimes:I

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;ILjava/lang/String;Lorg/android/spdy/RequestPriority;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "priority"    # Lorg/android/spdy/RequestPriority;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "0.0.0.0"

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->proxyIp:Ljava/lang/String;

    .line 24
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->proxyPort:I

    .line 28
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 29
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 30
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->retryTimes:I

    .line 57
    iput-object p1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->domain:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    .line 60
    iput p3, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 61
    iput-object p4, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    .line 63
    iput-object p5, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 64
    if-nez p5, :cond_0

    .line 65
    sget-object v0, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 67
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "0.0.0.0"

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->proxyIp:Ljava/lang/String;

    .line 24
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->proxyPort:I

    .line 28
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 29
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 30
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->retryTimes:I

    .line 198
    iput-object p1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    .line 199
    iput-object p2, p0, Lorg/android/spdy/SpdyRequest;->domain:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 202
    iget v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    if-gez v0, :cond_0

    .line 203
    invoke-virtual {p1}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 205
    :cond_0
    iput-object p3, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    .line 207
    sget-object v0, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lorg/android/spdy/RequestPriority;III)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "proxyIp"    # Ljava/lang/String;
    .param p6, "proxyPort"    # I
    .param p7, "method"    # Ljava/lang/String;
    .param p8, "priority"    # Lorg/android/spdy/RequestPriority;
    .param p9, "requestTimeoutMs"    # I
    .param p10, "connectionTimeoutMs"    # I
    .param p11, "retryTimes"    # I

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "0.0.0.0"

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->proxyIp:Ljava/lang/String;

    .line 24
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->proxyPort:I

    .line 28
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 29
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 30
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->retryTimes:I

    .line 123
    iput-object p1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    .line 124
    iput-object p2, p0, Lorg/android/spdy/SpdyRequest;->domain:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    .line 126
    iput p4, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 127
    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 128
    iput-object p5, p0, Lorg/android/spdy/SpdyRequest;->proxyIp:Ljava/lang/String;

    .line 129
    iput p6, p0, Lorg/android/spdy/SpdyRequest;->proxyPort:I

    .line 131
    :cond_0
    iput-object p7, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    .line 133
    iput-object p8, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 134
    if-nez p8, :cond_1

    .line 135
    sget-object v0, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 137
    :cond_1
    iput p9, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 138
    iput p10, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 139
    iput p11, p0, Lorg/android/spdy/SpdyRequest;->retryTimes:I

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/android/spdy/RequestPriority;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "priority"    # Lorg/android/spdy/RequestPriority;

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "0.0.0.0"

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->proxyIp:Ljava/lang/String;

    .line 24
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->proxyPort:I

    .line 28
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 29
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 30
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->retryTimes:I

    .line 146
    iput-object p1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    .line 147
    iput-object p2, p0, Lorg/android/spdy/SpdyRequest;->domain:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    .line 149
    iput p4, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 150
    iput-object p5, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    .line 152
    iput-object p6, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 153
    if-nez p6, :cond_0

    .line 154
    sget-object v0, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 156
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lorg/android/spdy/RequestPriority;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "priority"    # Lorg/android/spdy/RequestPriority;

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "0.0.0.0"

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->proxyIp:Ljava/lang/String;

    .line 24
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->proxyPort:I

    .line 28
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 29
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 30
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->retryTimes:I

    .line 159
    iput-object p1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    .line 160
    iput-object p2, p0, Lorg/android/spdy/SpdyRequest;->domain:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 163
    iget v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    if-gez v0, :cond_0

    .line 164
    invoke-virtual {p1}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 166
    :cond_0
    iput-object p3, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    .line 168
    iput-object p4, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 169
    if-nez p4, :cond_1

    .line 170
    sget-object v0, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 172
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "priority"    # Lorg/android/spdy/RequestPriority;
    .param p5, "requestTimeoutMs"    # I
    .param p6, "connectionTimeoutMs"    # I

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "0.0.0.0"

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->proxyIp:Ljava/lang/String;

    .line 24
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->proxyPort:I

    .line 28
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 29
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 30
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->retryTimes:I

    .line 176
    iput-object p1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    .line 177
    iput-object p2, p0, Lorg/android/spdy/SpdyRequest;->domain:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 180
    iget v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    if-gez v0, :cond_0

    .line 181
    invoke-virtual {p1}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 183
    :cond_0
    iput-object p3, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    .line 185
    iput-object p4, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 186
    if-nez p4, :cond_1

    .line 187
    sget-object v0, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 189
    :cond_1
    iput p5, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 190
    iput p6, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "priority"    # Lorg/android/spdy/RequestPriority;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "0.0.0.0"

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->proxyIp:Ljava/lang/String;

    .line 24
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->proxyPort:I

    .line 28
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 29
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 30
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->retryTimes:I

    .line 70
    iput-object p1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->domain:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 74
    iget v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    if-gez v0, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 77
    :cond_0
    iput-object p2, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    .line 79
    iput-object p3, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 80
    if-nez p3, :cond_1

    .line 81
    sget-object v0, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 83
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "priority"    # Lorg/android/spdy/RequestPriority;
    .param p4, "requestTimeoutMs"    # I
    .param p5, "connectionTimeoutMs"    # I

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "0.0.0.0"

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->proxyIp:Ljava/lang/String;

    .line 24
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->proxyPort:I

    .line 28
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 29
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 30
    iput v1, p0, Lorg/android/spdy/SpdyRequest;->retryTimes:I

    .line 87
    iput-object p1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    .line 88
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->domain:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 91
    iget v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    if-gez v0, :cond_0

    .line 92
    invoke-virtual {p1}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    .line 94
    :cond_0
    iput-object p2, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    .line 96
    iput-object p3, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 97
    if-nez p3, :cond_1

    .line 98
    sget-object v0, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iput-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    .line 100
    :cond_1
    iput p4, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    .line 101
    iput p5, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    .line 102
    return-void
.end method

.method private getPath()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v0, "path":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_0
    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 247
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public final addHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 225
    return-void
.end method

.method public final getAuthority()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/android/spdy/SpdyRequest;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->proxyIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/android/spdy/SpdyRequest;->proxyPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getConnectionTimeoutMs()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lorg/android/spdy/SpdyRequest;->connectionTimeoutMs:I

    return v0
.end method

.method final getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/android/spdy/SpdyRequest;->domain:Ljava/lang/String;

    return-object v0
.end method

.method final getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 253
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 254
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, ":path"

    invoke-direct {p0}, Lorg/android/spdy/SpdyRequest;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string/jumbo v1, ":method"

    iget-object v2, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string/jumbo v1, ":version"

    const-string/jumbo v2, "HTTP/1.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string/jumbo v1, ":host"

    iget-object v2, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string/jumbo v1, ":scheme"

    iget-object v2, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 261
    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->extHead:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 263
    :cond_0
    return-object v0
.end method

.method final getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/android/spdy/SpdyRequest;->host:Ljava/lang/String;

    return-object v0
.end method

.method final getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/android/spdy/SpdyRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method final getPort()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    if-gez v0, :cond_0

    const/16 v0, 0x50

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/android/spdy/SpdyRequest;->port:I

    goto :goto_0
.end method

.method final getPriority()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/android/spdy/SpdyRequest;->priority:Lorg/android/spdy/RequestPriority;

    invoke-virtual {v0}, Lorg/android/spdy/RequestPriority;->getPriorityInt()I

    move-result v0

    return v0
.end method

.method final getProxyIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/android/spdy/SpdyRequest;->proxyIp:Ljava/lang/String;

    return-object v0
.end method

.method final getProxyPort()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lorg/android/spdy/SpdyRequest;->proxyPort:I

    return v0
.end method

.method public final getRequestTimeoutMs()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lorg/android/spdy/SpdyRequest;->requestTimeoutMs:I

    return v0
.end method

.method public final getRetryTimes()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lorg/android/spdy/SpdyRequest;->retryTimes:I

    return v0
.end method

.method final getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    return-object v0
.end method

.method final getUrlPath()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v0, "path":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/spdy/SpdyRequest;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/android/spdy/SpdyRequest;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lorg/android/spdy/SpdyRequest;->domain:Ljava/lang/String;

    .line 293
    return-void
.end method
