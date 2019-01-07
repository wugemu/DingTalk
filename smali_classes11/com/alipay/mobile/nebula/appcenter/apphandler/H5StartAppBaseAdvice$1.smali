.class Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$1;
.super Ljava/lang/Object;
.source "H5StartAppBaseAdvice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;

.field final synthetic val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 127
    :try_start_0
    const-string/jumbo v1, "Advice.syncApp"

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "appId"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionBegin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 129
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->syncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    const-string/jumbo v1, "Advice.syncApp"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "appId"

    aput-object v3, v2, v6

    invoke-static {v1, v8, v2}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "H5StartAppAdvice"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    const-string/jumbo v1, "Advice.syncApp"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "appId"

    aput-object v3, v2, v6

    invoke-static {v1, v8, v2}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    const-string/jumbo v2, "Advice.syncApp"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "appId"

    aput-object v4, v3, v6

    invoke-static {v2, v8, v3}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    throw v1
.end method
