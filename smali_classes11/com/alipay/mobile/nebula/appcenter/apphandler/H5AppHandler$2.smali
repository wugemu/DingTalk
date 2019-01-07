.class final Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;
.super Ljava/lang/Object;
.source "H5AppHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitPageAndOpenUrl(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 619
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->exit()V

    .line 621
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$url:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->openUrl(Ljava/lang/String;)V

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$500()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$502(I)I

    .line 624
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "exitPageAndOpenUrl not ready ,send again "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$500()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$500()I

    move-result v0

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$600()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 628
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$2;->val$h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$700(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    goto :goto_0
.end method
