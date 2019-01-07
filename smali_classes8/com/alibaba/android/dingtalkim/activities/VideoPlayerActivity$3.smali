.class final Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$3;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 553
    check-cast p1, Ljava/lang/String;

    .line 1556
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->dismissLoadingDialog()V

    .line 1557
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    sget v1, Lctk$i;->dt_im_video_save_success:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1560
    :cond_0
    sget v0, Lctk$i;->dt_im_video_save_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->dismissLoadingDialog()V

    .line 572
    sget v0, Lctk$i;->dt_im_video_save_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 573
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 567
    return-void
.end method
