.class final Lcom/alibaba/android/user/external/list/ExternalListFragment$9;
.super Ljava/lang/Object;
.source "ExternalListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ExternalListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ExternalListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$9;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 368
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$9;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->c(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$9;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->d(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$9;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .line 1843
    iget-boolean v0, v1, Lcom/alibaba/android/user/external/list/ExternalListFragment;->k:Z

    if-nez v0, :cond_2

    .line 1846
    iget-object v0, v1, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/alibaba/android/user/external/list/ExternalListFragment;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    if-eqz v0, :cond_2

    .line 1847
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v2}, Lfnq;->f()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1848
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1849
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1850
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 1851
    iget-object v3, v1, Lcom/alibaba/android/user/external/list/ExternalListFragment;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1852
    iget-object v3, v1, Lcom/alibaba/android/user/external/list/ExternalListFragment;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->removeChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    goto :goto_0

    .line 1856
    :cond_1
    iget-object v0, v1, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v0}, Lfnq;->notifyDataSetChanged()V

    .line 1857
    invoke-virtual {v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->j()V

    .line 2814
    :cond_2
    :goto_1
    return-void

    .line 372
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$9;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .line 2808
    iget-boolean v0, v1, Lcom/alibaba/android/user/external/list/ExternalListFragment;->k:Z

    if-nez v0, :cond_2

    .line 2811
    iget-object v0, v1, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/alibaba/android/user/external/list/ExternalListFragment;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    if-eqz v0, :cond_2

    .line 2812
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v2}, Lfnq;->f()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2813
    iget-boolean v2, v1, Lcom/alibaba/android/user/external/list/ExternalListFragment;->l:Z

    if-nez v2, :cond_4

    .line 2814
    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 2816
    :cond_4
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    new-instance v0, Lcom/alibaba/android/user/external/list/ExternalListFragment$3;

    invoke-direct {v0, v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment$3;-><init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V

    const-class v4, Ljava/lang/Runnable;

    .line 2821
    invoke-virtual {v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 2816
    invoke-static {v0, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(ZILjava/lang/Runnable;)V

    goto :goto_1
.end method
