.class final Lcom/taobao/TaoFullScreenRecordVideoActivity$7;
.super Ljava/lang/Object;
.source "TaoFullScreenRecordVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/TaoFullScreenRecordVideoActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic b:Lcom/taobao/TaoFullScreenRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$7;->b:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    iput-object p2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$7;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$7;->b:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->v(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$7;->b:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->v(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$7;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1082
    :cond_0
    return-void
.end method
