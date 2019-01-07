.class final Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;
.super Ljava/lang/Object;
.source "H5AppHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->goFallback(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$api_permission:Ljava/lang/String;

.field final synthetic val$appConfigUrl:Ljava/lang/String;

.field final synthetic val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

.field final synthetic val$fallBackListen:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;

.field final synthetic val$h5FallbackStreamProvider:Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;)V
    .locals 0

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$h5FallbackStreamProvider:Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$api_permission:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$appConfigUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iput-object p5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$fallBackListen:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1319
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$h5FallbackStreamProvider:Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    iget-object v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$api_permission:Ljava/lang/String;

    .line 1321
    invoke-interface {v5, v6}, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;->getFallbackInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 1319
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 1322
    .local v0, "apiByte":[B
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$h5FallbackStreamProvider:Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    iget-object v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$appConfigUrl:Ljava/lang/String;

    .line 1323
    invoke-interface {v5, v6}, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;->getFallbackInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 1322
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 1324
    .local v2, "configByte":[B
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 1325
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1326
    .local v1, "apiMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1329
    .local v3, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    sget-object v5, Lcom/alipay/mobile/nebula/tiny/H5TinyFallBackData;->apiPermissionByte:Ljava/util/Map;

    iget-object v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v6, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    sget-object v5, Lcom/alipay/mobile/nebula/tiny/H5TinyFallBackData;->appConfigByte:Ljava/util/Map;

    iget-object v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v6, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$fallBackListen:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;

    if-eqz v5, :cond_1

    .line 1334
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$fallBackListen:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;

    const/4 v6, 0x1

    const-string/jumbo v7, "fallBackSuccess"

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;->canGoFallback(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    .end local v0    # "apiByte":[B
    .end local v1    # "apiMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local v2    # "configByte":[B
    .end local v3    # "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_0
    :goto_0
    return-void

    .line 1339
    :catch_0
    move-exception v4

    .line 1340
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1342
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$fallBackListen:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;

    if-eqz v5, :cond_0

    .line 1343
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$17;->val$fallBackListen:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;

    const/4 v6, 0x0

    const-string/jumbo v7, "fallbackNetError"

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$FallBackListen;->canGoFallback(ZLjava/lang/String;)V

    goto :goto_0
.end method
