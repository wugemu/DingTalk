.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;
.super Lcq;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p2, "fm"    # Lcn;

    .prologue
    .line 3445
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .line 3446
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 3447
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 11
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3451
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->X(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/util/SparseArray;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3452
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    new-instance v4, Landroid/util/SparseArray;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v3, v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 3454
    :cond_0
    if-nez p1, :cond_3

    .line 3455
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->f(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3456
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3457
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "need_default_header"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3458
    const-string/jumbo v3, "default_header_height"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3459
    const-string/jumbo v3, "is_home_session"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3460
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/os/Bundle;)Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;)Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .line 3461
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Z(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lejq;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3462
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Z(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lejq;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->f(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Lejq;->a(Landroid/support/v4/app/Fragment;)V

    .line 3464
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->f(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$1;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3499
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->X(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->f(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3500
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->f(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    move-result-object v3

    .line 3579
    :goto_0
    return-object v3

    .line 3501
    :cond_3
    if-ne p1, v6, :cond_6

    .line 3502
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->s(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    move-result-object v3

    if-nez v3, :cond_5

    .line 3503
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 3504
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3505
    .restart local v0    # "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_4

    .line 3506
    const-string/jumbo v3, "key_bundle_calendar"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3508
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/os/Bundle;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/ding/base/objects/DingTabFragment;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    .line 3509
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->s(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->O(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->a(Landroid/view/View;)V

    .line 3511
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->X(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->s(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3512
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->s(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    move-result-object v3

    goto :goto_0

    .line 3513
    :cond_6
    if-ne p1, v9, :cond_8

    .line 3514
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ac(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;

    move-result-object v3

    if-nez v3, :cond_7

    .line 3515
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3516
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "intent_key_is_from_home"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3517
    const-string/jumbo v3, "default_header_height"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3518
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/os/Bundle;)Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;)Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;

    .line 3519
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ac(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b$2;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;->a(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 3555
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_7
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->X(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ac(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3556
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ac(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;

    move-result-object v3

    goto/16 :goto_0

    .line 3557
    :cond_8
    if-ne p1, v8, :cond_a

    .line 3558
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_9

    .line 3560
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {}, Lcom/alibaba/android/oa/fragment/OAFragment;->c()Lcom/alibaba/android/oa/fragment/OAFragment;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 3561
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3562
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "need_default_header"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3563
    const-string/jumbo v3, "default_header_height"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3564
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3569
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_9
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->X(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    invoke-virtual {v4, v8, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3570
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ad(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 3571
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    goto/16 :goto_0

    .line 3565
    :catch_0
    move-exception v1

    .line 3566
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3572
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    if-ne p1, v10, :cond_c

    .line 3573
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->t(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_b

    .line 3574
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d()Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 3576
    :cond_b
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->X(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->t(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    invoke-virtual {v4, v10, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3577
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->t(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    goto/16 :goto_0

    .line 3579
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 3585
    const/4 v0, 0x5

    return v0
.end method
