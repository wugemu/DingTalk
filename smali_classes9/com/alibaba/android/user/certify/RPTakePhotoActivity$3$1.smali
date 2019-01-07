.class final Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3$1;
.super Ljava/lang/Object;
.source "RPTakePhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3$1;->b:Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;

    iput-object p2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3$1;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3$1;->b:Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3$1;->b:Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;

    iget-object v2, v2, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3$1;->a:[B

    invoke-static {v2, v3}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;[B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3$1;->b:Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a(Lcom/alibaba/android/user/certify/RPTakePhotoActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3$1;->b:Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 387
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3$1;->b:Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
