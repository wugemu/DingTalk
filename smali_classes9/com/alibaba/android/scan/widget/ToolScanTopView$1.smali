.class final Lcom/alibaba/android/scan/widget/ToolScanTopView$1;
.super Ljava/lang/Object;
.source "ToolScanTopView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/scan/widget/ToolScanTopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/scan/widget/ToolScanTopView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/scan/widget/ToolScanTopView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/scan/widget/ToolScanTopView;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView$1;->b:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    iput-object p2, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView$1;->a:Landroid/content/Context;

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
    .line 72
    iget-object v1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView$1;->b:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    invoke-static {v1}, Lcom/alibaba/android/scan/widget/ToolScanTopView;->a(Lcom/alibaba/android/scan/widget/ToolScanTopView;)Lcom/alibaba/android/scan/widget/ScanRayView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/scan/widget/ScanRayView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcms;->b(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView$1;->b:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    invoke-static {v2}, Lcom/alibaba/android/scan/widget/ToolScanTopView;->a(Lcom/alibaba/android/scan/widget/ToolScanTopView;)Lcom/alibaba/android/scan/widget/ScanRayView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/scan/widget/ScanRayView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 76
    iget-object v1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView$1;->b:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    invoke-static {v1}, Lcom/alibaba/android/scan/widget/ToolScanTopView;->a(Lcom/alibaba/android/scan/widget/ToolScanTopView;)Lcom/alibaba/android/scan/widget/ScanRayView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/scan/widget/ScanRayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    :cond_0
    return-void
.end method
