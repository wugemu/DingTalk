.class final Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$5;
.super Ljava/lang/Object;
.source "SelectorDepartmentActivity.java"

# interfaces
.implements Lffq;


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
    .line 443
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$5;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 2
    .param p1, "nodeItemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 446
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$5;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Lfgj;

    move-result-object v0

    .line 1050
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_0

    .line 1051
    iget-object v1, v0, Lfgj;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    invoke-virtual {v0}, Lfgj;->notifyDataSetChanged()V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$5;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->b(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$5;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->e(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V

    .line 451
    :cond_1
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 2
    .param p1, "nodeItemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 455
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$5;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Lfgj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfgj;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 457
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$5;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)V

    .line 458
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$5;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->e(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V

    .line 460
    :cond_0
    return-void
.end method
