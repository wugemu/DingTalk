.class final Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5$1;
.super Ljava/lang/Object;
.source "JobFeedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 259
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;

    iget-object v1, v1, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;

    iget-object v2, v2, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lgtw;

    .line 260
    .local v0, "childViewHolder":Lgtw;
    if-eqz v0, :cond_0

    .line 261
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgtw;->a(Z)V

    .line 263
    :cond_0
    return-void
.end method
