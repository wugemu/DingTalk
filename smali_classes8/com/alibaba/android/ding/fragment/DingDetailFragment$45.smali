.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Lbaf$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 3170
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 3190
    .line 5227
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->isAdded()Z

    move-result v0

    .line 3190
    if-nez v0, :cond_1

    .line 3197
    :cond_0
    :goto_0
    return-void

    .line 3194
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/ding/activity/DingDetailActivity;

    if-eqz v0, :cond_0

    .line 3195
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/activity/DingDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingDetailActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3201
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Z(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3202
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Z(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3204
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 3464
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->j(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)V

    .line 3465
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ak(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3466
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p3, "subTaskSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3232
    .local p2, "subTasks":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 3233
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lazv$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3234
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->E(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lazv$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    invoke-interface {v0, v1}, Lazv$a;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 5449
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->T(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3237
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0, p2, p3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/util/List;Ljava/lang/String;)V

    .line 3238
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->s(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;)V

    .line 3239
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ab(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3240
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ac(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3241
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 2
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3321
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45$1;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 3333
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 2
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3356
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 3357
    .local v0, "dingAttachmentModule":Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    .line 8254
    const-string/jumbo v1, "ding_comment_send_spacefile_click"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    .line 3359
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "meetingSummary"    # Ljava/lang/String;

    .prologue
    .line 3250
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/lang/String;)V

    .line 3251
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p3, "ignorePrevent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3338
    .local p2, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/lang/CharSequence;Ljava/util/List;Z)V

    .line 3339
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "origin"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3348
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;Z)V

    .line 3350
    .local v0, "dingAttachmentModule":Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    .line 8250
    const-string/jumbo v1, "ding_comment_send_pic_click"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    .line 3352
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3245
    .local p1, "subTasks":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/util/List;)V

    .line 3246
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "hasFinished"    # Z

    .prologue
    .line 3280
    .line 6449
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->T(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3282
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->w()V

    .line 3283
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ai(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3284
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ag(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 6454
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c()V

    .line 3286
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aj(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3288
    if-eqz p1, :cond_0

    .line 3289
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ak(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3291
    :cond_0
    return-void
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3488
    .line 11227
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->isAdded()Z

    move-result v0

    .line 3488
    if-nez v0, :cond_0

    .line 3500
    :goto_0
    return-void

    .line 3493
    :cond_0
    if-eqz p1, :cond_1

    .line 3494
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    sget v1, Laxp$i;->dt_ding_recall_success_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 3495
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 12222
    :cond_1
    invoke-static {p2, p3}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 3222
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3223
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3179
    .line 4227
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->isAdded()Z

    move-result v0

    .line 3179
    if-nez v0, :cond_1

    .line 3186
    :cond_0
    :goto_0
    return-void

    .line 3183
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/ding/activity/DingDetailActivity;

    if-eqz v0, :cond_0

    .line 3184
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/activity/DingDetailActivity;

    sget v1, Laxp$i;->dt_processing_please_wait:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/activity/DingDetailActivity;->showLoadingDialog(I)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "conversationName"    # Ljava/lang/String;

    .prologue
    .line 3415
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/lang/String;)V

    .line 3416
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ao(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3417
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3343
    .local p1, "userIdentityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 8042
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 8043
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8044
    const-string/jumbo v2, "conference_from_home"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8045
    const-string/jumbo v2, "conversation_id"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8047
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;)V

    .line 3344
    :cond_0
    return-void
.end method

.method public final b(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 3514
    .line 12227
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->isAdded()Z

    move-result v0

    .line 3514
    if-nez v0, :cond_0

    .line 3524
    :goto_0
    return-void

    .line 3518
    :cond_0
    if-eqz p1, :cond_1

    .line 3519
    sget v0, Laxp$i;->dt_ding_task_deadline_update_success:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 13222
    :cond_1
    invoke-static {p2, p3}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 3470
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/lang/String;)V

    .line 3471
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3363
    .local p1, "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3395
    :cond_0
    :goto_0
    return-void

    .line 3366
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v4}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    .line 3367
    .local v2, "editText":Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getSelectionStart()I

    move-result v1

    .line 3368
    .local v1, "cursorIndex":I
    if-lez v1, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3370
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 3372
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 3373
    .local v0, "atText":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3374
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->q(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/util/Map;

    move-result-object v5

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3375
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->q(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/util/Map;

    move-result-object v5

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3377
    :cond_3
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "@"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "\u0007"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 3379
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_4
    new-instance v4, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45$2;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;Lcom/alibaba/doraemon/performance/DDStringBuilder;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v4, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .param p1, "recorderName"    # Ljava/lang/String;

    .prologue
    .line 3504
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aq(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/DingDetailPersonsLayout;->b(Ljava/lang/CharSequence;)V

    .line 3505
    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3405
    .local p1, "userIdentityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/util/List;)V

    .line 3406
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 3227
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3208
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Z(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3209
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->Z(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3211
    :cond_0
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3459
    .local p1, "userIdentityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/util/List;)V

    .line 3460
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 3255
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ad(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3256
    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3475
    .local p1, "attaches":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/util/Collection;)V

    .line 3476
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Ljava/util/List;)V

    .line 3477
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 3260
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ae(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3261
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 3265
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->af(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3266
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ag(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3271
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 3275
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ah(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3276
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 3295
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->af(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3296
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ai(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 7454
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c()V

    .line 3298
    return-void
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 3302
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->al(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3303
    return-void
.end method

.method public final m()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3307
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->af(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3308
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ah(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3309
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ag(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3310
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ai(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3311
    return-void
.end method

.method public final n()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3315
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->af(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3316
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->am(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3317
    return-void
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 3410
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->an(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3411
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 3421
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ap(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 8454
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c()V

    .line 9449
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->T(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3424
    return-void
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ag(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3429
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 3433
    .line 10449
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->T(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3434
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ah(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3435
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ak(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 10454
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c()V

    .line 3437
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ai(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3438
    return-void
.end method

.method public final s()V
    .locals 1

    .prologue
    .line 3442
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3443
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 3445
    :cond_0
    return-void
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 3170
    check-cast p1, Lbaf$a;

    .line 14174
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lbaf$a;)Lbaf$a;

    .line 3170
    return-void
.end method

.method public final t()V
    .locals 1

    .prologue
    .line 3449
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->T(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3450
    return-void
.end method

.method public final u()V
    .locals 1

    .prologue
    .line 3454
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c()V

    .line 3455
    return-void
.end method

.method public final v()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 3215
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aa(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3216
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 3217
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Z)V

    .line 3218
    return-void
.end method

.method public final w()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3481
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3482
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;J)V

    .line 3484
    :cond_0
    return-void
.end method

.method public final x()V
    .locals 1

    .prologue
    .line 3509
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ar(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3510
    return-void
.end method

.method public final y()V
    .locals 1

    .prologue
    .line 3528
    .line 13227
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->isAdded()Z

    move-result v0

    .line 3528
    if-nez v0, :cond_0

    .line 3532
    :goto_0
    return-void

    .line 3531
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$45;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->aj(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    goto :goto_0
.end method
