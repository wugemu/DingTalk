.class final Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 150
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 156
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->c:F

    .line 157
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->d:F

    .line 159
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    move-result-object v3

    .line 1313
    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 159
    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->b(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->c(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    const-string/jumbo v1, ""

    .line 163
    .local v1, "mode":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    move-result-object v3

    .line 2313
    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 163
    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 167
    :goto_1
    const-string/jumbo v3, "auto"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "macro"

    .line 168
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "continuous-picture"

    .line 169
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "continuous-video"

    .line 170
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    move-result-object v3

    .line 3313
    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 173
    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->d(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v2

    .line 175
    .local v2, "t":Ljava/lang/Throwable;
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 176
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 164
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
