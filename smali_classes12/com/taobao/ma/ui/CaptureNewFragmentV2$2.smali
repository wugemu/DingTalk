.class final Lcom/taobao/ma/ui/CaptureNewFragmentV2$2;
.super Ljava/lang/Object;
.source "CaptureNewFragmentV2.java"

# interfaces
.implements Lcom/alibaba/android/scan/widget/ToolScanTopView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/ma/ui/CaptureNewFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/ma/ui/CaptureNewFragmentV2;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$2;->a:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$2;->a:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v2}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->f(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Lcom/alipay/mobile/bqcscanservice/f;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$2;->a:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v2}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->f(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Lcom/alipay/mobile/bqcscanservice/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/bqcscanservice/f;->c()Z

    move-result v0

    .line 195
    .local v0, "torchState":Z
    iget-object v2, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$2;->a:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v2}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->f(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Lcom/alipay/mobile/bqcscanservice/f;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v2, v1}, Lcom/alipay/mobile/bqcscanservice/f;->b(Z)V

    .line 196
    iget-object v1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$2;->a:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v1}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->f(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Lcom/alipay/mobile/bqcscanservice/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/bqcscanservice/f;->c()Z

    move-result v1

    .line 198
    .end local v0    # "torchState":Z
    :cond_1
    return v1
.end method
