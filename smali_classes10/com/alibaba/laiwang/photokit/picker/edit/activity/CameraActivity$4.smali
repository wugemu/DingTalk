.class final Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 226
    new-instance v1, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;

    invoke-direct {v1, p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;-><init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;)V

    .line 284
    .local v1, "pictureCallback":Landroid/hardware/Camera$PictureCallback;
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    move-result-object v2

    .line 1313
    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 284
    if-eqz v2, :cond_0

    .line 285
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->c(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->b(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->t(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    move-result-object v2

    .line 2313
    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 288
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 289
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->b(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;Z)Z

    .line 290
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
