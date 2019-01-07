.class final Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;
.super Ljava/lang/Object;
.source "RPTakePhotoActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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
    .line 364
    iput-object p1, p0, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;->a:Lcom/alibaba/android/user/certify/RPTakePhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-static {}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 374
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3$1;-><init>(Lcom/alibaba/android/user/certify/RPTakePhotoActivity$3;[B)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
