.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$4;
.super Ljava/lang/Object;
.source "UserContactActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
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
        "Lcgc;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 1567
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$4;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1567
    check-cast p1, Ljava/util/List;

    .line 2570
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$4;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->dismissLoadingDialog()V

    .line 2572
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_contact_get_user_profile_under_org_context"

    .line 3083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 2574
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2575
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgc;

    .line 2576
    if-eqz v1, :cond_0

    .line 2577
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$4;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->h(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObjectWithContactNameRule(Lcgc;Z)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->addChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    goto :goto_0

    .line 2579
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$4;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->h(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    move-result-object v3

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcgc;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->addChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    goto :goto_0

    .line 2584
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$4;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/util/ArrayList;)V

    .line 1567
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1594
    const-string/jumbo v0, "UserContactActivity"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "getUidsByDeptIds error code = "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "reason = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1595
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$4;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->dismissLoadingDialog()V

    .line 1596
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1590
    return-void
.end method
