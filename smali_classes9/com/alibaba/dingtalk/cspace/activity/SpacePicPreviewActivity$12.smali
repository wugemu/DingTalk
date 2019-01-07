.class final Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$12;
.super Landroid/content/BroadcastReceiver;
.source "SpacePicPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$12;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    .line 580
    if-nez p2, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.alibaba.alimei_sdk.RELOGIN_ACTION"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 587
    const-string/jumbo v4, "CSpace"

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$12;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->o(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sdkrelogin"

    const-string/jumbo v7, "picpre"

    const-string/jumbo v8, "token invalid or token expired"

    invoke-static {v6, v7, v8, v9}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string/jumbo v4, "accountName"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "refreshTokenFailedAccount":Ljava/lang/String;
    invoke-static {v1, v9}, Lgpo;->a(Ljava/lang/String;Lgqq;)V

    goto :goto_0

    .line 590
    .end local v1    # "refreshTokenFailedAccount":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "action_comment_count_change"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 591
    const-string/jumbo v4, "intent_key_comment_count"

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 592
    .local v2, "commentCount":J
    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$12;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->p(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lgqm;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 593
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$12;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    move-result-object v4

    const/16 v5, 0x50

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$12;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    sget v7, Lfzs$h;->dt_cspace_detail_filecomment_count:I

    .line 594
    invoke-virtual {v6, v7}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 593
    invoke-virtual {v4, v5, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
