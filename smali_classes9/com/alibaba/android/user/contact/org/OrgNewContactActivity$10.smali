.class final Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;
.super Ljava/lang/Object;
.source "OrgNewContactActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/widget/SelectorHorizontalListView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/contact/org/model/SelectModel;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 367
    if-nez p1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->n(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)I

    move-result v0

    if-lez v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->o(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)I

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->p(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    .line 375
    iget-object v0, p1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    sget-object v1, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->DEPT:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    if-ne v0, v1, :cond_4

    .line 376
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->g(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lfhx;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-interface {v0, v1, v3}, Lfhx;->a(Ljava/lang/Object;Z)Z

    .line 380
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    if-eqz v0, :cond_5

    .line 381
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->f()V

    .line 382
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->a(Z)V

    goto :goto_0

    .line 377
    :cond_4
    iget-object v0, p1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    sget-object v1, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->USER:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    if-ne v0, v1, :cond_3

    .line 378
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->f(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lfhx;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1, v3}, Lfhx;->a(Ljava/lang/Object;Z)Z

    goto :goto_1

    .line 383
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    if-eqz v0, :cond_6

    .line 384
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->c()V

    .line 385
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->a(Z)V

    goto :goto_0

    .line 386
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    .line 1481
    iget-object v0, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->c:Lfmd;

    invoke-virtual {v0}, Lfmd;->notifyDataSetChanged()V

    .line 388
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a(Z)V

    goto/16 :goto_0
.end method
