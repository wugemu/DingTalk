.class final Lcom/taobao/ma/ui/CaptureNewFragmentV2$7;
.super Ljava/lang/Object;
.source "CaptureNewFragmentV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/ma/ui/CaptureNewFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$7;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    iput-object p2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 470
    new-instance v0, Lcom/alipay/mobile/mascanengine/impl/MaPictureEngineServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/mascanengine/impl/MaPictureEngineServiceImpl;-><init>()V

    .line 471
    .local v0, "pictureEngineService":Lcom/alipay/mobile/mascanengine/MaPictureEngineService;
    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/mascanengine/MaPictureEngineService;->process(Ljava/lang/String;)Lcom/alipay/mobile/mascanengine/MaScanResult;

    move-result-object v1

    .line 475
    .local v1, "result":Lcom/alipay/mobile/mascanengine/MaScanResult;
    if-nez v1, :cond_1

    .line 476
    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$7;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v2}, Lcms;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$7;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    sget v3, Lelh$h;->pic_fail_qr_code:I

    invoke-virtual {v2, v3}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    invoke-static {v2, v3}, Lcms;->a(Ljava/lang/String;I)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$7;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-virtual {v2, v1}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a(Lcom/alipay/mobile/mascanengine/MaScanResult;)V

    goto :goto_0
.end method
