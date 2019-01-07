.class final Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;
.super Ljava/lang/Object;
.source "JobFeedActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 242
    check-cast p1, Ljava/util/List;

    .line 1245
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->dismissLoadingDialog()V

    .line 1250
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->f(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)V

    .line 1251
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1252
    if-eqz p1, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->g(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Lgtx;

    move-result-object v0

    invoke-virtual {v0}, Lgtx;->notifyDataSetChanged()V

    .line 1256
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5$1;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 242
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "listRecommendJobs failed "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lguy;->a(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->dismissLoadingDialog()V

    .line 279
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->h(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 269
    return-void
.end method
