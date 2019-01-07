.class final Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$3;
.super Ljava/lang/Object;
.source "H5AppHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->playExitAnimation(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$manager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$3;->val$manager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 638
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$3;->val$manager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$3;->val$manager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "playExitAnimation"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$3;->val$manager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->playExitAnimation()V

    .line 642
    :cond_0
    return-void
.end method
