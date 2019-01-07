.class final Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;
.super Ljava/lang/Object;
.source "AvatarSettingFragment.java"

# interfaces
.implements Lifw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUploadFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 348
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->c(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$2;-><init>(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    return-void
.end method

.method public final onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->c(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$1;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1$1;-><init>(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    return-void
.end method

.method public final updateUploadProgress(Ljava/lang/String;III)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "totalSize"    # I
    .param p3, "uploadSize"    # I
    .param p4, "progress"    # I

    .prologue
    .line 326
    return-void
.end method
