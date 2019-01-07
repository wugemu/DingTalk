.class final Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$17;
.super Landroid/content/BroadcastReceiver;
.source "SpacePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 608
    if-nez p2, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "com.alibaba.dingtalk.space.rename"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 613
    const-string/jumbo v7, "dentry_model"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 614
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v1, :cond_0

    .line 615
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v7, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0

    .line 617
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_2
    const-string/jumbo v7, "com.alibaba.alimei_sdk.RELOGIN_ACTION"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 620
    const-string/jumbo v7, "CSpace"

    invoke-static {}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "sdkrelogin"

    const-string/jumbo v10, "spacepre"

    const-string/jumbo v11, "token invalid or token expired"

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string/jumbo v7, "accountName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 622
    .local v5, "refreshTokenFailedAccount":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v5, v7}, Lgpo;->a(Ljava/lang/String;Lgqq;)V

    goto :goto_0

    .line 623
    .end local v5    # "refreshTokenFailedAccount":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "action_comment_count_change"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 624
    const-string/jumbo v7, "intent_key_comment_count"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 625
    .local v2, "commentCount":J
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v7}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 626
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v7}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 627
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v7}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-result-object v7

    .line 1497
    iget-object v8, v7, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/16 v9, 0x50

    .line 1498
    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v10, Lfzs$h;->dt_cspace_detail_filecomment_count:I

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1497
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 630
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v7}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lgqm;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 631
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v7}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    move-result-object v7

    const/16 v8, 0x50

    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    sget v10, Lfzs$h;->dt_cspace_detail_filecomment_count:I

    .line 632
    invoke-virtual {v9, v10}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 631
    invoke-virtual {v7, v8, v9}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 635
    .end local v2    # "commentCount":J
    :cond_5
    const-string/jumbo v7, "com.alibaba.dingtalk.cspace.online.edit.finish"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 636
    const-string/jumbo v7, "intent_key_space_id"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 637
    .local v6, "spaceId":Ljava/lang/String;
    const-string/jumbo v7, "intent_key_file_id"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, "fileId":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v7}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v7}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v7}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 639
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->finish()V

    goto/16 :goto_0
.end method
