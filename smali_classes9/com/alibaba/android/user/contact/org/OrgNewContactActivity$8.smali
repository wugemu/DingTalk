.class final Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;
.super Ljava/lang/Object;
.source "OrgNewContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 309
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->d(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->e(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->e(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->e(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->j(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
