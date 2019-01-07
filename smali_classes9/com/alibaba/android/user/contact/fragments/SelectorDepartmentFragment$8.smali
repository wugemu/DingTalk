.class final Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$8;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfoz;

.field final synthetic b:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Lfoz;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$8;->b:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$8;->a:Lfoz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 434
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1437
    invoke-static {}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "newDepartment suc & post add dept"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1438
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.org.dept.add"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1439
    if-eqz p1, :cond_0

    .line 1440
    const-string/jumbo v1, "dept_object"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1442
    :cond_0
    const-string/jumbo v1, "parent_dept_id"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$8;->a:Lfoz;

    iget-object v2, v2, Lfoz;->b:Lcen;

    iget-object v2, v2, Lcen;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1443
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$8;->b:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 434
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 453
    invoke-static {}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "newDepartment fail %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 449
    return-void
.end method
