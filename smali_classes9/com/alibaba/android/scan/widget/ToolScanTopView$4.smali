.class final Lcom/alibaba/android/scan/widget/ToolScanTopView$4;
.super Ljava/lang/Object;
.source "ToolScanTopView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/scan/widget/ToolScanTopView;->onGetAvgGray(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/scan/widget/ToolScanTopView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/scan/widget/ToolScanTopView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/scan/widget/ToolScanTopView;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView$4;->a:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 196
    iget-object v1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView$4;->a:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    .line 1226
    iget-object v0, v1, Lcom/alibaba/android/scan/widget/ToolScanTopView;->d:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/alibaba/android/scan/widget/ToolScanTopView;->d:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .line 1379
    iget-object v2, v0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    invoke-interface {v0}, Lcom/alipay/mobile/bqcscanservice/f;->c()Z

    move-result v0

    .line 1226
    :goto_0
    if-nez v0, :cond_1

    .line 1229
    :cond_0
    iget-object v0, v1, Lcom/alibaba/android/scan/widget/ToolScanTopView;->c:Lcom/alibaba/android/scan/widget/TorchView;

    if-eqz v0, :cond_1

    .line 1230
    iget-object v0, v1, Lcom/alibaba/android/scan/widget/ToolScanTopView;->c:Lcom/alibaba/android/scan/widget/TorchView;

    .line 2047
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/scan/widget/TorchView;->setVisibility(I)V

    .line 197
    :cond_1
    return-void

    .line 1379
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
