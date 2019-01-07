.class final Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$5;
.super Ljava/lang/Object;
.source "SelectedContactsActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$5;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$5;->a:Ljava/util/ArrayList;

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
    const/4 v5, 0x1

    .line 381
    check-cast p1, Ljava/util/List;

    .line 1385
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$5;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v0, v5}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Z)Z

    .line 1386
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$5;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->supportInvalidateOptionsMenu()V

    .line 1388
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1392
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$5;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1393
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$5;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->e(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$5;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 1395
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1396
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1399
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$5;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->f(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/alibaba/android/user/contact/organization/select/SelectModel;

    invoke-direct {v4, v0, v5}, Lcom/alibaba/android/user/contact/organization/select/SelectModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;Z)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1401
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$5;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$5;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->f(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 412
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$5;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Z)Z

    .line 413
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$5;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->supportInvalidateOptionsMenu()V

    .line 414
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 407
    return-void
.end method
