.class final Lcom/alibaba/android/user/connection/activity/CirclePostActivity$6;
.super Ljava/lang/Object;
.source "CirclePostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/CirclePostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$6;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 710
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$6;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->c(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    instance-of v1, v1, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    if-eqz v1, :cond_2

    .line 711
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$6;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->c(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    move-result-object v1

    iget-object v3, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 712
    .local v3, "videoUrl":Ljava/lang/String;
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    :try_start_0
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 719
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$6;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->c(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    check-cast v1, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    iget-object v6, v1, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->picUrl:Ljava/lang/String;

    .line 720
    .local v6, "picUrl":Ljava/lang/String;
    invoke-static {v6}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    :try_start_1
    invoke-static {v6}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 728
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$6;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->c(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    check-cast v1, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    iget-wide v4, v1, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->size:J

    .line 729
    .local v4, "size":J
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$6;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;)V

    .line 731
    .end local v3    # "videoUrl":Ljava/lang/String;
    .end local v4    # "size":J
    .end local v6    # "picUrl":Ljava/lang/String;
    :cond_2
    return-void

    .line 715
    .restart local v3    # "videoUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 723
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .restart local v6    # "picUrl":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 724
    .restart local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 725
    const-string/jumbo v1, "showVideoImg MediaIdEncodingException"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
