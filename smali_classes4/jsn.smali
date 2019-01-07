.class public final Ljsn;
.super Ljrn;
.source "WXSuccessCallback.java"

# interfaces
.implements Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method public constructor <init>(Ljro;)V
    .locals 0
    .param p1, "promise"    # Ljro;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljrn;-><init>(Ljro;)V

    .line 12
    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 25
    invoke-static {p1}, Ljsn;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 26
    .local v0, "wrapper":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "status"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "SUCCESS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 16
    .line 1033
    iget-object v0, p0, Ljrn;->a:Ljro;

    .line 16
    invoke-direct {p0, p1}, Ljsn;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljro;->a(Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public final invokeAndKeepAlive(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 21
    .line 2033
    iget-object v0, p0, Ljrn;->a:Ljro;

    .line 21
    invoke-direct {p0, p1}, Ljsn;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljro;->a(Ljava/lang/Object;)V

    .line 22
    return-void
.end method
