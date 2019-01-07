.class final Lcom/alibaba/android/user/certify/RPTakePhotoActivity$4;
.super Ljava/lang/Object;
.source "RPTakePhotoActivity.java"

# interfaces
.implements Ljmt$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/certify/RPTakePhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$4;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 7
    .param p1, "success"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 420
    if-eqz p1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$4;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->b(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)Lcom/taobao/ma/camera/CameraManager;

    move-result-object v1

    .line 1359
    iget-object v1, v1, Lcom/taobao/ma/camera/CameraManager;->b:Landroid/hardware/Camera;

    .line 422
    if-eqz v1, :cond_0

    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$4;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->b(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)Lcom/taobao/ma/camera/CameraManager;

    move-result-object v1

    .line 2359
    iget-object v1, v1, Lcom/taobao/ma/camera/CameraManager;->b:Landroid/hardware/Camera;

    .line 424
    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$4;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    invoke-static {v1, v6}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;Z)Z

    .line 432
    :cond_1
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
