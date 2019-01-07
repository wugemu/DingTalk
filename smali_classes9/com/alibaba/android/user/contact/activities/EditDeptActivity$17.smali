.class final Lcom/alibaba/android/user/contact/activities/EditDeptActivity$17;
.super Ljava/lang/Object;
.source "EditDeptActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$17;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 520
    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    const-string/jumbo v2, "count_limit"

    const/16 v3, 0x3e8

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    const-string/jumbo v2, "dept_object"

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$17;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->r(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 523
    const-string/jumbo v2, "allow_empty"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 524
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$17;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->b(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$17;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->b(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 525
    const-string/jumbo v2, "seleced_members"

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$17;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->b(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 536
    :cond_0
    :goto_0
    return-object p1

    .line 526
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$17;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v2

    iget-object v2, v2, Lfrt;->e:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 527
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v1, "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$17;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v2

    iget-object v2, v2, Lfrt;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 529
    .local v0, "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    if-eqz v0, :cond_2

    .line 532
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;-><init>()V

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->toIDLFromObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)Lcew;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcew;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 534
    .end local v0    # "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    :cond_3
    const-string/jumbo v2, "seleced_members"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0
.end method
