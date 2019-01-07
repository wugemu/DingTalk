.class final Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$1;
.super Ljava/lang/Object;
.source "SpaceCommentActivity.java"

# interfaces
.implements Lgdp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$1;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 113
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$1;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v1}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$1;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)J

    .line 115
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$1;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->c(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$1;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    sget v3, Lfzs$h;->dt_cspace_detail_filecomment_count:I

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$1;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->b(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_comment_count_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_comment_count"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$1;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->b(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$1;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 121
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
