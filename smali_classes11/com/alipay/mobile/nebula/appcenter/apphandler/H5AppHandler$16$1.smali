.class Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16$1;
.super Ljava/lang/Object;
.source "H5AppHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16;

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16;->val$loadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16;->val$loadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1273
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sendToWebFail again"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$16;->val$loadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->sendToWebFail()V

    .line 1278
    :goto_0
    return-void

    .line 1276
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "h5page is null not try"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
