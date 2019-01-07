.class public Lcom/alipay/mobile/nebulauc/provider/UCHttpCacheProvider;
.super Ljava/lang/Object;
.source "UCHttpCacheProvider.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5HttpCacheProvider;


# static fields
.field public static final TAG:Ljava/lang/String; = "UCHttpCacheProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanHttpCache()J
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 19
    sget-boolean v1, Liog;->a:Z

    if-eqz v1, :cond_0

    .line 20
    const/4 v1, 0x1

    invoke-static {v1, v4}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 21
    .local v0, "size":Ljava/lang/Long;
    const-string/jumbo v1, "UCHttpCacheProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cleanHttpCache size is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 v1, 0x3

    invoke-static {v1, v4}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string/jumbo v1, "UCHttpCacheProvider"

    const-string/jumbo v2, "cleanHttpCache CORE_EVENT_CLEAR_HTTP_CACHE"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 26
    .end local v0    # "size":Ljava/lang/Long;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
