.class Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$3;
.super Ljava/lang/Object;
.source "H5LoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->sendToWebFail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$3;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$3;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$3;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->access$000(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->stopLoadingAnimation()V

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$3;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->access$000(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNebulaResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_network_poor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->setLoadingInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
