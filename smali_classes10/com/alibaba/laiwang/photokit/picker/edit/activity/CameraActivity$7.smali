.class final Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$7;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


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
    .line 336
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$7;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v4, 0x41f00000    # 30.0f

    .line 338
    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$7;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    move-result-object v0

    .line 1313
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 339
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 340
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$7;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$7;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    iget v1, v1, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->c:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$7;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v2, v4}, Lhbv;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$7;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    iget v2, v2, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->d:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$7;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .line 341
    invoke-static {v3, v4}, Lhbv;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$7;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3, v5}, Lhbv;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$7;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v4, v5}, Lhbv;->a(Landroid/content/Context;F)I

    move-result v4

    .line 340
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;IIII)V

    .line 343
    :cond_0
    return-void
.end method
