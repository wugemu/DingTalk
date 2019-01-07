.class final Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$6;
.super Ljava/lang/Object;
.source "SelectorDepartmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$6;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 492
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$6;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->b(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$6;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->i(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)I

    move-result v4

    if-le v3, v4, :cond_2

    .line 493
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$6;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->j(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$6;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    sget v4, Lezg$l;->choose_limit:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$6;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->i(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    .line 508
    :cond_0
    :goto_1
    return-void

    .line 493
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$6;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->j(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 496
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$6;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->b(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 497
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$6;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->k(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 498
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.choose.org.department"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v0, "deptsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$6;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->b(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 501
    .local v2, "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 503
    .end local v2    # "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_3
    const-string/jumbo v3, "key_org_selected_depts"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 504
    const-string/jumbo v3, "activity_identify"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$6;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->l(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$6;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 506
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$6;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->finish()V

    goto :goto_1
.end method
