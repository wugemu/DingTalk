.class final Lcom/taobao/ma/ui/CaptureNewFragmentV2$9;
.super Ljava/lang/Object;
.source "CaptureNewFragmentV2.java"

# interfaces
.implements Lcom/taobao/ma/ui/CaptureNewFragmentV2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a(Lcom/alibaba/android/scan/widget/ScanType;)Lcom/alipay/mobile/bqcscanservice/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$9;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetAvgGray(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 670
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$9;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->k(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Lcom/alibaba/android/scan/widget/ToolScanTopView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$9;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->k(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Lcom/alibaba/android/scan/widget/ToolScanTopView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/scan/widget/ToolScanTopView;->onGetAvgGray(I)V

    .line 673
    :cond_0
    return-void
.end method

.method public final onGetMaProportion(F)V
    .locals 3
    .param p1, "v"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 662
    invoke-static {}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onGetMaProportion :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 663
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$9;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->k(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Lcom/alibaba/android/scan/widget/ToolScanTopView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$9;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->k(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Lcom/alibaba/android/scan/widget/ToolScanTopView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/scan/widget/ToolScanTopView;->onGetMaProportion(F)V

    .line 666
    :cond_0
    return-void
.end method

.method public final onResultMa(Lcom/alipay/mobile/mascanengine/MultiMaScanResult;)V
    .locals 3
    .param p1, "maScanResult"    # Lcom/alipay/mobile/mascanengine/MultiMaScanResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 648
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$9;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->b(Lcom/taobao/ma/ui/CaptureNewFragmentV2;Z)Z

    .line 650
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$9;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->j(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V

    .line 652
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/mascanengine/MultiMaScanResult;->maScanResults:[Lcom/alipay/mobile/mascanengine/MaScanResult;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/mascanengine/MultiMaScanResult;->maScanResults:[Lcom/alipay/mobile/mascanengine/MaScanResult;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$9;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    iget-object v1, p1, Lcom/alipay/mobile/mascanengine/MultiMaScanResult;->maScanResults:[Lcom/alipay/mobile/mascanengine/MaScanResult;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a(Lcom/alipay/mobile/mascanengine/MaScanResult;)V

    .line 658
    :goto_0
    return-void

    .line 656
    :cond_0
    invoke-static {}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onResultMa error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
