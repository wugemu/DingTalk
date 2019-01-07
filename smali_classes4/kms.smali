.class public abstract Lkms;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkms$a;
    }
.end annotation


# static fields
.field public static final NONE:Lkms;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lkms$1;

    invoke-direct {v0}, Lkms$1;-><init>()V

    sput-object v0, Lkms;->NONE:Lkms;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static factory(Lkms;)Lkms$a;
    .locals 1
    .param p0, "listener"    # Lkms;

    .prologue
    .line 57
    new-instance v0, Lkms$2;

    invoke-direct {v0, p0}, Lkms$2;-><init>(Lkms;)V

    return-object v0
.end method


# virtual methods
.method public callEnd(Lkmi;)V
    .locals 0
    .param p1, "call"    # Lkmi;

    .prologue
    .line 270
    return-void
.end method

.method public callFailed(Lkmi;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lkmi;
    .param p2, "ioe"    # Ljava/io/IOException;

    .prologue
    .line 278
    return-void
.end method

.method public callStart(Lkmi;)V
    .locals 0
    .param p1, "call"    # Lkmi;

    .prologue
    .line 73
    return-void
.end method

.method public connectEnd(Lkmi;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 0
    .param p1, "call"    # Lkmi;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "protocol"    # Lokhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 139
    return-void
.end method

.method public connectFailed(Lkmi;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lkmi;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "protocol"    # Lokhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "ioe"    # Ljava/io/IOException;

    .prologue
    .line 151
    return-void
.end method

.method public connectStart(Lkmi;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0
    .param p1, "call"    # Lkmi;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 105
    return-void
.end method

.method public connectionAcquired(Lkmi;Lkml;)V
    .locals 0
    .param p1, "call"    # Lkmi;
    .param p2, "connection"    # Lkml;

    .prologue
    .line 160
    return-void
.end method

.method public connectionReleased(Lkmi;Lkml;)V
    .locals 0
    .param p1, "call"    # Lkmi;
    .param p2, "connection"    # Lkml;

    .prologue
    .line 171
    return-void
.end method

.method public dnsEnd(Lkmi;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "call"    # Lkmi;
    .param p2, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkmi;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p3, "inetAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    return-void
.end method

.method public dnsStart(Lkmi;Ljava/lang/String;)V
    .locals 0
    .param p1, "call"    # Lkmi;
    .param p2, "domainName"    # Ljava/lang/String;

    .prologue
    .line 85
    return-void
.end method

.method public requestBodyEnd(Lkmi;J)V
    .locals 0
    .param p1, "call"    # Lkmi;
    .param p2, "byteCount"    # J

    .prologue
    .line 215
    return-void
.end method

.method public requestBodyStart(Lkmi;)V
    .locals 0
    .param p1, "call"    # Lkmi;

    .prologue
    .line 207
    return-void
.end method

.method public requestHeadersEnd(Lkmi;Lknc;)V
    .locals 0
    .param p1, "call"    # Lkmi;
    .param p2, "request"    # Lknc;

    .prologue
    .line 194
    return-void
.end method

.method public requestHeadersStart(Lkmi;)V
    .locals 0
    .param p1, "call"    # Lkmi;

    .prologue
    .line 183
    return-void
.end method

.method public responseBodyEnd(Lkmi;J)V
    .locals 0
    .param p1, "call"    # Lkmi;
    .param p2, "byteCount"    # J

    .prologue
    .line 261
    return-void
.end method

.method public responseBodyStart(Lkmi;)V
    .locals 0
    .param p1, "call"    # Lkmi;

    .prologue
    .line 250
    return-void
.end method

.method public responseHeadersEnd(Lkmi;Lkne;)V
    .locals 0
    .param p1, "call"    # Lkmi;
    .param p2, "response"    # Lkne;

    .prologue
    .line 238
    return-void
.end method

.method public responseHeadersStart(Lkmi;)V
    .locals 0
    .param p1, "call"    # Lkmi;

    .prologue
    .line 227
    return-void
.end method

.method public secureConnectEnd(Lkmi;Lkmu;)V
    .locals 0
    .param p1, "call"    # Lkmi;
    .param p2, "handshake"    # Lkmu;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 128
    return-void
.end method

.method public secureConnectStart(Lkmi;)V
    .locals 0
    .param p1, "call"    # Lkmi;

    .prologue
    .line 120
    return-void
.end method
