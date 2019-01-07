.class final Lcom/taobao/TaoFullScreenRecordVideoActivity$11;
.super Ljava/lang/Object;
.source "TaoFullScreenRecordVideoActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/TaoFullScreenRecordVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/TaoFullScreenRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$11;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 419
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 414
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$11;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->a(Lcom/taobao/TaoFullScreenRecordVideoActivity;Z)Z

    .line 415
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$11;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->c(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V

    .line 416
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 423
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$11;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->a(Lcom/taobao/TaoFullScreenRecordVideoActivity;Z)Z

    .line 424
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$11;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$11;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/taobao/TaoFullScreenRecordVideoActivity$11$1;

    invoke-direct {v1, p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity$11$1;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity$11;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 434
    :cond_0
    return-void
.end method
