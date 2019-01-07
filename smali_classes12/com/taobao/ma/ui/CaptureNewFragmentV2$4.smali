.class final Lcom/taobao/ma/ui/CaptureNewFragmentV2$4;
.super Ljava/lang/Object;
.source "CaptureNewFragmentV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a(Lcom/alipay/mobile/mascanengine/MaScanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mascanengine/MaScanResult;

.field final synthetic b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;Lcom/alipay/mobile/mascanengine/MaScanResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$4;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    iput-object p2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$4;->a:Lcom/alipay/mobile/mascanengine/MaScanResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 365
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$4;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->h(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V

    .line 366
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$4;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-virtual {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$4;->a:Lcom/alipay/mobile/mascanengine/MaScanResult;

    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$4;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .line 367
    invoke-static {v2}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->i(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Z

    move-result v2

    new-instance v3, Lcom/taobao/ma/ui/CaptureNewFragmentV2$4$1;

    invoke-direct {v3, p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2$4$1;-><init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2$4;)V

    const/4 v4, 0x1

    .line 366
    invoke-static {v0, v1, v2, v3, v4}, Ljne;->a(Landroid/app/Activity;Lcom/alipay/mobile/mascanengine/MaScanResult;ZLcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;Z)V

    .line 374
    return-void
.end method
