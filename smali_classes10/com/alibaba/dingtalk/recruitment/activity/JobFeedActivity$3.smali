.class final Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$3;
.super Ljava/lang/Object;
.source "JobFeedActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 5
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 127
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v4

    .line 130
    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "JobFeed IMediaPlayer OnError "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lguy;->a(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lgtw;

    .line 132
    .local v0, "childViewHolder":Lgtw;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lgtw;->j()V

    goto :goto_0
.end method
