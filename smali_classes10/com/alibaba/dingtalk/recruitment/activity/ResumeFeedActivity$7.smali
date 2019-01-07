.class final Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;
.super Ljava/lang/Object;
.source "ResumeFeedActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;
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
        "Lguq;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

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
    .line 341
    check-cast p1, Ljava/util/List;

    .line 1344
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1347
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->dismissLoadingDialog()V

    .line 1348
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->f(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V

    .line 1349
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1351
    if-eqz p1, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->g(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Lgub;

    move-result-object v0

    invoke-virtual {v0}, Lgub;->notifyDataSetChanged()V

    .line 1356
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$1;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 1363
    const-string/jumbo v0, "pref_resume_feed_should_show_guide"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1364
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;-><init>(Landroid/content/Context;)V

    .line 1365
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->show()V

    .line 1366
    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1387
    const-string/jumbo v0, "pref_resume_feed_should_show_guide"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 341
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
    .line 397
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "listRecommendStudents failed"

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

    .line 398
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->dismissLoadingDialog()V

    .line 402
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->i(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 393
    return-void
.end method
