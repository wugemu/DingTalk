.class Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$2;
.super Ljava/lang/Object;
.source "H5LoadingActivity.java"

# interfaces
.implements Lioi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$2;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$2;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    .line 91
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$2;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->access$000(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$2;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->access$000(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    :cond_0
    return-void
.end method
