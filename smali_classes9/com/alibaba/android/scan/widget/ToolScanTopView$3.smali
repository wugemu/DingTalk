.class final Lcom/alibaba/android/scan/widget/ToolScanTopView$3;
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
    .line 183
    iput-object p1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView$3;->a:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView$3;->a:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    .line 1220
    iget-object v1, v0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->c:Lcom/alibaba/android/scan/widget/TorchView;

    if-eqz v1, :cond_0

    .line 1221
    iget-object v1, v0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->c:Lcom/alibaba/android/scan/widget/TorchView;

    .line 2043
    iget-boolean v0, v1, Lcom/alibaba/android/scan/widget/TorchView;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/scan/widget/TorchView;->setVisibility(I)V

    .line 187
    :cond_0
    return-void

    .line 2043
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
