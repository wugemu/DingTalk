.class final Lcom/alibaba/android/scan/widget/ToolScanTopView$2;
.super Ljava/lang/Object;
.source "ToolScanTopView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/scan/widget/ToolScanTopView;->onGetMaProportion(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/scan/widget/ToolScanTopView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/scan/widget/ToolScanTopView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/scan/widget/ToolScanTopView;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView$2;->b:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    iput p2, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView$2;->a:I

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
    .line 167
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView$2;->b:Lcom/alibaba/android/scan/widget/ToolScanTopView;

    iget v1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView$2;->a:I

    invoke-static {v0, v1}, Lcom/alibaba/android/scan/widget/ToolScanTopView;->a(Lcom/alibaba/android/scan/widget/ToolScanTopView;I)V

    .line 168
    return-void
.end method
