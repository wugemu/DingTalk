.class public final Ljsl;
.super Ljrn;
.source "WXFailCallback.java"

# interfaces
.implements Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method public constructor <init>(Ljro;)V
    .locals 0
    .param p1, "promise"    # Ljro;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljrn;-><init>(Ljro;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 17
    .line 1033
    iget-object v0, p0, Ljrn;->a:Ljro;

    .line 2026
    invoke-static {p1}, Ljsl;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 2027
    const-string/jumbo v2, "status"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2028
    const-string/jumbo v2, "status"

    const-string/jumbo v3, "FAILED"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Ljro;->b(Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public final invokeAndKeepAlive(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 23
    return-void
.end method
