.class final Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Lifw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5$1;->c:Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;

    iput p2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5$1;->a:I

    iput p3, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUploadFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 266
    iget v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5$1;->a:I

    iget v1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5$1;->b:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5$1;->c:Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;->b:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5$1;->c:Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;->a:Lfrs;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;Lfrs;)V

    .line 269
    :cond_0
    return-void
.end method

.method public final onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 257
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5$1;->c:Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;->a:Lfrs;

    iget-object v0, v0, Lfrs;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5$1;->a:I

    iget v1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5$1;->b:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5$1;->c:Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;->b:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5$1;->c:Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$5;->a:Lfrs;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;Lfrs;)V

    .line 261
    :cond_0
    return-void
.end method

.method public final updateUploadProgress(Ljava/lang/String;III)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "totalSize"    # I
    .param p3, "uploadSize"    # I
    .param p4, "progress"    # I

    .prologue
    .line 252
    return-void
.end method
