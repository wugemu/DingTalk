.class final Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;
.super Ljava/lang/Object;
.source "SelectorDepartmentFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 278
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .line 1281
    if-eqz p1, :cond_2

    .line 1282
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->offset:I

    iget v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->size:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->e(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;I)I

    .line 1283
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0, v3}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->b(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Z)Z

    .line 1284
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0, v3}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Z)Z

    .line 1286
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1288
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->d(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Lfgu;

    move-result-object v0

    invoke-virtual {v0}, Lfgu;->notifyDataSetChanged()V

    .line 1289
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0, v4}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->b(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Z)Z

    .line 1291
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0, v4}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Z)Z

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->j(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1296
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0, v3}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->d(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Z)Z

    .line 1297
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1298
    if-nez v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 1299
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.add.new.editor.fragment"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1300
    const-string/jumbo v2, "node"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1301
    const-string/jumbo v2, "display_department_oid"

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1302
    const-string/jumbo v2, "display_enterprise_oid"

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1303
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1305
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4$1;-><init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1314
    :cond_2
    :goto_0
    return-void

    .line 1318
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->k(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1319
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->l(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)V

    .line 1320
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->m(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)V

    .line 336
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 328
    return-void
.end method
