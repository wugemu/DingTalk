.class public abstract Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;
.super Lcom/alipay/mobile/security/bio/service/local/LocalService;
.source "BioRPCService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/local/LocalService;-><init>()V

    return-void
.end method


# virtual methods
.method public addRequestHeaders(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .param p1, "proxyObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public abstract getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract setRemoteUrl(Ljava/lang/String;)V
.end method
